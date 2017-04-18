<%@page import="org.json.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.http.Cookie"%>
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
            <li class="nav-account__item hidden"><a href="#">Your Account</a></li>
            <li class="nav-account__item"><a href="#">Language: <span class="highlight">EN</span></a>
              <ul class="main-nav__sub">
                <li><a href="#">English</a></li>
              </ul>
            </li>
            <li class="nav-account__item nav-account__item--logout hidden"><a href="#">Logout</a></li>
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
  
            <!-- Main Navigation -->
            <nav class="main-nav clearfix">
              <ul class="main-nav__list">
                <li class="active"><a href="/Struts2Sample/">Home</a>
                </li>
                <li class=""><a href="/Struts2Sample/venues">Venues</a>
                </li>
                <li class=""><a href="/Struts2Sample/teams">Teams</a>
                </li>
                <li class=""><a href="/Struts2Sample/stats">Statistics</a>
                </li>
                <li class=""><a href="/Struts2Sample/matches">Matches</a>
                </li>
                <li class=""><a href="/Struts2Sample/compare">Compare</a>
                </li>
              </ul>

              <ul class="main-nav__list" style="float:right;">
                <li class=""><a href="/Struts2Sample/logout">Logout</a>
              </ul>
            </nav>
            <!-- Main Navigation / End -->
  
          </div>
        </div>
      </div>
      <!-- Header Primary / End -->
  
    </header>
    <!-- Header / End -->



<!-- team List Container
====================================================== -->
<div id="team_list_container" >
     <!-- Content
    ================================================== -->
    <div class="site-content">
      <div class="container">

<!-- Team Roster - Card -->
        <div class="team-roster team-roster--case team-roster--case-slider">


          <!-- Player -->
         		 <%
                      JSONArray test = (JSONArray)request.getAttribute("json");
  	        			for(int i = 0; i < test.length(); i++)
  	        			{
  	        		      JSONObject jsonObject = test.getJSONObject(i);
  	        		      String venue_name = jsonObject.get("venue_name").toString();
  	        		      String matches_hosted = jsonObject.get("matches_hosted").toString();
  	        		      String city = jsonObject.get("city").toString();
  	        		      String country = jsonObject.get("country").toString();
                      
                      %>
          
          <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              <!-- Player Photo -->
<!--               <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="#" alt=""></a>
              </figure> -->
              <!-- Player Photo / End-->

              <!-- Player Details -->
              
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name"><%=venue_name %></span>
                    <!-- <span class="team-roster__player-last-name">Masterson</span> -->
                  </h3>
                </div>
              </div>
              <!-- Player Details / End -->

              <!-- Player Meta Info -->
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent"><%=matches_hosted %></div>
                  <div class="team-roster__meta-label">Matches</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value"><%=city %></div>
                  <div class="team-roster__meta-label">City</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value"><%=country%></div>
                  <div class="team-roster__meta-label">Country</div>
                </div>
              </div>
              <!-- Player Meta Info / End -->

            </div>
          </div>
          <%
          	}
          %>
          
          <!-- Player / End -->


          <!-- Player -->
         <!--  <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              Player Photo
              <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="assets/images/football/samples/roster-player2.jpg" alt=""></a>
              </figure>
              Player Photo / End

              Player Details
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name">Jake</span>
                    <span class="team-roster__player-last-name">Summer</span>
                  </h3>
                </div>
              </div>
              Player Details / End

              Player Meta Info
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent">RB</div>
                  <div class="team-roster__meta-label">Position</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">56</div>
                  <div class="team-roster__meta-label">Number</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">17.5</div>
                  <div class="team-roster__meta-label">Stat AVG</div>
                </div>
              </div>
              Player Meta Info / End

            </div>
          </div>
          Player / End


          Player
          <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              Player Photo
              <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="assets/images/football/samples/roster-player3.jpg" alt=""></a>
              </figure>
              Player Photo / End

              Player Details
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name">Scott</span>
                    <span class="team-roster__player-last-name">Murdoch</span>
                  </h3>
                </div>
              </div>
              Player Details / End

              Player Meta Info
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent">WR</div>
                  <div class="team-roster__meta-label">Position</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">07</div>
                  <div class="team-roster__meta-label">Number</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">12.6</div>
                  <div class="team-roster__meta-label">Stat AVG</div>
                </div>
              </div>
              Player Meta Info / End

            </div>
          </div>
          Player / End


          Player
          <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              Player Photo
              <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="assets/images/football/samples/roster-player1.jpg" alt=""></a>
              </figure>
              Player Photo / End

              Player Details
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name">Steven</span>
                    <span class="team-roster__player-last-name">Masterson</span>
                  </h3>
                </div>
              </div>
              Player Details / End

              Player Meta Info
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent">QB</div>
                  <div class="team-roster__meta-label">Position</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">28</div>
                  <div class="team-roster__meta-label">Number</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">23.9</div>
                  <div class="team-roster__meta-label">Stat AVG</div>
                </div>
              </div>
              Player Meta Info / End

            </div>
          </div>
          Player / End


          Player
          <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              Player Photo
              <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="assets/images/football/samples/roster-player2.jpg" alt=""></a>
              </figure>
              Player Photo / End

              Player Details
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name">Jake</span>
                    <span class="team-roster__player-last-name">Summer</span>
                  </h3>
                </div>
              </div>
              Player Details / End

              Player Meta Info
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent">RB</div>
                  <div class="team-roster__meta-label">Position</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">56</div>
                  <div class="team-roster__meta-label">Number</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">17.5</div>
                  <div class="team-roster__meta-label">Stat AVG</div>
                </div>
              </div>
              Player Meta Info / End

            </div>
          </div>
          Player / End


          Player
          <div class="team-roster__item card card--no-paddings">
            <div class="card__content">

              Player Photo
              <figure class="team-roster__player-img">
                <a href="_football_player-overview.html"><img src="assets/images/football/samples/roster-player3.jpg" alt=""></a>
              </figure>
              Player Photo / End

              Player Details
              <div class="card__header team-roster__player-details">
                <div class="team-roster__player-info">
                  <h3 class="team-roster__player-name">
                    <span class="team-roster__player-first-name">Scott</span>
                    <span class="team-roster__player-last-name">Murdoch</span>
                  </h3>
                </div>
              </div>
              Player Details / End

              Player Meta Info
              <div class="team-roster__meta">
                <div class="team-roster__meta-item team-roster__meta-item--lg">
                  <div class="team-roster__meta-value team-roster__meta-value--accent">WR</div>
                  <div class="team-roster__meta-label">Position</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">07</div>
                  <div class="team-roster__meta-label">Number</div>
                </div>
                <div class="team-roster__meta-item">
                  <div class="team-roster__meta-value">12.6</div>
                  <div class="team-roster__meta-label">Stat AVG</div>
                </div>
              </div>
              Player Meta Info / End

            </div>
          </div> -->
          <!-- Player / End -->



        </div>
        <!-- Team Roster - Card / End -->

  </div>
  </div>
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

  </script>
  
  </body>
  
<!-- Mirrored from alchemists.dan-fisher.com/football/_football_index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 16:56:44 GMT -->
</html>
  
