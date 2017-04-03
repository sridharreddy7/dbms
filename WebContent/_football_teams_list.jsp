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
        <a href="/Struts2Sample/"><img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="header-mobile__logo-img"></a>
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
              <a href="/Struts2Sample/"><img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="header-logo__img"></a>
            </div>
            <!-- Header Logo / End -->
  
            <!-- Main Navigation -->
            <nav class="main-nav clearfix">
              <ul class="main-nav__list">
                <li class="active"><a href="/Struts2Sample/">Home</a>
                </li>
                <li class=""><a href="#">Matches</a>
                </li>
                <li class=""><a href="/Struts2Sample/venues">Venues</a>
                </li>
                <li class=""><a href="/Struts2Sample/teams">Teams</a>
                </li>
                <li class=""><a href="/Struts2Sample/stats">Stats</a>
                </li>
                <li class=""><a href="#">My Account</a>
                </li>
                <li class=""><a href="#">Managers</a>
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
            <h1 class="page-heading__title">Teams <span class="highlight">Details</span></h1>
          </div>
        </div>
      </div>
    </div>

    <!-- Team Pages Filter -->
        <nav class="content-filter">
          <div class="container">
            <a href="#" class="content-filter__toggle"></a>
            <ul class="content-filter__list">
              <li class="content-filter__item "><a href="/Struts2Sample/teams" class="content-filter__link"><small>All Teams</small>Overview</a></li>
              <li class="content-filter__item content-filter__item--active"><a href="_football_team-roster.html" class="content-filter__link"><small>All Teams</small>List</a></li>
            </ul>
          </div>
        </nav>
        <!-- Team Pages Filter / End -->

<!-- teams_list container
====================================================== -->
<div id="teams_list_container">
     <!-- Content
    ================================================== -->
    <div class="site-content">
      <div class="container">

        <!-- Team Standings -->
        <div class="card card--has-table">
          <div class="card__header">
            <h4>West League 2016</h4>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover table-standings table-standings--full table-standings--full-football">
                <thead>
                  <tr>
                    <th class="team-standings__pos">Pos</th>
                    <th class="team-standings__team">Teams</th>
                    <th class="team-standings__win">W</th>
                    <th class="team-standings__lose">L</th>
                    <th class="team-standings__ties">T</th>
                    <th class="team-standings__pct">PCT</th>
                    <th class="team-standings__home">Home</th>
                    <th class="team-standings__road">Road</th>
                    <th class="team-standings__div">Div</th>
                    <th class="team-standings__lgr">LGR</th>
                    <th class="team-standings__pf">PF</th>
                    <th class="team-standings__pa">PA</th>
                    <th class="team-standings__diff">DIFF</th>
                    <th class="team-standings__strk">STRK</th>
                  </tr>
                </thead>
                <tbody>
                
                  <%
                    JSONArray test = (JSONArray)request.getAttribute("json");
	        		for(int i = 0; i < test.length(); i++)
	        		{
	        		      JSONObject jsonObject = test.getJSONObject(i);
	        		      String pos = jsonObject.get("pos").toString();
	        		      String total = jsonObject.get("total").toString();
	        		      String lost = jsonObject.get("lost").toString();
	        		      String name = jsonObject.get("teamName").toString();
	        		      String won = jsonObject.get("won").toString();

	        		      %>                
                
                  <tr>
                    <td class="team-standings__pos"><%=pos %></td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/pirates_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name"><%=name %></h6>
                          <!-- <span class="team-meta__place">Bebop Institute</span> -->
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win"><%=won %></td>
                    <td class="team-standings__lose"><%=lost %></td>
                    <td class="team-standings__ties"><%=total %></td>
                    <td class="team-standings__pct">.909</td>
                    <td class="team-standings__home">5-1</td>
                    <td class="team-standings__road">5-0</td>
                    <td class="team-standings__div">3-1</td>
                    <td class="team-standings__lgr">6-1</td>
                    <td class="team-standings__pf">316</td>
                    <td class="team-standings__pa">213</td>
                    <td class="team-standings__diff text-success">+103</td>
                    <td class="team-standings__strk">W10</td>
                  </tr>
				<%
					}
	        		%>
