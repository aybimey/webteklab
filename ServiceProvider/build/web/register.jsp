<!DOCTYPE html>
<html>
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
      
    
    <!-- start signup -->
  <div id="contact" class="paddsection">
    <div class="container">
      <div class="contact-block1">
        <div class="row">

          <div class="col-lg-6">
            <div class="contact-contact">

              <h2 class="mb-30">Sign Up!</h2>

            </div>
          </div>

          <div class="col-lg-6">
            <form action="reg-process.jsp" method="post" role="form" class="contactForm">
              <div class="row">

                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>

                <div class="col-lg-6">
                  <div class="form-group contact-block1">
                    <input type="text" name="shop_owner" class="form-control" placeholder="Your Full Name" />
                    <div class="validation"></div>
                  </div>
                </div>
                
                <div class="col-lg-6">
                  <div class="form-group contact-block1">
                    <input type="text" name="shop_name" class="form-control" placeholder="Your Shop's Name" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-6">
                  <div class="form-group">
                    <input type="text" class="form-control" name="shop_contact" placeholder="Your contact number" />
                    <div class="validation"></div>
                  </div>
                </div>
                
                <div class="col-lg-6">
                  <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Your password" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <div class="form-group">
                    <input type="text" class="form-control" name="address" placeholder="Address" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <div class="form-group">
                    <textarea class="form-control" name="shop_info" rows="12" placeholder="Write something about your shop"></textarea>
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <input type="submit" class="btn btn-defeault btn-send" value="Create my account now">
                </div>

              </div>
            </form>	
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end signup -->
    </body>
</html>