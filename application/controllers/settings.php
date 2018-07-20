<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends CI_Controller {

	public function financial() {
		$data['title'] = 'Financial Year';
		$data['body'] = 'settings/financial';
		$this->load->view('layout',$data);
	}

	public function setFinancial() {
		$data['title'] = 'All Branch';
		$data['body'] = 'settings/setFinancial';
		$this->load->view('layout',$data);
	}

	public function branches() {

		$this->load->model('branch');
		$branchs = $this->branch->getBranch();

		$data['title'] = 'All Branch';
		$data['body'] = 'settings/branches';
		$data['branchs'] = $branchs;
		$this->load->view('layout', $data);
	}

	public function newbranch() {

		if ($this->input->server('REQUEST_METHOD') == 'GET') {

			$this->load->model('financialYear');
			$fad = $this->financialYear->getFsd();
			$data['title'] = 'New Branch';
			$data['fsd'] = $fad;
			$data['body'] = 'settings/newbranch';
			$this->load->view('layout', $data);
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST') {

			$this->load->library('form_validation');
			$this->form_validation->set_error_delimiters('<div class="text-danger">', '</div>');
			$this->form_validation->set_rules('title', 'Title', 'required');
			$this->form_validation->set_rules('address', 'Full Address', 'required');
			$this->form_validation->set_rules('city', 'City', 'required');
			$this->form_validation->set_rules('state', 'State', 'required');
			$this->form_validation->set_rules('pin', 'Pincode', 'required|min_length[6]|max_length[6]');
			$this->form_validation->set_rules('mobile', 'Mobile', 'required|min_length[10]|max_length[10]');
			$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
			$this->form_validation->set_rules('fsdID', 'Financial Start Date', 'required');

			if ($this->form_validation->run() == FALSE):

				$data['title'] = 'New Branch';
				$data['body'] = 'settings/newbranch';
				$this->load->view('layout', $data);

		    else:

		    	$this->load->model("branch");
		    	if($this->branch->setBranch($this->input->post())):
		    		redirect(base_url().'branches.html');
		    	else:
		    		redirect(base_url().'branches/false');
		    	endif;

		    endif;
		}
		else {
			$this->load->view("error/error_404");
		}
		
	}

	public function plans() {
		log_message('debug', 'sql query fail in... ', false);
		$this->load->view('login/forget');
	}

}