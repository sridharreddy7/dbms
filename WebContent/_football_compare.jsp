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
  <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet" /> -->

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
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />


  <style type="text/css">
    .select2-container {
      width: 100%!important;
    }
  </style>
  
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

    <div class="spacer"></div>
	<form action="compare">
    <div class="row">
        <div class="col-md-6">
         <div class="col-md-12">
<%--           <select class="form-control selectpicker" id="select-country" data-live-search="true">
                  <option data-tokens="china">China</option>
                  <option data-tokens="malayasia">Malayasia</option>
                  <option data-tokens="singapore">Singapore</option>
          </select> --%>
          <select class="select-player1" id="select-player1" name="player1">
            <!-- <option value="AL">Alabama</option>
            <option value="WY">Wyoming</option> -->
      		<%
               JSONArray test = (JSONArray)request.getAttribute("resPlayerList");
      		for(int i = 0; i < test.length(); i++)
      		{
      		      JSONObject jsonObject = test.getJSONObject(i);
      		      String player_id = jsonObject.get("player_id").toString();
      		      String player_name = jsonObject.get("player_name").toString();
               %>
               <option value= "<%=player_id%>"><%=player_name %></option>
               <%} %>
          </select>
        </div>
                <%
        JSONArray player1Array = (JSONArray)request.getAttribute("player1json");
        JSONArray player2Array = (JSONArray)request.getAttribute("player2json");
        
        JSONArray player1StatArray = (JSONArray)request.getAttribute("player1Statjson");
        if(player1StatArray.length()==0){
        	player1StatArray = new JSONArray();
        }
        JSONArray player2StatArray = (JSONArray)request.getAttribute("player2Statjson");
        if(player2StatArray.length()==0){
        	player2StatArray = new JSONArray();
        }
        JSONObject player1Object1 = player1Array.getJSONObject(0);
        JSONObject player1Object2 = player1Array.getJSONObject(1);
        
        JSONObject player2Object1 = player2Array.getJSONObject(0);
        JSONObject player2Object2 = player2Array.getJSONObject(1);
        
        String player1Id = player1Object1.get("playerid").toString();
        String playername1 = player1Object1.get("playername").toString();
        String player1highest = player1Object1.get("highest").toString();
        String player1fours = player1Object1.get("fours").toString();
        String player1Matches = player1Object2.get("matchesplayed").toString();
        String player1Seasons = player1Object2.get("seasons").toString();
        String player1totalruns = player1Object2.get("totalruns").toString();
        String player1Balls = player1Object2.get("ballsbowled").toString();
        String player1Wickets = player1Object2.get("wickets").toString();
        String player1batting = player1Object2.get("battinghand").toString();
        String player1Bowling = player1Object2.get("bowling").toString();
        
        String player2Id = player2Object1.get("playerid").toString();
        String playername2 = player2Object1.get("playername").toString();
        String player2highest = player2Object1.get("highest").toString();
        String player2fours = player2Object1.get("fours").toString();
        String player2Matches = player2Object2.get("matchesplayed").toString();
        String player2Seasons = player2Object2.get("seasons").toString();
        String player2totalruns = player2Object2.get("totalruns").toString();
        String player2Balls = player2Object2.get("ballsbowled").toString();
        String player2Wickets = player2Object2.get("wickets").toString();
        String player2batting = player2Object2.get("battinghand").toString();
        String player2Bowling = player2Object2.get("bowling").toString();
        %>
        <div class="spacer"></div>

<%--         <h1>player 1 <%=playername1%></h1>
        <h1>player 2 <%=playername2%></h1>
        
        <h1>player1fours <%=player1fours%></h1>
        <h1>player2fours <%=player2fours%></h1> --%>
        
        
          <div class="col-md-12">

            <!-- Widget: Featured Player -->
            <aside class="widget card widget--sidebar widget-player widget-player--football">
              <div class="widget__content card__content">
                <div class="widget-player__ribbon">
                  <i class="fa fa-star"></i> Featured Player
                </div>
