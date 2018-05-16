<?php
class database{
	public $host="localhost";
	public $username="root";
	public $pass="";
	public $db_name="rental";
	public $conn;
	public $topic;
	public $data;

	public function __construct()
	{
		$this->conn=new mysqli($this->host,$this->username,$this->pass,$this->db_name);
		if($this->conn->connect_errno){
			die ("database connection failed".$this->conn->connect_errno);
		}
		
	}

		public function url($url){
		header("location:".$url);
	}
	
	public function signup($data){
		$this->conn->query($data);
		return true;
	}
	
	public function user_profile($username){
		$query=$this->conn->query("Select * from client where username='$username'");
		$row=$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows > 0){
			$this->data[]=$row;
		}
		return $this->data;
	}


}