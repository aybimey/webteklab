<?php
    include_once 'link.php';
    session_start();
?>

<head>
<!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport" http-equiv="Content-Type">

  <title>Mademoiselle</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

  <!-- Libraries CSS Files -->
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/hover/hover.min.css" rel="stylesheet">

  <!-- Blog Stylesheet File -->
  <link href="css/blog.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="css/responsive.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="icon" href="images/gown.png">
  
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style>
    .madam{color:black;
    font-family:'Great vibes', cursive;
    margin-top:2.5%;
    color:#b8a07e;}
    
    .madam:hover{
        color:black;
    }
    
    ul li a:hover{
        color:#b8a07e;  
    }
    
    .bcontainer{
        position:fixed;
        z-index: 999;
        opacity:0.7;
    }
    
    .bcontainer:hover{
        opacity:1;
    }
    
    .login{
        margin-left:1%;
    }
    
    .logo-bottom ul{
        text-decoration:none;
        list-style-type:none;
    }
    
    .logo-bottom ul li a{
        font-size:130%;
    }
    
    .logo-bottom ul li a:hover{
        color:#b8a07e;
        
    }

</style>
</head>

 <body>
 <body>
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo" style=" width:100%;">
            <div class="logo-left" style="margin-left:40%;">
                <img src="images/gown.png"><br>
            </div>
            <div class="logo-right" style="margin-left:35%; cursor:pointer;>
                <a href="index.php"><h1 class ="madam">Mademoiselle</h1></a>
            </div>
            <div class="logo-bottom" style="float:right;">
                <ul>
                    <li><a href="register.php"><i class="fa fa-file-text" aria-hidden="true"></i>&nbspRegister</a></li>
                    <li><a href="login.php" style="color:#b8a07e;"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbspLogin</a></li>
                </ul>
            </div>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
      </div>
    </div>
  </nav>
  <!-- End section navbar -->


<!DOCTYPE html>
<html lang="en">
   <style>
      @import url('https://fonts.googleapis.com/css?family=Courgette');
      @import url('https://fonts.googleapis.com/css?family=Montserrat');
      @import url('https://fonts.googleapis.com/css?family=Raleway');
    </style>
    <!-- Register -->
    <section class="bg-light registerdiv" id="register">
    <div ng-controller="DemoCtrl" ng-cloak="" class="md-inline-form" ng-app="MyApp" layout="column" layout-sm="row" layout-align="center center" layout-align-sm="start start" layout-fill>
        
        <br><br><br><br>
        <div layout-padding="">
            <div></div>

            <form action="phpinclude/register-dbase.php" name="userForm" method="POST" ng-submit="user.submit(userForm.$valid)" enctype="multipart/form-data">

                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">First name</label>
                        <input ng-model="user.first_name" name="first_name" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="First Name">
                        <div ng-if="userForm.first_name.$dirty" ng-messages="userForm.first_name.$error" role="alert">
                            <div ng-message="required" class="my-message">First Name is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct First Name.</div>
                        </div>
                    </md-input-container>
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Last Name</label>
                        <input ng-model="user.last_name" name="last_name" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="Last Name">
                        <div ng-if="userForm.last_name.$dirty" ng-messages="userForm.last_name.$error" role="alert">
                            <div ng-message="required" class="my-message">Last Name is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct Last Name.</div>
                        </div>
                        <div>
                    </md-input-container>
                  </div>
                </div><br>
                 <div layout="row" layout-sm="column">
                          <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Username</label>
                        <input ng-model="user.user_name" name="username" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="Username">
                        <div ng-if="userForm.user_name.$dirty" ng-messages="userForm.user_name.$error" role="alert">
                            <div ng-message="required" class="my-message">Username is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct Username.</div>
                        </div>
                    </md-input-container>
                  </div><br>

                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Address</label>
                        <input ng-model="user.city" name="city" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="City">
                        <div ng-if="userForm.city.$dirty" ng-messages="userForm.city.$error" role="alert">
                            <div ng-message="required" class="my-message">City is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct City.</div>
                        </div>
                    </md-input-container>

                    <md-input-container flex-gt-sm="">
                        <label></label>
                        <input ng-model="user.province" name="province" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="Province">
                        <div ng-if="userForm.province.$dirty" ng-messages="userForm.province.$error" role="alert">
                            <div ng-message="required" class="my-message">Province is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct Province.</div>
                        </div>
                        <div>
                    </md-input-container>
                  </div>
                </div>

                <div layout="row" layout-sm="column">
                    <p style="margin-left: 3px; margin-top: 18px; font-family: 'Raleway', sans-serif; font-size: 20px; font-weight: bold; color: #aa7d55;">Gender: </p>
                    <input type="hidden" name="gender" value="{{user.gender}}" />
                    <md-radio-group style="margin: 12px 0 19px;" ng-model="user.gender" required>
                        <md-radio-button value="Male" class="md-primary">Male</md-radio-button>
                        <md-radio-button value="Female">Female</md-radio-button>
                    </md-radio-group>

                    <md-input-container flex-gt-sm="60">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Age</label>
                        <input required type="number" step="any" name="age" ng-model="user.age" min="18" max="100" placeholder="18" />
                        <div ng-if="userForm.age.$dirty" ng-messages="userForm.age.$error" role="alert" multiple>
                            <div ng-message="required">Age is Required.</div>
                            <div ng-message="min">Only Above 18 years Old are allowed.</div>
                            <div ng-message="max">Sorry {{userForm.age.$viewValue}} years old are not Allowed.</div>
                        </div>
                    </md-input-container>
                </div><br>
                 <div layout="row" layout-sm="column">
                        <md-input-container flex-gt-sm="">
                            <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Contact Number</label>
                            <input required type="number" step="any" name="contactnumber" ng-model="user.contactnumber" placeholder="Contact Number" />

                            <div ng-if="userForm.contactnumber.$dirty" ng-messages="userForm.contactnumber.$error" role="alert" multiple>
                            <div ng-message="required">Contact Number is Required.</div>
                        </div>
                        </md-input-container>
                  </div><br>
                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Email</label>
                        <input required type="email" name="email" ng-model="user.email" ng-pattern="/^[_a-z0-9-+]+(\.[_a-z0-9-+]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/" placeholder="email@example.com" />
                        <div ng-if="userForm.email.$dirty" ng-messages="userForm.email.$error" role="alert">
                            <div ng-message="required" class="my-message">Email Address is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter Correct Email Address. </div>
                            <div ng-message="email" class="my-message">Enter Correct Email Address. </div>
                        </div>
                    </md-input-container>
                </div><br>
                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">New Password</label>
                        <input name="password" ng-model="user.password" type="password" minlength="8" maxlength="100" ng-pattern="/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/" required placeholder="********">
                        <div ng-if="userForm.password.$dirty" ng-messages="userForm.password.$error" role="alert" multiple>
                            <div ng-message="required">Password is Required.</div>
                            <div ng-message="pattern">Password should contain at least one number, one lowercase and one uppercase character.</div>
                            <div ng-message="minlength">Password should be greater than 8 letters.</div>
                            <div ng-message="maxlength">Password Can't be more than 100 letters.</div>
                        </div><br>
                    </md-input-container>
                    <md-input-container flex-gt-sm="">
                        <label style="font-family: 'Raleway', sans-serif; font-size: 26px; font-weight: bold; color: #aa7d55;">Confirm Password</label>
                        <input name="confirmpassword" ng-model="user.confmPassword" type="password" minlength="8" maxlength="100" ng-pattern="/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/" required compare-to="user.password" placeholder="********">
                        <div ng-if="userForm.confmPassword.$dirty" ng-messages="userForm.confmPassword.$error" role="alert">
                            <div ng-message="required">Confirm Password is Required.</div>
                            <div ng-message="compareTo">Password Doesn't Match.</div>
                        </div>
                    </md-input-container>
                </div>
                <md-button class="md-raised md-primary" style="width:100%; margin: 0px 0px; font-family: 'Raleway', sans-serif; font-size: 18px; font-weight: bold; " type="submit" name="submit" ng-disabled="userForm.$invalid" name="submit">Register</md-button>
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