<!--                 <figure class="widget-player__photo">
                  <img src="assets/images/Photo-missing.png" alt="">
                </figure> -->
                <header class="widget-player__header clearfix">
                  <div class="widget-player__number"><%=player1Id %></div>
                  <h4 class="widget-player__name">
                    <%-- <span class="widget-player__first-name"><%=playername1 %></span> --%>
                    <span class="widget-player__last-name"><%=playername1 %></span>
                  </h4>
                </header>
                <div class="widget-player__content">
                  <div class="widget-player__content-inner">
            
<%--                     <div class="widget-player__stat widget-player__goals">
                      <div class="widget-player__stat-number widget-player__stat-number--lg"><%=player1batting %></div>
                      <h6 class="widget-player__stat-label">POS</h6>
                    </div> --%>
<!--                     <div class="widget-player__stat widget-player__shots">
                      <div class="widget-player__stat-number">98.7</div>
                      <h6 class="widget-player__stat-label">RAT</h6>
                    </div> -->
                    <div class="widget-player__stat widget-player__assists">
                      <div class="widget-player__stat-number"><%=player1highest %></div>
                      <h6 class="widget-player__stat-label">High Score</h6>
                    </div>
                    <div class="widget-player__stat widget-player__games">
                      <div class="widget-player__stat-number"><%=player1Matches %></div>
                      <h6 class="widget-player__stat-label">Total Matches</h6>
                    </div>
                  </div>
            
<!--                   <div class="widget-player__content-alt"> -->
                    <!-- Progress: Shot Accuracy -->
<!--                     <div class="progress-stats"> -->
<%--                       <div class="progress__label">PASS ACC
                        <span class="progress__number">94%</span>
                      </div> --%>
<!--                       <div class="progress progress--battery">
                        <div class="progress__bar progress__bar--secondary progress__bar-width-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                      </div> -->
<!--                     </div> -->
                    <!-- Progress: Shot Accuracy / End -->
            
                    <!-- Progress: Pass Accuracy -->
<%--                     <div class="progress-stats">
                      <div class="progress__label">RECV ACC
                        <span class="progress__number">72%</span>
                      </div>
                      <div class="progress progress--battery">
                        <div class="progress__bar progress__bar--secondary progress__bar-width-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div> --%>
                    <!-- Progress: Pass Accuracy / End -->
<!--                   </div> -->
                </div>
            
              </div>
            </aside>
            <!-- Widget: Featured Player / End -->
            

          </div>
          <div class="col-md-12">

            <!-- Widget: Featured Player - Alternative without Image -->
            <aside class="widget card widget--sidebar widget-player widget-player--alt">
              <div class="widget__title card__header">
                <h4>Player Main Stats</h4>
              </div>
              <div class="widget__content-secondary">
            
                <!-- Player Details -->
                <div class="widget-player__details">
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">High Score</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1highest %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">fours</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1fours %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Matches</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1Matches %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Seasons</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1Seasons %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Total Runs</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1totalruns %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Balls Bowled</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1Balls %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Wickets</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1Wickets %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Batting Style</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1batting %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Bowling Skill</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player1Bowling %></span>
                      </div>
                    </div>
<%--                     <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Longest Pass Play</span>
                          <span class="widget-player__details-desc">In his career</span>
                        </span>
                        <span class="widget-player__details-value">99</span>
                      </div>
                    </div> --%>
                  </div>
            
<%--                   <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Fumbles Lost</span>
                          <span class="widget-player__details-desc">In this league</span>
                        </span>
                        <span class="widget-player__details-value">2</span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Fumbles Lost</span>
                          <span class="widget-player__details-desc">In his career</span>
                        </span>
                        <span class="widget-player__details-value">102</span>
                      </div>
                    </div>
                  </div> --%>
            
                </div>
                <!-- Player Details / End -->
            
              </div>
            <!-- player1highest player1Matches -->
              <div class="widget__content-tertiary">
                <div class="widget__content-inner">
                  <div class="widget-player__stats row">
                    <div class="col-xs-6">
                      <div class="widget-player__stat-item">
                        <div class="widget-player__stat--value"><%=player1highest %></div>
                        <div class="widget-player__stat--label">High Score</div>
                        <!-- <div class="widget-player__stat--desc">In this league</div> -->
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="widget-player__stat-item">
                        <div class="widget-player__stat--value"><%=player1Matches %></div>
                        <div class="widget-player__stat--label">Total Matches</div>
                        <!-- <div class="widget-player__stat--desc">In his career</div> -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
            </aside>
            <!-- Widget: Featured Player - Alternative without Image / End -->
            

          </div>
        </div>
        <div class="col-md-6">
        
          <div class="col-md-12">
