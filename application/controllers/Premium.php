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

	public function printcertificate() {
		$policyID = $this->uri->segment(2);
		
		$this->load->model("investmentDetail");
		$investmentDetail = $this->investmentDetail->getPlanID($policyID);

		$data = array(
			"result" => $investmentDetail,
			"policyID" => $policyID
		);

		$this->load->view('premium/printcertificate', $data);
	}



}