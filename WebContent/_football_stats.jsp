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


        <!-- Page Heading
    ================================================== -->
    <div class="page-heading">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <h1 class="page-heading__title">IPL <span class="highlight">Statistics</span></h1>
          </div>
        </div>
      </div>
    </div>
        

<!-- Batting stats
===========================================-->

<!-- Content
    ================================================== -->
    <div class="site-content">
      <div class="container">

        <!-- Contact Area -->
        <div class="card">
          <header class="card__header">
            <h4>Statistics</h4>
          </header>
          <div class="card__content">

            <div class="row">
              <div class="col-md-12">

                <!-- Contact Form -->
                <form action="stats" class="contact-form">
                  <div class="row">
                    <div class="col-md-12">
                      <h6>Stats related to</h6>
                      <div class="form-group">
<%--                         <label class="radio radio-inline">
                          <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked=""> Batting
                          <span class="radio-indicator"></span>
                        </label>
                        <label class="radio radio-inline">
                          <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Bowling
                          <span class="radio-indicator"></span>
                        </label> --%>
	<%--                         <label class="radio radio-inline">
	                          <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Feilding
	                          <span class="radio-indicator"></span>
	                        </label>
	                        <label class="radio radio-inline disabled">
	                          <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""> Disabled
	                          <span class="radio-indicator"></span>
	                        </label> --%>
	                  <select class="form-control selectpicker" name="batbowl" id="select-country" data-live-search="true">
			                  <option  value="1">batting</option>
			                  <option value="2">bowling</option>

			          </select>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label" for="select-default">Select Team</label>
<%--                         <select name="select-default" id="select-default" class="form-control">
                          <option value="Canada">Canada</option>
                          <option value="Italy">Italy</option>
                          <option value="Spain">Spain</option>
                          <option value="Greece">Greece</option>
                        </select> --%>
                      <select class="form-control selectpicker" name="team1" id="select-country" data-live-search="true">
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
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label" for="select-default">Select Opponent</label>
<%--                         <select name="select-default" id="select-default" class="form-control">
                          <option value="Canada">Canada</option>
                          <option value="Italy">Italy</option>
                          <option value="Spain">Spain</option>
                          <option value="Greece">Greece</option>
                        </select> --%>
                       <select class="form-control selectpicker" name="team2" id="select-country" data-live-search="true">
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
                    </div>
<%--                     <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label" for="select-default">Host Country</label>
                        <select name="select-default" id="select-default" class="form-control">
                          <option value="Canada">Canada</option>
                          <option value="Italy">Italy</option>
                          <option value="Spain">Spain</option>
                          <option value="Greece">Greece</option>
                        </select>
                      </div>
                    </div> --%>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label" for="select-default">Venue</label>
			          <select class="form-control selectpicker" name="venue" id="select-country" data-live-search="true">
<!-- 			                  <option  value="1">Kolkata Knight Riders</option>
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
			                  <option  value="13">Gujarat Lions</option> -->
			                  <%
			                  JSONArray test = (JSONArray)request.getAttribute("resJson");
				        		for(int i = 0; i < test.length(); i++)
				        		{
				        		      JSONObject jsonObject = test.getJSONObject(i);
				        		      String venue_id = jsonObject.get("venue_id").toString();
				        		      String venue_name = jsonObject.get("venue_name").toString();
			                  %>
			                  <option value= "<%=venue_id%>"><%=venue_name %></option>
			                  <%} %>
			          </select>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label" for="select-default">Select Season</label>
