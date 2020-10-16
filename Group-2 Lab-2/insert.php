<?php
include_once('index.php');
$query= "select * from tablea";
$result=mysqli_query($conn,$query);
?>

<html>
<title>
<head> Table A</A> </head>
</title>
<body>
<table align="center" border="7px" style="width:800px; line-height:50px;">
<tr>
<th colspan="6"><h2> Country </h2></th>
</tr>

<th><h3>ID</h3></th>
<th><h3>Acronym</h3></th>
<th><h3>NAME</h3></th>


<?php
while($rows=mysqli_fetch_assoc($result))
{
    ?>
<tr>
<td> <?php echo $rows['ID']; ?></td>
<td> <?php echo $rows['Acronym']; ?></td>
<td> <a href="index.php?ca=<?php echo $rows['Acronym']; ?>" ><?php echo $rows['Name']; ?></a></td>


</tr>
<?php
}
?>
</table>
</body>
</html>