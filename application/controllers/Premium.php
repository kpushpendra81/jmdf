<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Premium extends CI_Controller {

	public function detail() {
		$data['body'] = 'premium/detail';
		$data['title'] = 'Premium Detail';
		$this->load->view('layout',$data);
	}

	public function getPlanDetail() {
		log_message('debug', 'sql query fail in... ', false);
		$this->load->view('login/forget');
	}

	public function premiumlist() {
		
		$customerID = explode('C', $this->input->post('customerID'));

		$customerID = sizeof($customerID) == 1 ? $customerID[0] : $customerID[1];

		try {

			$this->load->model("customers");
			$this->load->model("investmentDetail");

			$customer = $this->customers->getCustomer($customerID);
			$investmentDetail = $this->investmentDetail->getPlansCustomerID($customerID);

			$success = $customer ? true : false;

			$data = array(
				"customer" => $customer,
				"investmentDetail" => $investmentDetail,
				"success" => $success
			);

		} catch (MySQLException $e) {
		    // echo 'Caught exception: ',  $e->getMessage(), "\n";
		    $data = array(
				"customer" => [],
				"investmentDetail" => [],
				"success" => false
			);
		}

		echo json_encode($data);
	}

	public function premiumlistall() {

		$this->load->model("investmentDetail");
		$investmentDetail = $this->investmentDetail->getPlanAll();

		$data = array(
			'body' => 'premium/policyListAll',
			'title' => 'Policy List',
			"planDetails" => $investmentDetail
		);

		$this->load->view('layout',$data);
	}

	public function printcertificate() {
		$policyID = $this->uri->segment(2);
		
		$this->load->model("investmentDetail");
		$investmentDetail = $this->investmentDetail->getPlanDetailByID($policyID);

		$data = array(
			"result" => $investmentDetail,
			"policyID" => $policyID
		);

		$this->load->view('premium/printcertificate', $data);
	}

	public function policydetail() {
		$policyID = $this->uri->segment(2);

		$this->load->model("investmentDetail");
		$planDetail = $this->investmentDetail->getPlanDetailByID($policyID);
		
		// echo '<pre>';
		// print_r($planDetail);
		// echo '</pre>';

		$data = array(
			'planDetail' => $planDetail, 
			"policyID" => $policyID,
			'body' => 'premium/policyDetail',
			'title' => 'Policy Detail'
		);
		$this->load->view('layout',$data);
	}

	public function printslip() {
		$policyID = $this->uri->segment(2);

		$this->load->model("investmentDetail");
		$planDetail = $this->investmentDetail->getPlanDetailByID($policyID);

		$data = array(
			'planDetail' => $planDetail, 
			"policyID" => $policyID,
			'title' => 'Policy Detail'
		);
		$this->load->view('premium/printSlip',$data);
	}

	public function collectpremium() {
		$policyID = $this->uri->segment(2);

		$this->load->model("investmentDetail");
		$planDetail = $this->investmentDetail->getPlanDetailByID($policyID);
		
		$data = array(
			'planDetail' => $planDetail, 
			"policyID" => $policyID,
			'body' => 'premium/collectpremium',
			'title' => 'Policy Detail'
		);
		$this->load->view('layout',$data);
	}



	public function setpremium() {
		$policyID = $this->input->post('');
		$customerID = $this->input->post('');
		
	}

}