<?php include("yheader.php"); ?>
<?php
$myForm = '<body>
<form action="cus_s5delete.php">
<input name="delid" value=".....">
<input type="submit" value="cus_s5delete.php">
</form>';
if (!isset($_GET['delid'])) { 
  echo $myForm;
  exit;
}
require("cus_s1connect.php");
$sql="delete from $tb ";
$sql.="where cus ='".$_GET['delid']."'";
if((int)phpversion() >= 7) {
	if($connect->query($sql) === FALSE) 
		echo "$sql : failed";
	else 
		header("location: index.php");	
	$connect->close();
} else {	
	if(!$result=mysql_db_query($db,$sql)) 
		echo "$sql : failed";
	else 
		header("location: index.php");
	mysql_close($connect);
}
?>
<?php include("footer.php"); ?>