<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logintable extends CI_Model {
    
    public function __construct() {
    	parent::__construct();
	}

	/**
	 * @param  [String]   username       [give by username from login form.]
	 * @return [array]                 	 return login table Data getting from database according given username.
	 */
	function getLoginData($username) {
		
		// $this->db->select('password');
		$this->db->where('username', $username);
		$result = $this->db->get('login');
		
		/**
		 * 	return login table Data getting from database according that username.
		 */
		return $result->result();
	}


}