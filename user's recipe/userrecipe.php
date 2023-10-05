<?php
  // Create database connection
  $db = mysqli_connect("localhost", "root", "", "usermod5");

  // Initialize message variable
  $msg = "";

  
  
  $result = mysqli_query($db, "SELECT * FROM images");
?>
<!DOCTYPE html>
<html>
<head>
<title>Image Upload</title>
<style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
:root{
    --tenne-tawny: #d65108;
    --tenne-tawny-dark: #b54507;
    background-image: url('food.jpg');
}
   #content{
   	width: 50%;
   	margin: 20px auto;
   	border: 5px solid #696969;
    background-color: #DCDCDC;
   }
   form{
   	width: 50%;
   	margin: 20px auto;
   }
   form div{
   	margin-top: 5px;
   }
   #img_div{
   	width: 80%;
   	padding: 5px;
   	margin: 15px auto;
   	border: 5px solid #696969;
   }
   #img_div:after{
   	content: "";
   	display: block;
   	clear: both;
   }
   img{
   	float: left;
   	margin: 5px;
   	width: 300px;
   	height: 140px;
   }
   
</style>
</head>
<body>
<div id="content">
  <?php
    while ($row = mysqli_fetch_array($result)) {
      echo "<div id='img_div'>";
      	echo "<img src='../images/".$row['image']."' >";
      	echo "<p>".$row['image_text']."</p>";
      echo "</div>";
    }
  ?>
  
</div>
</body>
</html>