<%--           <select class="form-control selectpicker" id="select-country" data-live-search="true">
                  <option data-tokens="china">China</option>
                  <option data-tokens="malayasia">Malayasia</option>
                  <option data-tokens="singapore">Singapore</option>
          </select> --%>
          <select class="select-player2" id="select-player2" name="player2">
            <!-- <option value="AL">Alabama</option>
            <option value="WY">Wyoming</option> -->
                  		<%
               JSONArray test1 = (JSONArray)request.getAttribute("resPlayerList");
      		for(int i = 0; i < test1.length(); i++)
      		{
      		      JSONObject jsonObject = test1.getJSONObject(i);
      		      String player_id = jsonObject.get("player_id").toString();
      		      String player_name = jsonObject.get("player_name").toString();
               %>
               <option value= "<%=player_id%>"><%=player_name %></option>
               <%} %>
          </select>
        </div>
        <div class="spacer"></div>
        <div class="col-md-12">
        
            <!-- Widget: Featured Player -->
            <aside class="widget card widget--sidebar widget-player widget-player--football">
              <div class="widget__content card__content">
                <div class="widget-player__ribbon">
                  <i class="fa fa-star"></i> Featured Player
                </div>
<!--                 <figure class="widget-player__photo">
                  <img src="assets/images/Photo-missing.png" alt="">
                </figure> -->
                <header class="widget-player__header clearfix">
                  <div class="widget-player__number"><%=player2Id %></div>
                  <h4 class="widget-player__name">
                    <%-- <span class="widget-player__first-name"><%=playername1 %></span> --%>
                    <span class="widget-player__last-name"><%=playername2 %></span>
                  </h4>
                </header>
                <div class="widget-player__content">
                  <div class="widget-player__content-inner">
            
<%--                     <div class="widget-player__stat widget-player__goals">
                      <div class="widget-player__stat-number widget-player__stat-number--lg"><%=player1batting %></div>
                      <h6 class="widget-player__stat-label">POS</h6>
                    </div> --%>
<!--                     <div class="widget-player__stat widget-player__shots">
                      <div class="widget-player__stat-number">98.7</div>
                      <h6 class="widget-player__stat-label">RAT</h6>
                    </div> -->
                    <div class="widget-player__stat widget-player__assists">
                      <div class="widget-player__stat-number"><%=player2highest %></div>
                      <h6 class="widget-player__stat-label">High Score</h6>
                    </div>
                    <div class="widget-player__stat widget-player__games">
                      <div class="widget-player__stat-number"><%=player2Matches %></div>
                      <h6 class="widget-player__stat-label">Total Matches</h6>
                    </div>
                  </div>
            
<!--                   <div class="widget-player__content-alt"> -->
                    <!-- Progress: Shot Accuracy -->
<!--                     <div class="progress-stats"> -->
<%--                       <div class="progress__label">PASS ACC
                        <span class="progress__number">94%</span>
                      </div> --%>
<!--                       <div class="progress progress--battery">
                        <div class="progress__bar progress__bar--secondary progress__bar-width-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                      </div> -->
<!--                     </div> -->
                    <!-- Progress: Shot Accuracy / End -->
            
                    <!-- Progress: Pass Accuracy -->
<%--                     <div class="progress-stats">
                      <div class="progress__label">RECV ACC
                        <span class="progress__number">72%</span>
                      </div>
                      <div class="progress progress--battery">
                        <div class="progress__bar progress__bar--secondary progress__bar-width-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div> --%>
                    <!-- Progress: Pass Accuracy / End -->
