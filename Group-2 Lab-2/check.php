<?php
include_once('index.php');
$query= "select * from tablea";
$result=mysqli_query($conn,$query);
?>
<
<html>
<title>
<head> List OF TABLE A </head>
</title>
<body>
<table align="center" border="2px" style="width:600px; line-height:40px;">
<tr>
<th colspan="4"><h2> Country </h2></th>
</tr>
<t>
<th>ID</th>
<th>Acronym</th>
<th>NAME</th>
</t>

<?php
while($rows=mysqli_fetch_assoc($result))
{
    ?>
<tr>
<td> <?php echo $rows['ID']; ?></td>
<td> <?php echo $rows['Acronym']; ?></td>
<td> <?php echo $rows['Name']; ?></td>
</tr>
<?php
}
?>
</table>
</body>
</html>