<%--                         <select name="select-default" id="select-default" class="form-control">
                          <option value="Canada">Canada</option>
                          <option value="Italy">Italy</option>
                          <option value="Spain">Spain</option>
                          <option value="Greece">Greece</option>
                        </select> --%>
			          <select class="form-control selectpicker" name="season" id="select-country" data-live-search="true">
			                  <option  value="1">2008</option>
			                  <option value="2">2009</option>
			                  <option  value="3">2010</option>
			                  <option  value="4">2011</option>
			                  <option  value="5">2012</option>
			                  <option  value="6">2013</option>
			                  <option  value="7">2014</option>
			                  <option  value="8">2015</option>
			                  <option  value="9">2016</option>
			          </select>                        
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                      <h6>Match Result</h6>
<%--                         <label class="checkbox checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox1" value="option1" checked=""> Checked
                          <span class="checkbox-indicator"></span>
                        </label>
                        <label class="checkbox checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox2" value="option2"> Unchecked
                          <span class="checkbox-indicator"></span>
                        </label>
                        <label class="checkbox checkbox-inline disabled">
                          <input type="checkbox" id="inlineCheckbox3" value="option3" disabled=""> Disabled
                          <span class="checkbox-indicator"></span>
                        </label> --%>
                     <select class="form-control selectpicker" name="winlose" id="select-country" data-live-search="true">
			                  <option  value="1">win</option>
			                  <option value="2">lose</option>
			          </select>  
                      </div>
                    </div>
<%--                     <div class="col-md-12">
                      <h6>View Format</h6>
                      <div class="form-group">
                        <label class="radio radio-inline">
                          <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked=""> Selected
                          <span class="radio-indicator"></span>
                        </label>
                        <label class="radio radio-inline">
                          <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Unselected
                          <span class="radio-indicator"></span>
                        </label>
                        <label class="radio radio-inline disabled">
                          <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""> Disabled
                          <span class="radio-indicator"></span>
                        </label>
                      </div>
                    </div> --%>
                  <div class="form-group form-group--submit">
                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Get Stats</button>
                  </div>
                </form>
                <!-- Contact Form / End -->
              </div>
            </div>

          </div>
        </div>
        <!-- Contact Area / End -->

<!--         <div class="card card--has-table " style="margin-top: 20px;">
          <div class="card__header">
            <h4>All Stats</h4>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover player-season-avg">
                <thead>
                  <tr>
                    <th class="player-season-avg__season">Season/League</th>
                    <th class="player-season-avg__stat">GP</th>
                    <th class="player-season-avg__stat">CMP</th>
                    <th class="player-season-avg__stat">ATT</th>
                    <th class="player-season-avg__stat">CMP%</th>
                    <th class="player-season-avg__stat">YDS</th>
                    <th class="player-season-avg__stat">AVG</th>
                    <th class="player-season-avg__stat">TD</th>
                    <th class="player-season-avg__stat">LNG</th>
                    <th class="player-season-avg__stat">INT</th>
                    <th class="player-season-avg__stat">FUM</th>
                    <th class="player-season-avg__stat">QBR</th>
                    <th class="player-season-avg__stat">RAT</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="player-season-avg__season">West League 2016</td>
                    <td class="player-season-avg__stat">7</td>
                    <td class="player-season-avg__stat">175</td>
                    <td class="player-season-avg__stat">256</td>
                    <td class="player-season-avg__stat">68.4</td>
                    <td class="player-season-avg__stat">2201</td>
                    <td class="player-season-avg__stat">8.6</td>
                    <td class="player-season-avg__stat">18</td>
                    <td class="player-season-avg__stat">63</td>
                    <td class="player-season-avg__stat">1</td>
                    <td class="player-season-avg__stat">1</td>
                    <td class="player-season-avg__stat">85.6</td>
                    <td class="player-season-avg__stat">116.7</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div> -->
      </div>
    </div>

    <!-- Content / End -->
<!-- End of batting stats =================================-->

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
  function getAllTeams(){
    $.ajax({
        url: "demo_test.txt",
        success: function(result){
          $("#div1").html(result);
      }
    });
  }
  function getAllCountries(){
    
  }
  function getAllVenues(){
    
  }
  </script>
  
  </body>
  
<!-- Mirrored from alchemists.dan-fisher.com/football/_football_index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 16:56:44 GMT -->
</html>
  
