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

        

        <div class="row">
          <!-- Team Roster: Table -->
          <div class="col-md-12">
            <div class="card card--has-table">
              <div class="card__header">
                <h4>Players List</h4>
              </div>
              <div class="card__content">
                <div class="table-responsive">
                  <table class="table table--lg team-roster-table">
                    <thead>
                      <tr>
                        <th class="team-roster-table__number">NBR</th>
                        <th class="team-roster-table__name">Player Name</th>
                        <th class="team-roster-table__position">Batting</th>
                        <th class="team-roster-table__age">Age</th>
                        <th class="team-roster-table__height">Bowling</th>
                        <!-- <th class="team-roster-table__weight">Weight</th> -->
                        <th class="team-roster-table__status">Status</th>
                        <!-- <th class="team-roster-table__college">College</th> -->
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <!-- <th colspan="8" class="team-roster-table__header">Offense</th> -->
                      </tr>
                      <%
                      JSONArray test = (JSONArray)request.getAttribute("json");
  	        			for(int i = 0; i < test.length(); i++)
  	        			{
  	        		      JSONObject jsonObject = test.getJSONObject(i);
  	        		      String player_id = jsonObject.get("player_id").toString();
  	        		      String player_name = jsonObject.get("player_name").toString();
  	        		      String dob = jsonObject.get("dob").toString();
  	        		      String batting = jsonObject.get("batting").toString();
  	        		      String bowling = jsonObject.get("bowling").toString();
  	        		    String age = jsonObject.get("age").toString();
/*   	        		      String name = jsonObject.get("teamName").toString();
  	        		      String won = jsonObject.get("won").toString();
  	        		      String year = request.getParameter("year"); */
                      
                      %>
                      
                      
                      
                      <tr>
                        <td class="team-roster-table__number"><%=player_id %></td>
                        <td class="team-roster-table__name"><%=player_name %></td>
                        <td class="team-roster-table__position"><%=batting %></td>
                        <td class="team-roster-table__age"><%=age %></td>
                        <td class="team-roster-table__height"><%=bowling %></td>
                        <!-- <td class="team-roster-table__weight">225 lbs</td> -->
                        <td class="team-roster-table__status text-success">Active</td>
                        <!-- <td class="team-roster-table__college">Marinaton State</td> -->
                      </tr>
                      <%
  	        			}
                      %>
