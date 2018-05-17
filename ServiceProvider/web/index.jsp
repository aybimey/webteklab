<!DOCTYPE html>
<html lang="en">

<head>
  <!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">


  <title>Madameoiselle</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="css/responsive.css" rel="stylesheet"> 

  <!-- Favicon -->
  <link rel="shortcut icon" href="images/favicon.png">
</head>

<body>

 

  <!-- start section header -->
  <div id="header" class="home">

    <div class="container">
      <div class="header-content" style=" width:100%; display:inline-block; margin-top:25%;">
		<div class="header-left" style="float:left;  width:10%; ">
			<img src="images/image.png" style="height:80px; width:100px;">
		</div>
		<div class="header-right" style="float:right; width:90%;">
		<h1>Share your <span style="color:#DAC6B5;">passion</span> for fashion <span class="typed"></span></h1>
        <p style ="color:#DAC6B5;">Madameoiselle.com</p>
		</div>
      </div>
    </div>
  </div>
  <!-- End section header -->

  <!-- Home section 1 -->
  <div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">

        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/gown.png" class="img-responsive" alt="me">
            </div>
          </div>
        </div>

        <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Share your creations</p>
            <p class="separator">Let the world know your creations. Share your talent to the workd. </p>

          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- end home section 1 -->

  <!-- home section 2 -->
	<div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">

	  <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Accept & Reject reservations </p>
            <p class="separator">User can accept and reject reservation from the client.</p>

          </div>

        </div>
	  
        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/gown.png" class="img-responsive" alt="me">
            </div>
          </div>
        </div>

        
      </div>
    </div>
  </div>
  <!-- end home section 2 -->
  
  <!-- home section 3 -->
  <div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">
	  
        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/gown.png" class="img-responsive" alt="me">
            </div>
          </div>
        </div>

		 <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Have your own planner </p>
            <p class="separator">To easily track reservations made by clients.</p>
          </div>

        </div>
        
      </div>
    </div>
  </div>
  <!-- end home section 3 -->
  
  <!-- start section steps -->
  <div id="journal" class="text-left paddsection">

    <div class="container">
      <div class="section-title text-center">
        <h2>In just 3 easy steps!</h2>
      </div>
    </div>

    <div class="container">
      <div class="journal-block">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="blog-single.html">Step 1</a></h4>
                <p class="separator">UPLOAD YOUR WORK.
                </p>

              </div>

            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="#blog-single.html">Step 2</a></h4>
                <p class="separator">WAIT FOR THE CONFIRMATION OF THE SERVICE PROVIDER.
                </p>

              </div>

            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="blog-single.html">Step 3</a></h4>
                <p class="separator">BE HAPPY! YOUR CREATION IS NOW SHARED!
                </p>

              </div>

            </div>
          </div>

        </div>
      </div>
    </div>

  </div>
  <!-- End section journal -->


  <!-- start section of login -->
  <div id="contact" class="paddsection">
    <div class="container">
      <div class="contact-block1">
        <div class="row">
          <div class="col-lg-6">
            <div class="contact-contact">
              <h2 class="mb-30"></h2>
            </div>
          </div>
          <div class="col-lg-6">
             <% String shop_name = (String)session.getAttribute("shop_name");
                
             if(shop_name!=null){
                 String site = new String("http://localhost:8084/ServiceProvider/home.jsp");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location",site);
            } else { %> 
            
            <form action="login.jsp" method="post">
              <div class="row">

                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>

                <div class="col-lg-6">
                    <input type="text" name="shop_name" class="form-control" id="name" placeholder="Your username" />
                </div>

                <div class="col-lg-6"> 
                      <input type="password" class="form-control" name="password" id="password" placeholder="Your password" />
                </div>

                <div class="col-lg-12">
                  <input type="submit" class="btn btn-defeault btn-send" value="Log in">
                </div>
              </div>
            </form><% } %><br>
            <center><h4 class="mb-30"><a href="register.jsp">Doesn't have an account? Create an account now</a></h4></center>
            </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end section of login -->


  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="ion-social-facebook"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-instagram"></i></a></li>
          <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
          <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
          <li><a href="#"><i class="ion-social-dribbble"></i></a></li>
        </ul>

      </div>

      <p>&copy; 2018 Madameoiselle.com. All rights reserved.</p>

      <div class="credits">
      </div>

    </div>
  </div>
  <!-- End section footer -->

  
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

 

</body>

</html>