<!--                   <tr>
                    <td class="team-standings__pos">02</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/sharks_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Sharks</h6>
                          <span class="team-meta__place">Marine College</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">9</td>
                    <td class="team-standings__lose">2</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.818</td>
                    <td class="team-standings__home">3-2</td>
                    <td class="team-standings__road">6-0</td>
                    <td class="team-standings__div">3-1</td>
                    <td class="team-standings__lgr">7-1</td>
                    <td class="team-standings__pf">293</td>
                    <td class="team-standings__pa">197</td>
                    <td class="team-standings__diff text-success">+96</td>
                    <td class="team-standings__strk">W2</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">03</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/alchemists_b_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">The Alchemists</h6>
                          <span class="team-meta__place">Eric Bros School</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">8</td>
                    <td class="team-standings__lose">3</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.727</td>
                    <td class="team-standings__home">5-1</td>
                    <td class="team-standings__road">3-2</td>
                    <td class="team-standings__div">2-1</td>
                    <td class="team-standings__lgr">5-3</td>
                    <td class="team-standings__pf">231</td>
                    <td class="team-standings__pa">213</td>
                    <td class="team-standings__diff text-success">+18</td>
                    <td class="team-standings__strk">W6</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">04</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/ocean_kings_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Ocean Kings</h6>
                          <span class="team-meta__place">Bay College</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">7</td>
                    <td class="team-standings__lose">3</td>
                    <td class="team-standings__ties">1</td>
                    <td class="team-standings__pct">.682</td>
                    <td class="team-standings__home">5-0</td>
                    <td class="team-standings__road">2-3-1</td>
                    <td class="team-standings__div">1-1-1</td>
                    <td class="team-standings__lgr">3-3-1</td>
                    <td class="team-standings__pf">224</td>
                    <td class="team-standings__pa">187</td>
                    <td class="team-standings__diff text-success">+37</td>
                    <td class="team-standings__strk">L1</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">05</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/red_wings_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Red Wings</h6>
                          <span class="team-meta__place">Icarus College</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">6</td>
                    <td class="team-standings__lose">5</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.545</td>
                    <td class="team-standings__home">4-2</td>
                    <td class="team-standings__road">2-3</td>
                    <td class="team-standings__div">4-0</td>
                    <td class="team-standings__lgr">6-2</td>
                    <td class="team-standings__pf">218</td>
                    <td class="team-standings__pa">201</td>
                    <td class="team-standings__diff text-success">+17</td>
                    <td class="team-standings__strk">W1</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">06</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/lucky_clovers_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Lucky Clovers</h6>
                          <span class="team-meta__place">St. Patrick’s Institute</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">5</td>
                    <td class="team-standings__lose">6</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.455</td>
                    <td class="team-standings__home">3-2</td>
                    <td class="team-standings__road">2-4</td>
                    <td class="team-standings__div">2-1</td>
                    <td class="team-standings__lgr">4-4</td>
                    <td class="team-standings__pf">274</td>
                    <td class="team-standings__pa">289</td>
                    <td class="team-standings__diff text-danger">-15</td>
                    <td class="team-standings__strk">W1</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">07</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/draconians_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Draconians</h6>
                          <span class="team-meta__place">Wyvern College</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">3</td>
                    <td class="team-standings__lose">7</td>
                    <td class="team-standings__ties">1</td>
                    <td class="team-standings__pct">.318</td>
                    <td class="team-standings__home">2-2-1</td>
                    <td class="team-standings__road">1-5</td>
                    <td class="team-standings__div">1-2</td>
                    <td class="team-standings__lgr">3-5</td>
                    <td class="team-standings__pf">213</td>
                    <td class="team-standings__pa">245</td>
                    <td class="team-standings__diff text-danger">-32</td>
                    <td class="team-standings__strk">L3</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">08</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/bloody_wave_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Bloody Wave</h6>
                          <span class="team-meta__place">Atlantic School</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">2</td>
                    <td class="team-standings__lose">9</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.182</td>
                    <td class="team-standings__home">2-3</td>
                    <td class="team-standings__road">0-6</td>
                    <td class="team-standings__div">2-1</td>
                    <td class="team-standings__lgr">2-5</td>
                    <td class="team-standings__pf">178</td>
                    <td class="team-standings__pa">264</td>
                    <td class="team-standings__diff text-danger">-86</td>
                    <td class="team-standings__strk">L3</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">09</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/icarus_wings_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Icarus Wings</h6>
                          <span class="team-meta__place">Waxer College</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">1</td>
                    <td class="team-standings__lose">10</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.091</td>
                    <td class="team-standings__home">1-5</td>
                    <td class="team-standings__road">0-5</td>
                    <td class="team-standings__div">1-3</td>
                    <td class="team-standings__lgr">1-7</td>
                    <td class="team-standings__pf">228</td>
                    <td class="team-standings__pa">344</td>
                    <td class="team-standings__diff text-danger">-116</td>
                    <td class="team-standings__strk">L10</td>
                  </tr>

                  <tr>
                    <td class="team-standings__pos">10</td>
                    <td class="team-standings__team">
                      <div class="team-meta">
                        <figure class="team-meta__logo">
                          <img src="assets/images/samples/logos/aqua_keyes_shield.png" alt="">
                        </figure>
                        <div class="team-meta__info">
                          <h6 class="team-meta__name">Aqua Keyes</h6>
                          <span class="team-meta__place">Pacific Institute</span>
                        </div>
                      </div>
                    </td>
                    <td class="team-standings__win">0</td>
                    <td class="team-standings__lose">12</td>
                    <td class="team-standings__ties">0</td>
                    <td class="team-standings__pct">.000</td>
                    <td class="team-standings__home">0-6</td>
                    <td class="team-standings__road">0-6</td>
                    <td class="team-standings__div">0-4</td>
                    <td class="team-standings__lgr">0-8</td>
                    <td class="team-standings__pf">197</td>
                    <td class="team-standings__pa">352</td>
                    <td class="team-standings__diff text-danger">-155</td>
                    <td class="team-standings__strk">L12</td>
                  </tr> -->

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- Team Standings / End -->

        <!-- Terms Glossary -->
        <div class="card">
          <div class="card__header">
            <h4>Terms Glossary</h4>
          </div>
          <div class="card__content">
            <div class="glossary">
              <div class="glossary__item"><span class="glossary__abbr">W:</span> Wins</div>
              <div class="glossary__item"><span class="glossary__abbr">PCT:</span> Winning Percentage</div>
              <div class="glossary__item"><span class="glossary__abbr">DIV:</span> Division Record</div>
              <div class="glossary__item"><span class="glossary__abbr">PA:</span> Total Points Against</div>
              <div class="glossary__item"><span class="glossary__abbr">L:</span> Loses</div>
              <div class="glossary__item"><span class="glossary__abbr">Home:</span> Home Record</div>
              <div class="glossary__item"><span class="glossary__abbr">LGR:</span> League Record</div>
              <div class="glossary__item"><span class="glossary__abbr">DIFF:</span> Point Differential</div>
              <div class="glossary__item"><span class="glossary__abbr">T:</span> Total</div>
              <div class="glossary__item"><span class="glossary__abbr">ROAD:</span> Road Record</div>
              <div class="glossary__item"><span class="glossary__abbr">PF:</span> Total Points For</div>
              <div class="glossary__item"><span class="glossary__abbr">STRK:</span> Current Streak</div>
            </div>
          </div>
        </div>
        <!-- Terms Glossary / End -->

      </div>
    </div>
</div>
    <!-- Content / End -->
<!--end of all teams list container-->

         <!-- Footer
    ================================================== -->
    <footer id="footer" class="footer">
    
      <!-- Footer Info -->
      <div class="footer-info">
        <div class="container">
    
          <div class="footer-info__inner">
            <!-- Footer Logo -->
            <div class="footer-logo footer-logo--has-txt">
              <a href="/Struts2Sample/">
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
                <div class="footer-copyright"><a href="/Struts2Sample/">IPL</a> 2017 &nbsp; | &nbsp; All Rights Reserved</div>
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
  
