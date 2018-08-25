<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class InvestmentDetail extends CI_Model {
    
    public function __construct() {
    	parent::__construct();
	}

	
	function getAllDetail() {

		$result = $this->db->get('employee');
		
		/**
		 * 	return employee table Data getting from database.
		 */
		return $result->result();
	}

	function setDetail($detail) {

		if($this->db->insert('investmentDetail', $detail)):
			return $this->db->insert_id();
		else:
			return false;
		endif;
	}

	function employebybranch($branchID) {
		$this->db->where('branchID', $branchID);
		$result = $this->db->get('employee');
		return $result->result();
	}


}