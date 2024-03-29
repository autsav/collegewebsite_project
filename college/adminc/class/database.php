<?php
abstract class Database{
	abstract function create();
	abstract function edit();
	abstract function remove();
	abstract function lists();

	function set($var,$value){
		$conn = $this->connect();
		$this->$var=$conn->real_escape_string($value);
	}


	function connect(){
		$conn = new mysqli('localhost','root','','db_project');

		if($conn->connect_errno !=0){
			die('Database Connection Failed');
		}
		return $conn;
	}



	function select($sql){
		$connect = $this->connect();
		$result = $connect->query($sql);
		$data = [];
		if($result->num_rows > 0) {
			while($obj = $result->fetch_object()){
				array_push($data,$obj);
			}
		}
		return $data;

	}


	function insert($sql){
		$connect = $this->connect();
		$connect->query($sql);
		if($connect->affected_rows==1 && $connect->insert_id > 0){
			return $connect->insert_id;
		}
		else{
			return false;
		}
	}


	function delete($sql){
		$connect = $this->connect();
		$connect->query($sql);
		if($connect->affected_rows > 0){
			return true;
		}
		else{
			return false;
		}
	}


	function update($sql){
		$connect = $this->connect();
		$connect->query($sql);
		if($connect->affected_rows > 0){
			return true;
		}
		else{
			return false;
		}
	}



}



?>
