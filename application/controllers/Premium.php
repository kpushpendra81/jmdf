<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Premium extends CI_Controller {

	public function deposit() {
		$data['body'] = 'home/dashboard';
		$this->load->view('layout',$data);
	}

	public function history() {
		log_message('debug', 'sql query fail in... ', false);
		$this->load->view('login/forget');
	}


}