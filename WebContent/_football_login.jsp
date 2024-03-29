<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from alchemists.dan-fisher.com/football/_football_index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 16:55:07 GMT -->
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <title>IPLT20 - Follow or Manage your team with the IPLMS</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Alchemists - Sports News HTML Template">
  <meta name="author" content="Dan Fisher">
  <meta name="keywords" content="Sports News HTML Template">

  <!-- Favicons
  ================================================== -->
  <link rel="shortcut icon" href="assets/images/cricket/favicon.ico">
  <link rel="apple-touch-icon" sizes="120x120" href="assets/images/cricket/favicon.ico">
  <link rel="apple-touch-icon" sizes="152x152" href="assets/images/cricket/favicon.ico">

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">

  <!-- Google Web Fonts
  ================================================== -->
  <link href="https://fonts.googleapis.com/css?family=Exo+2:400,700,700i|Roboto:400,400i" rel="stylesheet">

  <!-- CSS
  ================================================== -->
  <!-- Preloader CSS -->
  <link href="assets/css/preloader.css" rel="stylesheet">

  <!-- Vendor CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/fonts/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
  <link href="assets/vendor/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
  <link href="assets/vendor/slick/slick.css" rel="stylesheet">

  <!-- Template CSS-->
  <link href="assets/css/content.css" rel="stylesheet">
  <link href="assets/css/components.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/snackbar.css" rel="stylesheet">

  <!-- Custom CSS-->
  <link href="assets/css/custom.css" rel="stylesheet">

