<?php
class database{
	public $host="192.168.5.87";
	public $username="root1";
	public $pass="";
	public $db_name="rental";
	public $conn;
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
	
	public function login($data){
		$this->conn->query($data);
		return true;
	}
	
	public function user_profile($username){
		$query=$this->conn->query("Select * from clientaccepted where username='$username'");
		$row=$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows > 0){
			$this->data[]=$row;
		}
		return $this->data;
	}
	
	public function category(){
		$query=$this->conn->query("Select * from category");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->category[]=$row;
		}
		return $this->category;
	}
	
	public function size(){
		$query=$this->conn->query("Select * from size");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->size[]=$row;
		}
		return $this->size;
	}
	
	
	
	public function collection(){
		$query=$this->conn->query("Select * from collection");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->collection[]=$row;
		}
		return $this->collection;
	}
	
	public function recent_upload(){
		$query=$this->conn->query("Select * from collection ORDER BY 1 DESC LIMIT 4");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->recent_upload[]=$row;
		}
		return $this->recent_upload;
	}
	
	public function featured(){
		$query=$this->conn->query("Select * from collection ORDER BY RAND()
		LIMIT 6");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->featured[]=$row;
		}
		return $this->featured;
	}
	
	public function rent(){
		$query=$this->conn->query("Select * from collection where collection_id = '".$_GET['id']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->rent[]=$row;
		}
		return $this->rent;
	}
	
	public function cat(){
		$query=$this->conn->query("Select * from collection where category_id = '".$_GET['id']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->cat[]=$row;
		}
		return $this->cat;
	}
	
	public function sz(){
		$query=$this->conn->query("Select * from collection where size = '".$_GET['id']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->sz[]=$row;
		}
		return $this->sz;
	}
	
	public function ctransaction(){
		$query=$this->conn->query("Select * from accepted_reservation where reservation_contact = '".$_SESSION['email']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->ctransaction[]=$row;
		}
		return $this->ctransaction;
	}
	
	public function rtransaction(){
		$query=$this->conn->query("Select * from request_reservation where req_contactnumber = '".$_SESSION['email']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->rtransaction[]=$row;
		}
		return $this->rtransaction;
	}
	
	public function search_profile($shop_name){
		$query=$this->conn->query("Select * from collection where shop_name='$shop_name'");
		$row=$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows > 0){
			$this->data[]=$row;
		}
		return $this->data;
	}
	
	public function cancelaccept(){
		$query=$this->conn->query("DELETE from accepted_reservation where reservation_id='".$_GET['id']."'");
		header("location:transaction.php");
	}
	
	public function cancelrequest(){
		$query=$this->conn->query("DELETE from request_reservation where req_id='".$_GET['id']."'");
		header("location:transaction.php");
	}
	
	public function rejected(){
		$query=$this->conn->query("Select * from rejected where first_name = '".$_SESSION['first_name']."'");
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->rejected[]=$row;
		}
		return $this->rejected;
	}
	
	
}
	
	