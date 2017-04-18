<%@page import="org.json.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.http.Cookie"%>

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

 <!-- Content
    ================================================== -->
    <div class="site-content">
      <div class="container">

        <!-- Team Latest Results -->
        <div class="card card--has-table">
          <div class="card__header card__header--has-btn">
            <h4>Latest Results</h4>
            <!-- Result Filter -->
<%--             <ul class="team-result-filter">
              <li class="team-result-filter__item">
                <select class="form-control input-xs">
                  <option>West League 2016</option>
                  <option>West League 2015</option>
                  <option>West League 2014</option>
                </select>
              </li>
              <li class="team-result-filter__item">
                <select class="form-control input-xs">
                  <option>Game Date</option>
                  <option>December 2016</option>
                  <option>November 2016</option>
                  <option>October 2016</option>
                  <option>September 2016</option>
                  <option>August 2016</option>
                  <option>July 2016</option>
                  <option>June 2016</option>
                  <option>May 2016</option>
                  <option>April 2016</option>
                  <option>March 2016</option>
                  <option>February 2016</option>
                  <option>January 2016</option>
                </select>
              </li>
              <li class="team-result-filter__item">
                <select class="form-control input-xs">
                  <option>Ascending</option>
                  <option>Descending</option>
                </select>
              </li>
              <li class="team-result-filter__item">
                <button type="submit" class="btn btn-default btn-xs card-header__button">Filter Latest Results</button>
              </li>
            </ul> --%>
            <!-- Result Filter / End -->
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover team-result">
                <thead>
                  <tr>
                    <th class="team-result__date">Date</th>
                    <th class="team-result__vs">Team 1</th>
                    <th class="team-result__vs">Team 2</th>
                    <th class="team-result__score">Venue</th>
                    <th class="team-result__status">Season</th>
                    <th class="team-result__pass">Winner</th>
<!--                     <th class="team-result__rush">Hi Rushing</th>
                    <th class="team-result__receiving">Hi Receiving</th> -->
                  </tr>
                </thead>
                <tbody>
                <%
                JSONArray test = (JSONArray)request.getAttribute("resJson");
	        		for(int i = 0; i < test.length(); i++)
	        		{
	        		      JSONObject jsonObject = test.getJSONObject(i);
	        		      String team_1 = jsonObject.get("team_1").toString();
	        		      String team_2 = jsonObject.get("team_2").toString();
	        		      String match_date = jsonObject.get("match_date").toString();
	        		      String venue_name = jsonObject.get("venue_name").toString();
	        		      String season_year = jsonObject.get("season_year").toString();
	        		      String winner =jsonObject.get("winner").toString();
	        		      
                %>
                  <tr>
                    <td class="team-result__date"><%=match_date %></td>
                    <td class="team-result__vs">
                      <div class="team-meta">
                        <!-- <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/lucky_clovers_shield.png" alt="">
                        </figure> -->
                        <div class="team-meta__info">
                          <h6 class="team-meta__name"><%=team_1 %></h6>
                          <%-- <span class="team-meta__place">St. Patrickâs Institute</span> --%>
                        </div>
                      </div>
                    </td>
                     <td class="team-result__vs">
                      <div class="team-meta">
                        <!-- <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/lucky_clovers_shield.png" alt="">
                        </figure> -->
                        <div class="team-meta__info">
                          <h6 class="team-meta__name"><%=team_2 %></h6>
                          <%-- <span class="team-meta__place">St. Patrickâs Institute</span> --%>
                        </div>
                      </div>
                    </td>
                    <td class="team-result__score"><%=venue_name %></td>
                    <td class="team-result__status"><%=season_year %></td>
                    <td class="team-result__pass"><%=winner %></td>
                    <!-- <td class="team-result__rush">Jhonathan Reese 70 (CLO)</td> -->
                    <!-- <td class="team-result__receiving">Mark Thompson 66 (CLO)</td> -->
                  </tr>
                  <%} %>

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- Team Latest Results / End -->

      </div>
    </div>

    <!-- Content / End -->

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
  