<!--                       <tr>
                        <td class="team-roster-table__number">07</td>
                        <td class="team-roster-table__name">Scott Murdoch</td>
                        <td class="team-roster-table__position">Wide Receiver</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">6'4"</td>
                        <td class="team-roster-table__weight">235 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">10</td>
                        <td class="team-roster-table__name">Nick Rodgers</td>
                        <td class="team-roster-table__position">Wide Receiver</td>
                        <td class="team-roster-table__age">19</td>
                        <td class="team-roster-table__height">6'2"</td>
                        <td class="team-roster-table__weight">225 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">29</td>
                        <td class="team-roster-table__name">Mark Stevens</td>
                        <td class="team-roster-table__position">Wide Receiver</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'0"</td>
                        <td class="team-roster-table__weight">250 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">56</td>
                        <td class="team-roster-table__name">Jake Summer</td>
                        <td class="team-roster-table__position">Running Back</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">5'11"</td>
                        <td class="team-roster-table__weight">220 lbs</td>
                        <td class="team-roster-table__status text-danger">Injured</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">21</td>
                        <td class="team-roster-table__name">Michael Maximoff</td>
                        <td class="team-roster-table__position">Left Tackle</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'0"</td>
                        <td class="team-roster-table__weight">195 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">19</td>
                        <td class="team-roster-table__name">Chris Greyson</td>
                        <td class="team-roster-table__position">Left Guard</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">5'8"</td>
                        <td class="team-roster-table__weight">195 lbs</td>
                        <td class="team-roster-table__status text-danger">Suspended</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">22</td>
                        <td class="team-roster-table__name">Dave Marinara</td>
                        <td class="team-roster-table__position">Center</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">5'10"</td>
                        <td class="team-roster-table__weight">205 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">74</td>
                        <td class="team-roster-table__name">Nicholas Grissom</td>
                        <td class="team-roster-table__position">Right Guard</td>
                        <td class="team-roster-table__age">19</td>
                        <td class="team-roster-table__height">6'3"</td>
                        <td class="team-roster-table__weight">255 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">44</td>
                        <td class="team-roster-table__name">Luke Scarred</td>
                        <td class="team-roster-table__position">Tight End</td>
                        <td class="team-roster-table__age">19</td>
                        <td class="team-roster-table__height">5'11"</td>
                        <td class="team-roster-table__weight">190 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">31</td>
                        <td class="team-roster-table__name">Mark Taylor</td>
                        <td class="team-roster-table__position">Running Back</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'2"</td>
                        <td class="team-roster-table__weight">200 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr> -->
  <!--                     <tr>
                        <th colspan="8" class="team-roster-table__header">Defense</th>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">54</td>
                        <td class="team-roster-table__name">Christopher Dax</td>
                        <td class="team-roster-table__position">Left Defensive End</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'4"</td>
                        <td class="team-roster-table__weight">225 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">68</td>
                        <td class="team-roster-table__name">Malcolm Rowe</td>
                        <td class="team-roster-table__position">Defensive Tackle</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">6'4"</td>
                        <td class="team-roster-table__weight">235 lbs</td>
                        <td class="team-roster-table__status text-danger">Injured</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">91</td>
                        <td class="team-roster-table__name">Alex Summers</td>
                        <td class="team-roster-table__position">Defensive Tackle</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'2"</td>
                        <td class="team-roster-table__weight">225 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">44</td>
                        <td class="team-roster-table__name">Charly Howlett</td>
                        <td class="team-roster-table__position">Right Defensive End</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'0"</td>
                        <td class="team-roster-table__weight">250 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">62</td>
                        <td class="team-roster-table__name">Remy Lebeau</td>
                        <td class="team-roster-table__position">Linebacker</td>
                        <td class="team-roster-table__age">21</td>
                        <td class="team-roster-table__height">5'11"</td>
                        <td class="team-roster-table__weight">220 lbs</td>
                        <td class="team-roster-table__status text-danger">Suspended</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">95</td>
                        <td class="team-roster-table__name">Eric McTaggert</td>
                        <td class="team-roster-table__position">Linebacker</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'0"</td>
                        <td class="team-roster-table__weight">195 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">59</td>
                        <td class="team-roster-table__name">Patrick McCoy</td>
                        <td class="team-roster-table__position">Right Cornerback</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">5'8"</td>
                        <td class="team-roster-table__weight">195 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">86</td>
                        <td class="team-roster-table__name">Brandon J. Stark</td>
                        <td class="team-roster-table__position">Left Cornerback</td>
                        <td class="team-roster-table__age">21</td>
                        <td class="team-roster-table__height">5'10"</td>
                        <td class="team-roster-table__weight">205 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">27</td>
                        <td class="team-roster-table__name">Vincent Lothbrok</td>
                        <td class="team-roster-table__position">Safety</td>
                        <td class="team-roster-table__age">19</td>
                        <td class="team-roster-table__height">6'3"</td>
                        <td class="team-roster-table__weight">255 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <th colspan="8" class="team-roster-table__header">Special Teams</th>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">03</td>
                        <td class="team-roster-table__name">Patrick Lensher</td>
                        <td class="team-roster-table__position">Placekicker</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'4"</td>
                        <td class="team-roster-table__weight">225 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Marination State</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">62</td>
                        <td class="team-roster-table__name">Ian Stewar</td>
                        <td class="team-roster-table__position">Punter</td>
                        <td class="team-roster-table__age">20</td>
                        <td class="team-roster-table__height">6'4"</td>
                        <td class="team-roster-table__weight">235 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">75</td>
                        <td class="team-roster-table__name">Robert Payne</td>
                        <td class="team-roster-table__position">Long Snapper</td>
                        <td class="team-roster-table__age">18</td>
                        <td class="team-roster-table__height">6'2"</td>
                        <td class="team-roster-table__weight">225 lbs</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">California College</td>
                      </tr>
                      <tr>
                        <th colspan="8" class="team-roster-table__header">Coach</th>
                      </tr>
                      <tr>
                        <td class="team-roster-table__number">CH</td>
                        <td class="team-roster-table__name">Tony Rodgers</td>
                        <td class="team-roster-table__position">Team Coach</td>
                        <td class="team-roster-table__age">48</td>
                        <td class="team-roster-table__height">-</td>
                        <td class="team-roster-table__weight">-</td>
                        <td class="team-roster-table__status text-success">Active</td>
                        <td class="team-roster-table__college">Shelldow Institute</td>
                      </tr> -->
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- Team Roster: Table / End -->
        </div>
    </div>
  </div>
</div>
<!-- end of team_list container-->

 <!-- Footer
    ================================================== -->
    <footer id="footer" class="footer">
    
      <!-- Footer Info -->
      <div class="footer-info">
        <div class="container">
    
          <div class="footer-info__inner">
            <!-- Footer Logo -->
            <div class="footer-logo footer-logo--has-txt">
              <a href="_football_index.jsp">
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
                <div class="footer-copyright"><a href="_football_index.jsp">IPL</a> 2017 &nbsp; | &nbsp; All Rights Reserved</div>
              </div>
              <div class="col-md-8">
                <ul class="footer-nav footer-nav--right footer-nav--sm">
                  <li class="footer-nav__item"><a href="/Struts2Sample/">Home</a></li>
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
  
