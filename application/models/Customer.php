<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends CI_Model {

	function getAllCustomers() {

		$result = $this->db->get('employee');
		
		/**
		 * 	return employee table Data getting from database.
		 */
		return $result->result();
	}

	function getCustomer($customerID) {
		$this->db->where('id', $customerID);
		return $this->db->get('customer')->row();
	}

	function setCustomer($customer) {

		if($this->db->insert('employee', $customer)):
			return true;
		else:
			return false;
		endif;
	}
}