</head>
<body class="template-football">

  <div class="site-wrapper clearfix">
    <div class="site-overlay"></div>




    <!-- Header
    ================================================== -->
  
    <!-- Header Mobile -->
    <div class="header-mobile clearfix" id="header-mobile">
      <div class="header-mobile__logo">
        <a href="_football_index.html"><img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="header-mobile__logo-img"></a>
      </div>
      <div class="header-mobile__inner">
        <a id="header-mobile__toggle" class="burger-menu-icon"><span class="burger-menu-icon__line"></span></a>
        <span class="header-mobile__search-icon" id="header-mobile__search-icon"></span>
      </div>
    </div>
  
    <!-- Header Desktop -->
    <header class="header">
  
      <!-- Header Top Bar -->
      <div class="header__top-bar clearfix">
        <div class="container">
  
          <!-- Account Navigation -->
          <ul class="nav-account">
            <li class="nav-account__item hidden"><a href="_football_shop-account.html">Your Account</a></li>
            <li class="nav-account__item"><a href="#">Language: <span class="highlight">EN</span></a>
              <ul class="main-nav__sub">
                <li><a href="#">English</a></li>
              </ul>
            </li>
            <li class="nav-account__item nav-account__item--logout hidden"><a href="_football_shop-login.html">Logout</a></li>
          </ul>
          <!-- Account Navigation / End -->
  
        </div>
      </div>
      <!-- Header Top Bar / End -->
  
      <!-- Header Secondary -->
      <div class="header__secondary">
        <div class="container">
  
          <ul class="info-block info-block--header">
            <li class="info-block__item info-block__item--contact-primary">
              <svg role="img" class="df-icon df-icon--football-helmet">
                <use xlink:href="assets/images/football/icons-football.svg#football-helmet"/>
              </svg>
              <h6 class="info-block__heading">BCCI.TV</h6>
              <a class="info-block__link" href="http://www.iplt20.com">IPLT20.com</a>
            </li>
            <li class="info-block__item info-block__item--contact-secondary">
              <svg role="img" class="df-icon df-icon--football-ball">
                <use xlink:href="assets/images/football/icons-football.svg#football-ball"/>
              </svg>
              <h6 class="info-block__heading">Get ready for the '17 Season</h6>
              <a class="info-block__link" href="#">APRIL 5 - MAY 21 2017</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- Header Secondary / End -->
  
      <!-- Header Primary -->
      <div class="header__primary">
        <div class="container">
          <div class="header__primary-inner">
  
            <!-- Header Logo -->
            <div class="header-logo">
              <a href="_football_index.html"><img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="header-logo__img"></a>
            </div>
            <!-- Header Logo / End -->
  
            
  
          </div>
        </div>
      </div>
      <!-- Header Primary / End -->
  
    </header>
    <!-- Header / End -->


    <div id="login_section">
      <!-- Login Page Content
      ================================================== -->
      <div class="site-content" id="login_page_container">
        <div class="container">

          <div class="row">

            <div class="col-md-6">

              <!-- Login -->
              <div class="card">
                <div class="card__header">
                  <h4>Login to your Account</h4>
                </div>
                <div class="card__content">

                  <!-- Login Form -->
                  <!-- <form action="#" onsubmit="return validateAndLogin()"> -->
                  <form action="login">
                    <div class="form-group">
                      <label for="login-name">Your Email</label>
                      <input type="email" name="username" id="login-name" class="form-control" placeholder="Enter your email address..." required>
                    </div>
                    <div class="form-group">
                      <label for="login-password">Your Password</label>
                      <input type="password" name="password" id="login-password" class="form-control" placeholder="Enter your password..." required>
                    </div>
                    <div class="form-group form-group--password-forgot">
                      <label class="checkbox checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox1" value="option1"> Remember Me
                        <span class="checkbox-indicator"></span>
                      </label>
                      <span class="password-reminder">Forgot your password? <a href="#">Click Here</a></span>
                    </div>
                    <div class="form-group form-group--sm">
                      <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Sign in to your account</button>
                    </div>
                  </form>
                  <!-- Login Form / End -->

                </div>
              </div>
              <!-- Login / End -->
            </div>

            <div class="col-md-6">

              <!-- Register -->
              <div class="card">
                <div class="card__header">
                  <h4>Register Now</h4>
                </div>
                <div class="card__content">

                  <!-- Register Form -->
                  <form action="signup" class="validatedForm">
                    <div class="form-group">
                      <label for="register-name">Your Email</label>
                      <input type="email" name="username" id="register-name" class="form-control" placeholder="Enter your email address..." required>
                    </div>
                    <div class="form-group">
                      <label for="user-name">User name</label>
                      <input type="text" name="user-name" id="user-name" class="form-control" placeholder="Enter your user name..." required>
                    </div>
                    <div class="form-group">
                      <label for="register_password">Your Password</label>
                      <input type="password" name="password" id="register_password" class="form-control" placeholder="Enter your password..." required>
                    </div>
                    <div class="form-group">
                      <label for="repeat_password">Repeat Password</label>
                      <input type="password" name="repeat_password" id="repeat_password" class="form-control" placeholder="Repeat your password..." required>
                    </div>
                    <div class="form-group">
                    <label for="select-team">Select your team</label>
			          <select class="form-control selectpicker" name="team" id="select-country" data-live-search="true">
			                  <option  value="1">Kolkata Knight Riders</option>
			                  <option value="2">Royal Challengers Bangalore</option>
			                  <option  value="3">Chennai Super Kings</option>
			                  <option  value="4">Kings XI Punjab</option>
			                  <option  value="5">Rajasthan Royals</option>
			                  <option  value="6">Delhi Daredevils</option>
			                  <option  value="7">Mumbai Indians</option>
			                  <option  value="8">Deccan Chargers</option>
			                  <option  value="9">Kochi Tuskers Kerala</option>
			                  <option  value="10">Pune Warriors</option>
			                  <option  value="11">Sunrisers Hyderabad</option>
			                  <option  value="12">Rising Pune Supergiants</option>
			                  <option  value="13">Gujarat Lions</option>
			          </select>
		          	</div>
                    <div class="form-group form-group--submit">
                      <button type="submit" class="btn btn-default btn-lg btn-block">Create Your Account</button>
                    </div>
                  </form>
                  <!-- Register Form / End -->

                </div>
              </div>
              <!-- Register / End -->
            </div>
          </div>
          <div class="row">
            <div class = "col-md-12">
              <!-- snack bar -->
              <div id="snackbar">
              </div>
              <!-- end of snack bar-->
            </div>
          </div>


        </div>
      </div>
      <!-- Content / End -->
    </div>

     <!-- Footer
    ================================================== -->
    <footer id="footer" class="footer">
    
      <!-- Footer Info -->
      <div class="footer-info">
        <div class="container">
    
          <div class="footer-info__inner">
            <!-- Footer Logo -->
            <div class="footer-logo footer-logo--has-txt">
              <a href="_football_index.html">
                <img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="footer-logo__img">
                <div class="footer-logo__heading">
                  <h5 class="footer-logo__txt">Indian Premier League</h5>
                  <span class="footer-logo__tagline">www.iplt20.com</span>
                </div>
              </a>
            </div>
            <!-- Footer Logo / End -->
    
            <!-- Info Block -->
            <div class="info-block info-block--horizontal">
              <div class="info-block__item">
                <svg role="img" class="df-icon df-icon--football-ball">
                  <use xlink:href="assets/images/football/icons-football.svg#football-ball"/>
                </svg>
                <h6 class="info-block__heading">Contact Us</h6>
                <a class="info-block__link" href="mailto:info@ipl.com">info@ipl.com</a>
              </div>
              <div class="info-block__item info-block__item--social">
                <ul class="social-links social-links--circle">
                  <li class="social-links__item">
                    <a href="#" class="social-links__link"><i class="fa fa-facebook"></i></a>
                  </li>
                  <li class="social-links__item">
                    <a href="#" class="social-links__link"><i class="fa fa-twitter"></i></a>
                  </li>
                  <li class="social-links__item">
                    <a href="#" class="social-links__link"><i class="fa fa-instagram"></i></a>
                  </li>
                  <li class="social-links__item">
                    <a href="#" class="social-links__link"><i class="fa fa-rss"></i></a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- Info Block / End -->
    
          </div>
        </div>
      </div>
      <!-- Footer Info / End -->
    
     
      <!-- Footer Secondary -->
      <div class="footer-secondary">
        <div class="container">
          <div class="footer-secondary__inner">
            <div class="row">
              <div class="col-md-4">
                <div class="footer-copyright"><a href="_football_index.html">IPL</a> 2017 &nbsp; | &nbsp; All Rights Reserved</div>
              </div>
              <div class="col-md-8">
                <ul class="footer-nav footer-nav--right footer-nav--sm">
                  <li class="footer-nav__item"><a href="#">Home</a></li>
                  <li class="footer-nav__item"><a href="#">Features</a></li>
                  <li class="footer-nav__item"><a href="#">Statistics</a></li>
                  <li class="footer-nav__item"><a href="#">The Team</a></li>
                  <li class="footer-nav__item"><a href="#">News</a></li>
                  <li class="footer-nav__item"><a href="#">Shop</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer Secondary / End -->
    </footer>
    <!-- Footer / End -->
    
  </div>

  <!-- Javascript Files
  ================================================== -->
  <!-- Core JS -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/js/core-min.js"></script>
  
  <!-- Vendor JS -->
  <script src="assets/vendor/twitter/jquery.twitter.js"></script>
  <script src="assets/vendor/jquery-duotone/jquery.duotone.min.js"></script>
  
  <script src="assets/vendor/marquee/jquery.marquee.min.js"></script>
  
  <!-- Template JS -->
  <script src="assets/js/init.js"></script>
  <script src="assets/js/custom.js"></script>

  <script type="text/javascript">
    function validateAndLogin() {
        var ok = true;
        return ok;
    }
    
    function validateAndRegister() {
      var pass1 = document.getElementById("register_password").value;
      var pass2 = document.getElementById("repeat_password").value;
      var ok = true;
      if (pass1 != pass2) {
          document.getElementById("register_password").parentNode.classList.add("has-error");
          document.getElementById("repeat_password").parentNode.classList.add("has-error");
          ok = false;
          showSnackbar("alert-danger","Passwords do not match"," please enter the same password twice");
      }
      //alert("In func");
      return ok;
    }

    function showSnackbar(c,strong,text) {
      // Get the snackbar DIV
      var x = document.getElementById("snackbar")

      //alert-danger,alert-warning,alert-info,alert-succes
      //alert-dismissable
      var d = "<div class='alert "+c +" alert-dismissible'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>Ã</span></button><strong>"+strong+"</strong> "+text+"</div>";
      $("#snackbar").html(d);
        
      // Add the "show" class to DIV
      x.className = "show";

      // After 3 seconds, remove the show class from DIV
      setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
      setTimeout(function(){ $("#snackbar").empty(); }, 3000);
      //$("#snackbar").empty();
   }
  </script>
  
  </body>
  
<!-- Mirrored from alchemists.dan-fisher.com/football/_football_index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 16:56:44 GMT -->
</html>
  
