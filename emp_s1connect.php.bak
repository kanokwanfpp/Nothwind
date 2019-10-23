<?php
ini_set('display_errors', 0); 
$host = "localhost"; 
$uname = "id10840002_fulkkie24";
$upass 		= "123456";
$db = "id10840002_fulkkie"; 
$tb			= "Employees";
$dbstatus 	= 0;
myConnect();
       
function myConnect() {
	global $db,$host,$uname,$upass,$connect,$dbstatus;	
    //echo  $db,$host,$uname,$upass,$connect,$dbstatus;
	if((int)phpversion() >= 7) {
		$connect = new mysqli($host, $uname, $upass, $db);
		if ($connect->connect_error) $connect = new mysqli($host, $uname, $upass); else $dbstatus = 1;
        
		if ($connect->connect_error) die("Connection failed: " . $connect->connect_error);
	} else {
		if(!$connect = mysql_connect($host,$uname,$upass)) die("Connect failed : ");
          
	}
}

?>

