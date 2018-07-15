<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends CI_Controller {

	public function new() {
		log_message('debug', 'sql query fail in... ', false);
		$data['body'] = 'home/dashboard';
		$this->load->view('layout',$data);
	}

	public function customers() {
		log_message('debug', 'sql query fail in... ', false);
		$this->load->view('login/forget');
	}

}
