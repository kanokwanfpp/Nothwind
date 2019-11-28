<?php include("header.php"); ?>


<center>
<?php
$lastorderid = 1;
if((int)phpversion() >= 7) {
  $connect = new mysqli("localhost", "id10841552_northwind", "id10841552_kanokwan", "123456");
  $result = $connect->query("select ordid from orders order by ordid desc limit 0,1");  
  if ($result->num_rows > 0) 
    if($row = $result->fetch_assoc()) $lastorderid = $row['ordid'] + 1;
  $connect->close(); 
} else {
  $connect = mysql_connect("localhost","id10841552_kanokwan", "123456");          
  $result = mysql_db_query("id10841552_northwind","select ordid from orders order by orderid desc limit 0,1");  
  if (mysql_num_rows($result) > 0)
    if ($row = mysql_fetch_object($result)) $lastorderid = $row->orderid + 1;
  mysql_close($connect);  
}
?>
<form action=insertorderform.php method=post>
เลข Order <input name=orderid value="<?php echo $lastorderid; ?>"><br/><br/>
รหัส ลูกค้า <input name=custid autocomplete="off" value ="0101"><br/><br/>
รหัส พนักงาน <input name=emplid autocomplete="off" value ="1001"><br/><br/>
รหัส ผู้ส่ง <input name=ship autocomplete="off" value ="0101"><br/><br/>
<input type=submit value=order_process>
</form>
<?php include("footer.php"); ?>