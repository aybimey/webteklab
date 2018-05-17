<?php
  include_once 'link.php';
  require "phpinclude/checklogin.php";
?>

<!DOCTYPE html>
<html lang = "en">

<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Madamemoiselle</title>
    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
  <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
  <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
  <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
  <link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="styles/categories_styles.css">
  <link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">
    <style> 
      .pads{
        margin-top: 15px;
      }
      .boxes{
        margin-bottom: 15px;
      }
      div.titles {
        font-size: 30px;
      }
      .copyright{
        position: fixed;
        bottom: 0;
        width: 100%;
      }
      .masthead{
        height: 420px;
        margin-top: -85px;
      }
    </style>
</head>

 <body id="page-top">

    <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-weight: bold;">Madamemoiselle</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="home.php" style="font-weight: bold;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="collections.php" style="font-weight: bold;">Collections</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="transaction.php" style="font-weight: bold;">My Transaction</a>
            </li>
             <li class="nav-item">
              <form action ="phpinclude/logout-dbase.php" method="POST">
                <button type="submit" name="submit" style=" -moz-appearance: none; -webkit-appearance: none; -ms-appearance: none; appearance: none; -moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; font-weight: 300; height: 2.85rem; line-height: 2.95rem;  display: inline-block; text-align: center; padding: 0 1.5rem; text-decoration: none; text-transform: uppercase; white-space: nowrap; cursor: pointer; border: 0; border-radius: 2px; font-weight: bold;"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbspLogout </button>
              </form>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <header class="masthead bg-primary text-white text-center" >
      <div class="container">
        <hr class="star-light">
      </div>
    </header>


     
        <div class="container-wrapper">
        <div class="row">
       
        </div>

      <?php  
        $connect = mysqli_connect("localhost", "root", "", "rental");  
        $query = "SELECT * FROM transaction";  
        $result = mysqli_query($connect, $query);  
      ?>  
          <div id="order_table" style="margin-top: 15px;">  
                <table class="table table-striped table-bordered text-center">  
                    <tr>  
                          <th width="10%">Shop Name</th>  
                          <th width="10%">Quantity</th>  
                          <th width="10%">Item to be Reserved</th>  
                          <th width="10%">Collection Name</th>  
                          <th width="10%">Price</th>
                          <th width="10%">Date Reserved</th>
                          <th width="10%">Status</th>
                    </tr>  
                <?php  
                while($row = mysqli_fetch_array($result))  
                {  
                ?>  
                    <tr>  
                          <td><?php echo $row["shop_name"]; ?></td>  
                          <td><?php echo $row["quantity"]; ?></td>  
                          <td><?php echo $row["reserved_item"]; ?></td>  
                          <td><?php echo $row["collection_name"]; ?></td>  
                          <td><?php echo $row["price"]; ?></td>  
                          <td><?php echo $row["reservation_date"]; ?></td> 
                          <td><?php echo $row["status"]; ?></td> 
                    </tr>  
                <?php  
                }  
                ?>  
                </table>  
          </div>  
      </div>

    </div>
   

</body>
</html>