<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employee extends CI_Controller {

	public function newemploye() {
		$this->load->model("branch");
		$branch = $this->branch->getBranch();

		$data['category'] = ['GEN','OBC','SC','ST','OTHER'];
		$data['gender'] 	= ['MALE','FEMALE','OTHER'];
		$data['isAdmin'] 	= array("NO" => 0, "YES" => 1);
		$data['branch']		= $branch;
		$data['title'] = 'New Employee';
		$data['body'] = 'employee/newEmploye';
		$this->load->view('layout',$data);
	}

	public function employes() {
		
		$data['title'] = 'All Employee';
		$data['body'] = 'employee/newEmploye';
		$this->load->view('layout',$data);
	}

}
