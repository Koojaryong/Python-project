<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Directory HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            
             <%
            	String mem_id = (String) session.getAttribute("mem_id");
        		String mem_pass = (String) session.getAttribute("mem_pw");
        
        		if(mem_id!="undefined" || mem_id!=null || mem_id!=""){
        			session.setAttribute("mem_id", mem_id);
        			session.setAttribute("mem_pw", mem_pass);       			
        		}
            
            %>
            <script>
            
            //option에서 선택받은 값 받아오기
            	var select_value = "selectAll.html"
            	
            	function selectOnChange(e){
            	
            		select_value = e.value;           
            		printSelect();
            		
            	}
            	
            //search 클릭하면 href값 변경해주기
            	function printSelect(){
            		if(select_value=="undefined" || select_value==null || select_value==""){
            			select_value = "selectAll.html"
            		}
          	                   		
            		//document.getElementById("submit").href =select_value;         		
            		 //return select_value;
            		
            	}
          
            var c = "ef";
            </script>
           <style>
            .search-box{position: absolute;
             			left: 50%;
             			transform:translateX(-50%);
              			width: 500px;}
			.select-form{width: 67%; 
						margin:0 auto; 
						border-top-left-radius:50px; 
						border-bottom-left-radius:50px;
						}
			.select-itms{border-top-left-radius:50px; 
						border-bottom-left-radius:50px;}
			.imagebox{
			display: flex;
			margin: 0 auto;
			}
			.image{
			    width: 47%;
			    margin: 0 auto;
			}
			.image2{
			    width: 37%;
			    margin: 10px;
			}
            </style>
   </head>

   <body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
       <div class="header-area header-transparent">
            <div class="main-header">
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="python_MainDP.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-8">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="python_MainDP.jsp">Home</a></li>                                      
                                            <li><a href="#" onclick=" location.href = 'python_mypageProcess.jsp?mem_id=<%=mem_id%>&mem_pass=<%=mem_pass%>' +'&c='+c; return false;">My Page</a></li>                                    
                                            <li class="login"><a href="python_loginDP.jsp">
                                                <i class="ti-user"></i> Sign in or Register</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
    <main>
        <!-- Hero Area Start-->
        <div class="slider-area hero-overly">
            <div class="single-slider hero-overly  slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-lg-9">
                            <!-- Hero Caption -->
                            <div class="hero__caption">
                                <span>Korea</span>
                                <h1>Find A Restaurant</h1>
                            </div>
                            <!--Hero form -->
                            <form action="#" class="search-box">                                                
                                <div class="select-form">
                                    <div class="select-itms">
                                        <select name="select1" id="select1" onchange="selectOnChange(this)">                                       	
                                            <option value="selectAll.html">All Catagories</option>
                                            <option value="selectKorea.html">Korean restaurant</option>
                                            <option value="selectJapan.html">Japanese restaurant</option>
                                            <option value="selectChina.html">Chinese restaurant</option>
                                            <option value="selectWestern.html">Western restaurant</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="search-form" >                               	
                                   <a href="#" id ="submit" onclick=" location.href = select_value + '?mem_id=<%=mem_id%>&mem_pass=<%=mem_pass%>' +'&c='+c; return false;">Search</a>
                                </div>	
                            </form>	
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area End-->
        <!-- Popular Locations Start -->
        <div class="popular-location section-padding30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <span>Most visited places</span>
                            <h2>Popular Locations</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="imagebox">
                    <div class="image">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="images/korea.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Korean restaurant</p>
                                <a href="selectKorea" class="location-btn">Map View</a>
                            </div>
                        </div>
                    </div>
                    <div class="image">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="images/japan.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Japanese restaurant</p>
                                <a href="selectJapan" class="location-btn">Map View</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="imagebox">
                    <div class="image">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="images/china.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Chinese restaurant</p>
                                <a href="selectChina" class="location-btn">Map View</a>
                            </div>
                        </div>
                    </div>
                    <div class="image">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="images/western.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Western restaurant</p>
                                <a href="selectWestern.html" class="location-btn">Map View</a>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!-- More Btn -->
                <div class="row justify-content-center">
                    <div class="room-btn pt-20">
                        <a href="selectAll.html" class="btn view-btn1">View All Places</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->
        <!-- Services Area Start -->
        <div class="services-area pt-150 pb-150 section-bg" data-background="assets/img/gallery/section_bg02.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle section-tittle2 text-center mb-80">
                            <span>Easy to explore</span>
                            <h2>How It Works</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-list"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">1. Choose a Category</a></h5>
                                <p>You can choose all or country-specific foods from the category.</p>
                            </div>
                            <!-- Shpape -->
                            <img class="shape1 d-none d-lg-block" src="assets/img/icon/serices1.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-problem"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">2. Map View</a></h5>
                                <p>You can see a visualized map of restaurants by region.</p>
                            </div>
                            <img class="shape2 d-none d-lg-block" src="assets/img/icon/serices2.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-respect"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">3. Check Restaurant Information</a></h5>
                                <p>You can check the restaurant information by selecting the restaurant you want.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Subscribe Area End -->
        <!-- Blog Ara Start -->
        <div class="home-blog-area section-padding30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-70">
                            <span>Our blog</span>
                            <h2>Programmers</h2>
                        </div> 
                    </div>
                </div>
                <div class="row">
                <div class="imagebox">
                <div class="image2">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="images/11.jpg">
                            </div>
                            <div class="team-caption">
                                <span style="color:black; font-weight:bold;">Kim Hyeongchang</span>
                                <h4><a href="https://nostalgiaa.tistory.com/" style="color:red;">nostalgiaa.tistory.com/</a></h4>
                                <p>gudckd1013@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="image2">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="images/22.jpg">
                            </div>
                            <div class="team-caption">
                                <span style="color:black; font-weight:bold;">Kim Doa</span>
                                <h4><a href="https://cordingdoah.tistory.com/" style="color:red;">cordingdoah.tistory.com/</a></h4>
                                <p>ehdk1409@naver.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="image2">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="images/33.jpg">
                            </div>
                            <div class="team-caption">
                                <span style="color:black; font-weight:bold;">Koo Jaryong</span>
                                <h4><a href="https://rnwkfyd97.tistory.com/" style="color:red;">rnwkfyd97.tistory.com/</a></h4>
                                <p>wkfyd97@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="image2">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="images/44.jpg">
                            </div>
                            <div class="team-caption">
                                <span style="color:black; font-weight:bold;">Kim Minji</span>
                                <h4><a href="https://blog.naver.com/alslalswl501" style="color:red;">blog.naver.com/alslalswl501</a></h4>
                                <p>alslalswl501@naver.com</p>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Ara End -->

    </main>
     <footer>
        <!-- Footer Start-->
        <div class="footer-area">
            <div class="container">
               <div class="footer-top footer-padding">
                    <div class="row justify-content-between">
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <!-- logo -->
                                    <div class="footer-logo">
                                        <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Quick Link</h4>
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Listing</a></li>                                     
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>                                         
               </div>
                <div class="footer-bottom">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-9 col-lg-8">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <!-- Footer Social -->
                            <div class="footer-social f-right">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>


    <!-- JS here -->
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
    </body>

</html>