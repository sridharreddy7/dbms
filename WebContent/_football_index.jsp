<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zxx">
<!-- Commit test -->
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
        <a href="_football_index.jsp"><img src="assets/images/cricket/logos/rsz_indian_premier_leaguesvg.png" alt="Alchemists" class="header-mobile__logo-img"></a>
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
            <li class="info-block_item info-block_item--contact-primary">
              <svg role="img" class="df-icon df-icon--football-helmet">
                <use xlink:href="assets/images/football/icons-football.svg#football-helmet"/>
              </svg>
              <h6 class="info-block__heading">BCCI.TV</h6>
              <a class="info-block__link" href="http://www.iplt20.com">IPLT20.com</a>
            </li>
            <li class="info-block_item info-block_item--contact-secondary">
              
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
                <li class=""><a href="#">
	               	<%
	               	String email = (String)request.getAttribute("email"); 
	               	%> 
	               	<%=email %>
               	</a>
                </li>
                <li class="""><a href="/Struts2Sample/logout">Logout</a>
              </ul>
            </nav>
            <!-- Main Navigation / End -->
  
          </div>
        </div>
      </div>
      <!-- Header Primary / End -->
  
    </header>
    <!-- Header / End -->
  

  <!-- Featured Posts Slider
  ================================================== -->
  <div class="slick posts posts-slider posts--slider-top-news">
  
    <!-- Slide #1 -->
    <div class="slick__slide">
  
      <div class="posts__item posts__item-has-img posts__item--category-1">
  
        <!-- Main Image -->
        <figure class="posts__thumb">
          <img src="assets/images/cricket/samples/virat.png" alt="" class="duotone-img" data-gradient-map="#282840, #f92552">
        </figure>
        <!-- Main Image / End -->
  
        <!-- Player Image -->
        <div class="posts__img-player hidden">
          <img src="assets/images/football/samples/hero-unit-player.png" alt="Hero Unit Image">
        </div>
        <!-- Player Image / End -->
  
        <!-- Post Content -->
        <div class="posts__inner">
          <div class="posts__cat">
            <span class="label posts__cat-label">Virat Kohli</span>
          </div>
          <h3 class="posts__title"><a href="#">Crciekt is important thing to me, <span class="posts__title-higlight">So the rest of it</span> pales in comparision</a></h3>
          <footer class="posts__footer">
            <div class="post-author">
              <figure class="post-author__avatar">
                <img src="assets/images/football/samples/avatar-12-xs.jpg" alt="Post Author Avatar">
              </figure>
              <time datetime="2017-08-23" class="posts__date">August 23rd, 2017</time>
            </div>
            <ul class="post__meta meta">
              <li class="meta__item meta__item--views">2369</li>
              <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
              <li class="meta__item meta__item--comments"><a href="#">18</a></li>
            </ul>
          </footer>
        </div>
        <!-- Post Content / End -->
  
      </div>
  
    </div>
    <!-- Slide #1 / End -->
  
  
    <!-- Slide #2 -->
    <div class="slick__slide">
  
      <div class="posts__item posts__item--category-2">
  
        <!-- Main Image -->
        <figure class="posts__thumb">
          <img src="assets/images/cricket/samples/rps.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #9e69ee">
        </figure>
        <!-- Main Image / End -->
  
        <!-- Post Content -->
        <div class="posts__inner" style="">
          <div class="posts__cat">
            <span class="label posts__cat-label">MS Dhoni</span>
          </div>
          <h3 class="posts__title"><a href="#">You don't play for the crowd <span class="posts__title-higlight">You play for the country</span></a></h3>
          <footer class="posts__footer">
            <div class="post-author">
              <figure class="post-author__avatar">
                <img src="assets/images/football/samples/avatar-12-xs.jpg" alt="Post Author Avatar">
              </figure>
              <time datetime="2017-09-05" class="posts__date">August 5th, 2017</time>
            </div>
            <ul class="post__meta meta">
              <li class="meta__item meta__item--views">2369</li>
              <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
              <li class="meta__item meta__item--comments"><a href="#">18</a></li>
            </ul>
          </footer>
        </div>
        <!-- Post Content / End -->
  
      </div>
  
    </div>
    <!-- Slide #2 / End -->
  
  
    <!-- Slide #3 -->
    <div class="slick__slide">
  
      <div class="posts__item posts__item--category-1">
  
        <!-- Main Image -->
        <figure class="posts__thumb">
          <img src="assets/images/cricket/samples/sachin.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #f92552">
        </figure>
        <!-- Main Image / End -->
  
        <!-- Post Content -->
        <div class="posts__inner">
          <div class="posts__cat">
            <span class="label posts__cat-label">Sachin Tendulkar</span>
          </div>
          <h3 class="posts__title"><a href="#">Enjoy your game and <span class="posts__title-higlight">chase your dream </span> because dreams do come true.</a></h3>
          <footer class="posts__footer">
            <div class="post-author">
              <figure class="post-author__avatar">
                <img src="assets/images/football/samples/avatar-6-xs.jpg" alt="Post Author Avatar">
              </figure>
              <time datetime="2017-08-23" class="posts__date">August 23rd, 2017</time>
            </div>
            <ul class="post__meta meta">
              <li class="meta__item meta__item--views">2369</li>
              <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
              <li class="meta__item meta__item--comments"><a href="#">18</a></li>
            </ul>
          </footer>
        </div>
        <!-- Post Content / End -->
  
      </div>
  
    </div>
    <!-- Slide #3 / End -->
  
  
    <!-- Slide #4 -->
    <div class="slick__slide">
  
      <div class="posts__item posts__item--category-3">
  
        <!-- Main Image -->
        <figure class="posts__thumb">
          <img src="assets/images/cricket/samples/virat2.png" alt="" class="duotone-img" data-gradient-map="#282840, #0fe3ab">
        </figure>
        <!-- Main Image / End -->
  
        <!-- Post Content -->
        <div class="posts__inner">
          <div class="posts__cat">
            <span class="label posts__cat-label">The League</span>
          </div>
          <h3 class="posts__title"><a href="#">The Clovers defense <span class="posts__title-higlight">must reinvent itself</span> without Adam Howlett</a></h3>
          <footer class="posts__footer">
            <div class="post-author">
              <figure class="post-author__avatar">
                <img src="assets/images/football/samples/avatar-6-xs.jpg" alt="Post Author Avatar">
              </figure>
              <time datetime="2017-11-08" class="posts__date">November 8th, 2017</time>
            </div>
            <ul class="post__meta meta">
              <li class="meta__item meta__item--views">2369</li>
              <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
              <li class="meta__item meta__item--comments"><a href="#">18</a></li>
            </ul>
          </footer>
        </div>
        <!-- Post Content / End -->
  
      </div>
  
    </div>
    <!-- Slide #4 / End -->
  
  </div>
  

  <!-- Breaking News -->
  <div class="marquee-wrapper">
    <div class="container">
  
      <div class="marquee-label">
        Breaking News
      </div>
      <div class="marquee" data-duration="15000" data-gap="10" data-duplicated="true" >
        <ul class="posts posts--inline">
          <li class="posts__item">
            <h6 class="posts__title"><a href="_football_blog-post-1.html">MS Dhoni Joins Jharkhand Teammates For His First Train Ride In 13 Years</a></h6>
            <div class="posts__excerpt">MS Dhoni, who was removed as captain of Rising Pune Supergiants in the Indian Premier League, decided to travel with the rest of the team by train for their first match with Karnataka on February 25 at the Eden Gardens in Kolkata.</div>
          </li>
          <li class="posts__item">
            <h6 class="posts__title"><a href="_football_blog-post-1.html">Ben Stokes, Chris Woakes To Skip Ireland ODIs to Play 14 IPL Games</a></h6>
            <div class="posts__excerpt">After bagging big IPL contracts, Ben Stokes and Chris Woakes will skip the ODIs against Ireland to take part in the league while Tymal Mills will be available for the entire duration of the tournament.</div>
          </li>
          <li class="posts__item">
            <h6 class="posts__title"><a href="_football_blog-post-1.html">IPL Auction 2017: Mohammed Siraj's Journey From Rs. 500 to Rs. 2.6 Crore</a></h6>
            <div class="posts__excerpt">Mohammed Siraj has landed a Rs. 2.6 crore deal with Sunrisers Hyderabad, thanks to a brilliant first class season that saw him get India A and Rest of India call-ups</div>
          </li>
        </ul>
      </div>
  
    </div>
  </div>
  <!-- Breaking News / End -->
  


    <!-- Content
    ================================================== -->
    <div class="site-content">
      <div class="container">
          <!-- Sidebar -->
          <div id="sidebar" class="sidebar">
            <!-- Widget: Standings -->
            <!-- Widget: Standings / End -->
            

            <!-- Widget: Social Buttons - Grid-->
            <aside class="widget widget--sidebar widget-social widget-social--grid">
              <a href="#" class="btn-social-counter btn-social-counter--fb">
                <div class="btn-social-counter__icon">
                  <i class="fa fa-facebook"></i>
                </div>
                <h6 class="btn-social-counter__title">Like Us!</h6>
                <span class="btn-social-counter__count">83600 Likes</span>
                <span class="btn-social-counter__add-icon"></span>
              </a>
              <a href="#" class="btn-social-counter btn-social-counter--twitter">
                <div class="btn-social-counter__icon">
                  <i class="fa fa-twitter"></i>
                </div>
                <h6 class="btn-social-counter__title">Follow Us!</h6>
                <span class="btn-social-counter__count">580 Followers</span>
                <span class="btn-social-counter__add-icon"></span>
              </a>
              <a href="#" class="btn-social-counter btn-social-counter--instagram">
                <div class="btn-social-counter__icon">
                  <i class="fa fa-instagram"></i>
                </div>
                <h6 class="btn-social-counter__title">Follow Us!</h6>
                <span class="btn-social-counter__count">98 Followers</span>
                <span class="btn-social-counter__add-icon"></span>
              </a>
              <a href="#" class="btn-social-counter btn-social-counter--rss">
                <div class="btn-social-counter__icon">
                  <i class="fa fa-rss"></i>
                </div>
                <h6 class="btn-social-counter__title">Subscribe!</h6>
                <span class="btn-social-counter__count">840 Subscribers</span>
                <span class="btn-social-counter__add-icon"></span>
              </a>
            </aside>
            <!-- Widget: Social Buttons - Grid / End -->
            

           
            <!-- Widget: Featured Player -->
            <!-- Widget: Featured Player / End -->
            

            <!-- Widget: Game Result -->
           
            <!-- Widget: Game Result / End -->
            
            <!-- Featured News -->
            <div class="card card--clean mb-0">
            <header class="card__header card__header--has-btn">
              <h4>Featured News</h4>
            </header>
            <div class="card__content">

              <!-- Slider -->
              <div class="slick posts posts-slider posts--slider-var-width">

                <div class="slick__slide">

                  <div class="row">
                    <div class="col-md-8">

                      <div class="posts__item posts__item--desc-center posts__item--category-1">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide30.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #f92552">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The Team</span>
                            </div>
                            <h3 class="posts__title">The Alchemists will <span class="posts__title-higlight">travel to Manhattan</span> to play the Finals</h3>
                            <div class="post-author">
                              <figure class="post-author__avatar">
                                <img src="assets/images/football/samples/avatar-12-xs.jpg" alt="Post Author Avatar">
                              </figure>
                              <div class="post-author__info">
                                <time datetime="2017-08-28" class="posts__date">August 28th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>

                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-3">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide5-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #0fe3ab">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The League</span>
                            </div>
                            <h3 class="posts__title">Santa Monica is the place <span class="posts__title-higlight">chosen by the league</span> for semifinals</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-08-28" class="posts__date">August 28th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-2">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide25-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #9e69ee">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">Injuries</span>
                            </div>
                            <h3 class="posts__title">Alchemists coach on <span class="posts__title-higlight">Jake Summer's injury</span> "It looks really bad"</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-08-28" class="posts__date">August 28th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="slick__slide">

                  <div class="row">
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-3">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide3-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #0fe3ab">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The League</span>
                            </div>
                            <h3 class="posts__title">The Draconians will open their <span class="posts__title-higlight">eco friendly</span> stadium in June</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-09-14" class="posts__date">September 14th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-2">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide1-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #9e69ee">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">Injuries</span>
                            </div>
                            <h3 class="posts__title">Scott Murdoch has a <span class="posts__title-higlight">tibia fracture</span> and will be out for two months</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-08-27" class="posts__date">August 27th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-1">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide18-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #f92552">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The Team</span>
                            </div>
                            <h3 class="posts__title">The Alchemists Mariah Johnson is <span class="posts__title-higlight">gonna be a mother</span> again</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-09-09" class="posts__date">September 9th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-2">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide2-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #9e69ee">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">Injuries</span>
                            </div>
                            <h3 class="posts__title">Jennifer T.Danvers <span class="posts__title-higlight">has a sprained</span> wrist and will be out for eight games</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-09-14" class="posts__date">September 14th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-1">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide10-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #f92552">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The Team</span>
                            </div>
                            <h3 class="posts__title">The team is gonna <span class="posts__title-higlight">make a trip to the beach</span> for a small vacation</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-08-23" class="posts__date">August 23rd, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                      <div class="posts__item posts__item--desc-left posts__item--category-3">
                        <a href="#" class="posts__link-wrapper">
                          <figure class="posts__thumb">
                            <img src="assets/images/football/samples/post-slide28-sm.jpg" alt="" class="duotone-img" data-gradient-map="#282840, #0fe3ab">
                          </figure>
                          <div class="posts__inner">
                            <div class="posts__cat">
                              <span class="label posts__cat-label">The League</span>
                            </div>
                            <h3 class="posts__title">The Clovers defense <span class="posts__title-higlight">must reinvent itself</span> without Adam Howlett</h3>
                            <div class="post-author">
                              <div class="post-author__info">
                                <time datetime="2017-11-08" class="posts__date">November 8th, 2017</time>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
              <!-- Slider / End -->

            </div>
            </div>
            <!-- Featured News / End -->

          </div>
          <!-- Sidebar / End -->
        </div>

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
