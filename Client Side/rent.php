<?php
  include_once 'link.php';
  require "phpinclude/checklogin.php";
?>
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

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rental";

// Create connection
$conn = mysqli_connect("localhost", "root", "", "rental");
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "SELECT collection_name, category_name , collection_info, collection_quantity, collection_price, shop_name  FROM collection";
$result = mysqli_query($conn, $query);
?>
          <div id="order_table" style="margin-top: 15px;">  
                <table class="table table-striped table-bordered text-center">  
                    <tr>  
                          <th width="10%">Collection Name</th>  
                          <th width="10%">Category Name</th>  
                          <th width="10%">Collection Price</th>  
                          <th width="10%">Collection Info</th>  
                          <th width="10%">Collection Quantity</th>
                          <th width="10%">Shop Name</th>
                    </tr>  
                <?php  
                while($row = mysqli_fetch_array($result))  
                {  
                ?>  
                    <tr>  
                          <td><?php echo $row["collection_name"]; ?></td>  
                          <td><?php echo $row["category_name"]; ?></td>  
                          <td><?php echo $row["collection_price"]; ?></td>  
                          <td><?php echo $row["collection_info"]; ?></td>  
                          <td><?php echo $row["collection_quantity"]; ?></td>   
                          <td><?php echo $row["shop_name"]; ?></td> 
                    </tr>  
                <?php  
                }  
                ?>  
                </table>  
          </div>  

    <!-- Rent -->
    <section class="bg-light registerdiv" id="register">
    <div ng-controller="DemoCtrl" ng-cloak="" class="md-inline-form" ng-app="MyApp" layout="column" layout-sm="row" layout-align="center center" layout-align-sm="start start" layout-fill>
       <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Rent Now!</h2>
            <h3 class="section-subheading text-muted">"Find the Confidence with our suit & gown"</h3>
          </div>
        </div>
        <div layout-padding="">
            <div></div>

            <form action="phpinclude/rent-dbase.php" name="userForm" method="POST">

                <div layout="row" layout-sm="column">
                	<md-input-container flex-gt-sm="60">
                        <label>Contact Number</label>
                        <input required type="number" step="any" name="contact_number" ng-model="user.contact_number"/>

                        <div ng-if="userForm.contact_number.$dirty" ng-messages="userForm.contact_number.$error" role="alert" multiple>
                            <div ng-message="required">Contact Number is Required.</div>
                        </div>
                    </md-input-container>
                </div><br>

                <div layout="row" layout-sm="column">
                	<md-input-container flex-gt-sm="60">
                        <label>Quantity</label>
                        <input required type="number" step="any" name="quantity" ng-model="user.quantity"/>

                        <div ng-if="userForm.quantity.$dirty" ng-messages="userForm.quantity.$error" role="alert" multiple>
                            <div ng-message="required">Quantity is Required.</div>
                        </div>
                    </md-input-container>
                </div><br>

                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="60">
                        <label style="font-size: 18px;">Date to Reserve</label>
                        <input type="date" id="arrive" class="floatLabel" name="reservation_date" value="<?php echo date('Y-m-d'); ?>">
                    </md-input-container>
                </div>

                <div>
                    <p style="font-size: 15px; margin-left: 3px; margin-top: 18px;">Size: </p>
                    <input type="hidden" name="size" value="{{user.size}}"/>
                    <md-radio-group style="margin: 12px 0 19px;" ng-model="user.size" required>
                    	<md-radio-button value="extra small">Extra Small/4 </md-radio-button>
                        <md-radio-button value="small">Small/6</md-radio-button>
                        <md-radio-button value="medium">Medium/8</md-radio-button>
                        <md-radio-button value="medium large">Medium Large/10</md-radio-button><br>
                        <md-radio-button value="large">Large/12</md-radio-button>
                        <md-radio-button value="extra large">Extra Large/14</md-radio-button>
                        <md-radio-button value="extra extra large">Extra Extra Large/16</md-radio-button>
                    </md-radio-group>  
                </div><br>

                <div align="center">
                	<img src="img/sizes.jpg" alt="sizes">
                </div><br><br>
                
                <md-button class="md-raised md-primary" style="width:100%; margin: 0px 0px;" type="submit" name="submit" ng-disabled="userForm.$invalid" name="submit">Submit</md-button>
            </form>
        </div>
</div>
    </section>

    <!-- end registration -->


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>


    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-animate.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-route.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-aria.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-messages.min.js'></script>
    <script src='https://cdn.gitcdn.xyz/cdn/angular/bower-material/v1.0.0-rc3/angular-material.js'></script>
    <script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-114/assets-cache.js'></script>

    <script  src="js/index.js"></script>

     <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
  </body>
</html>