<!--                   </div> -->
                </div>
            
              </div>
            </aside>
            <!-- Widget: Featured Player / End -->
            

          </div>
          <div class="col-md-12">

            <!-- Widget: Featured Player - Alternative without Image -->
            <aside class="widget card widget--sidebar widget-player widget-player--alt">
              <div class="widget__title card__header">
                <h4>Player Main Stats</h4>
              </div>
              <div class="widget__content-secondary">
            
                <!-- Player Details -->
                <div class="widget-player__details">
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">High Score</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2highest %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">fours</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2fours %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Matches</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2Matches %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Seasons</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2Seasons %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Total Runs</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2totalruns %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Balls Bowled</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2Balls %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Wickets</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2Wickets %></span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Batting Style</span>
                          <%-- <span class="widget-player__details-desc">In his career</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2batting %></span>
                      </div>
                    </div>
                  </div>
            
                  <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Bowling Skill</span>
                          <%-- <span class="widget-player__details-desc">In this league</span> --%>
                        </span>
                        <span class="widget-player__details-value"><%=player2Bowling %></span>
                      </div>
                    </div>
<%--                     <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Longest Pass Play</span>
                          <span class="widget-player__details-desc">In his career</span>
                        </span>
                        <span class="widget-player__details-value">99</span>
                      </div>
                    </div> --%>
                  </div>
            
<%--                   <div class="widget-player__details-row">
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Fumbles Lost</span>
                          <span class="widget-player__details-desc">In this league</span>
                        </span>
                        <span class="widget-player__details-value">2</span>
                      </div>
                    </div>
                    <div class="widget-player__details__item">
                      <div class="widget-player__details-desc-wrapper">
                        <span class="widget-player__details-holder">
                          <span class="widget-player__details-label">Fumbles Lost</span>
                          <span class="widget-player__details-desc">In his career</span>
                        </span>
                        <span class="widget-player__details-value">102</span>
                      </div>
                    </div>
                  </div> --%>
            
                </div>
                <!-- Player Details / End -->
            
              </div>
            <!-- player1highest player1Matches -->
              <div class="widget__content-tertiary">
                <div class="widget__content-inner">
                  <div class="widget-player__stats row">
                    <div class="col-xs-6">
                      <div class="widget-player__stat-item">
                        <div class="widget-player__stat--value"><%=player2highest %></div>
                        <div class="widget-player__stat--label">High Score</div>
                        <!-- <div class="widget-player__stat--desc">In this league</div> -->
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="widget-player__stat-item">
                        <div class="widget-player__stat--value"><%=player2Matches %></div>
                        <div class="widget-player__stat--label">Total Matches</div>
                        <!-- <div class="widget-player__stat--desc">In his career</div> -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
            </aside>
            <!-- Widget: Featured Player - Alternative without Image / End -->
            

          </div>
        </div>
    </div>


    <!-- graph card -->
    <div class="card">
          <div class="card__header card__header--has-legend">
            <h4>Yearly Points History</h4>
            <div id="gamesPoinstsLegendFootball" class="chart-legend"><ul class="0-legend"><li><span style="background-color:#3ffeca"></span>2016</li><li><span style="background-color:#9e69ee"></span>2015</li></ul></div>
          </div>
          <div class="card__content"><iframe class="chartjs-hidden-iframe" tabindex="-1" style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
            <canvas id="points-history-football" class="points-history-chart" height="351" width="1112" style="display: block; height: 281px; width: 890px;"></canvas>
          </div>
        </div>
    <!-- <input type="submit" style="" value="submit"/> -->
    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">submit</button>
</form>
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
  <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script> --%>
  <!-- Template JS -->
  <script src="assets/js/init.js"></script>
  <script src="assets/js/custom.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
  
  <script type="text/javascript">
    $(document).ready(function() {
      $(".select-player1").select2();
      $(".select-player2").select2();

       $player1_val = $(".select-player1").select2();
       $player2_val = $(".select-player2").select2();

        $player2_val.on("change", function () { 
          console.log("in select 1");
          console.log($player1_val.val() );
          //$example.val("CA").trigger("change");

/*           $.ajax({
            async: true,
            method: "GET",
            url: "/Struts2Sample/graph?player1="+$player1_val.val()+"&player2="+$player2_val.val(),
            /* data: [$player1_val.val(),$player2_val.val()], */
			/* dataType: "json",
            success: function(result){
            	console.log(JSON.stringify(result));
            } 
          });  */
        });

      });
  </script>

  <script type="text/javascript">
  var j1arr = <%=player1StatArray%>;
	var j2arr = <%=player2StatArray%>;
	if(j1arr=="null"){
		console.log("empty");
	}
	else{
/* 		console.log(j1arr[0].runs_in_season); */
	}
