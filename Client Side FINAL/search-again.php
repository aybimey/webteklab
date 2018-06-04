<?php
$connect = mysqli_connect("192.168.5.87", "root1", "", "rental");
$output = '';

if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "select * from collection where collection_id like '%".$search."%' 
 or collection_name like '%".$search."%' or collection_price like '%".$search."%' or category_name like '%".$search."%';";
}
else
{
 $query = "
 select * from collection;
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
    echo        '<div class="row">';
 while($row = mysqli_fetch_array($result))
 {
    extract($row);

    echo  '<a href="collectioninfo.php?id='.$row['collection_id'].'" style="cursor:pointer; color:black;"><div class="journal-info mb-30" style="background-color:#DAC6B5; display:inline-block; " >
		<img src = "images/'.$row['filename'].'" width="300" height="400" class="img-responsive" alt="img"/>
			<div class="journal-txt" style="width:300;">
			<center>
			<h4>Code:'.$row['collection_name'].'</h4>
			
			<p style="color:white; font-size:100%;"><strong>Price: '.$row['collection_price'].'
			</strong></p>
			</center>
			</div>
	</div></a>';              
 }
}
else
{
 echo 'Data Not Found';
}

?>