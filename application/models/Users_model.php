<?php
class Users_model extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }
		
		public function get_user()
		{
			
		$username = $this->input->post('username');
		$query = $this->db->get_where('users', array('username' => $username));
        return $query->row_array();
		} 
		
		
		public function login()
		{
		/* Login in a user */	
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$query = $this->db->get_where('users', array('username' => $username, 'password' => $password ));
		$row = $query->row();

		if (isset($row))
			{
				$result = 1;
				$this->session->set_userdata('username', $row->username);
				$this->session->set_userdata('is_logged_in', 1);
			}
			else
			{
				$result = 0;
			
			}
			
		return $result;
		} 
		
		public function register()
		{
				
			$data = array(
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
				'email' => $this->input->post('email')
				);

			return $this->db->insert('users', $data);
		}
}
