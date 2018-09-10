<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Premium extends CI_Controller {

	public function detail() {
		$data['body'] = 'premium/detail';
		$data['title'] = 'Premium Detail';
		$this->load->view('layout',$data);
	}

	public function list() {
		log_message('debug', 'sql query fail in... ', false);
		$this->load->view('login/forget');
	}



}