/* 	console.log(j2arr[0].runs_in_season); */
 	var p1=[];
	var p2 = [];
	for(var i in j1arr){
		p1.push(j1arr[i].runs_in_season);
	}
	
	for(var i in j2arr){
		p2.push(j2arr[i].runs_in_season);
	}
	callThis();

	/* console.log(JSON.parse(j1arr));
	console.log(JSON.parse(j2arr)); */
	

/*     	for(i=2008;i<2017;i++){
		if(j1arr[i-2008].season_year==i){
			p1.push(j1arr[i-2008].runs_in_season);
		} else {
			p1.push(0);
		}
	} */
	
	  
	
  function callThis(){
		console.log(JSON.stringify(p1)); 
		 console.log(JSON.stringify(p2));
  var ctx=$('#points-history-football');
  data_g= {
          type:'line', data: {
              labels:["2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"], datasets:[ {
                  label: 'Player1', fill: false, lineTension: 0, borderWidth: 4, backgroundColor: "#3ffeca", borderColor: "#3ffeca", borderCapStyle: 'butt', borderDashOffset: 0.0, borderJoinStyle: 'bevel', pointRadius: 5, pointBorderWidth: 5, pointBackgroundColor: "#fff", pointHoverRadius: 5, pointHoverBackgroundColor: "#fff", pointHoverBorderColor: "#3ffeca", pointHoverBorderWidth: 5, pointHitRadius: 10, 
                  data: p1, spanGaps: false,
              }
              , {
                  label: 'player2', fill: false, lineTension: 0, borderWidth: 4, backgroundColor: "#9e69ee", borderColor: "#9e69ee", borderCapStyle: 'butt', borderDashOffset: 0.0, borderJoinStyle: 'bevel', pointRadius: 5, pointBorderWidth: 5, pointBackgroundColor: "#fff", pointHoverRadius: 5, pointHoverBackgroundColor: "#fff", pointHoverBorderColor: "#9e69ee", pointHoverBorderWidth: 5, pointHitRadius: 10, 
                  data: p2, spanGaps: false,
              }
              ]
          }
          , options: {
              legend: {
                  display:false, labels: {
                      boxWidth: 8, fontSize: 9, fontColor: '#31404b', fontFamily: 'Montserrat, sans-serif', padding: 20,
                  }
              }
              , tooltips: {
                  backgroundColor: "rgba(50,49,80,0.8)", titleFontSize: 0, titleSpacing: 0, titleMarginBottom: 0, bodyFontFamily: 'Montserrat, sans-serif', bodyFontSize: 9, bodySpacing: 0, cornerRadius: 2, xPadding: 10, displayColors: false,
              }
              , scales: {
                  xAxes:[ {
                      gridLines: {
                          color: "#3c3b5b",
                      }
                      , ticks: {
                          fontColor: '#9e9caa', fontFamily: 'Montserrat, sans-serif', fontSize: 10,
                      }
                      ,
                  }
                  ], yAxes:[ {
                      gridLines: {
                          color: "#3c3b5b",
                      }
                      , ticks: {
                          beginAtZero: true, fontColor: '#9e9caa', fontFamily: 'Montserrat, sans-serif', fontSize: 10, padding: 20
                      }
                  }
                  ]
              }
          }
          ,
      }
      ;
  var gamesHistory=new Chart(ctx, data_g);
  document.getElementById('gamesPoinstsLegendFootball').innerHTML=gamesHistory.generateLegend();
  }
  </script>
  
  </body>
  
<!-- Mirrored from alchemists.dan-fisher.com/football/_football_index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 16:56:44 GMT -->
</html>
  
