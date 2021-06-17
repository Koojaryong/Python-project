<!DOCTYPE HTML>
<!--
	Traveler by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Traveler &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
	.login-center{
				position: absolute;
    			min-height: 1px;
    			padding-left: 15px;
    			padding-right: 15px;
    			width: 400px;
    			height: 600px;
    			left: 35%;
    			top: 50%;
    			transform:translateX(-50%);
	}
</style>

<%
	String mem_id2 = (String) session.getAttribute("mem_id2");
	String mem_name2 = (String) session.getAttribute("mem_name2");
	String mem_location2 = (String) session.getAttribute("mem_location2");
	String mem_hint2 = (String) session.getAttribute("mem_hint2");
	String mem_aws2 = (String) session.getAttribute("mem_aws2");
	String mem_pw2 = (String) session.getAttribute("mem_pw");
		
	if(mem_id2 =="undefined" || mem_id2 ==null || mem_id2 ==""){
		out.println("<script>alert('Please log in'); history.back();</script>");
		return;
	}
%>


	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.html">RESTAURANT FINDER<em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>	
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/change-3.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">
						<div class="login-center col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<h3>MY PAGE</h3>
											<form action="python_mypage2.jsp">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">ID</label>
														<input type="text" id="mem_id" name="mem_id" value="" class="form-control">
													</div>														
													<div class="col-md-12">
															<label for="fullname">Name</label>
															<input type="text" id="mem_name" name="mem_name" value="" class="form-control">
														</div>
														
														<div class="col-md-12">
															<label for="fullname">Location</label>
															<input type="text" id="mem_location" name="mem_location" value="" class="form-control">
														</div>													
														<div class="col-md-12">
															<label for="activities">Password Hint</label>
															<select name="mem_hint" id="mem_hint" class="form-control">
																<option value="Where were you born?">Where were you born?</option>
																<option value="What is your hobby">What is your hobby</option>
																<option value="What is the name of the elementary school you attended?">What is the name of the elementary school you attended?</option>
																<option value="What is your number one treasure?">What is your number one treasure?</option>
															</select>											
														</div>
														<div class="col-md-12">
															<label for="fullname">Answer</label>
															<input type="text" id="mem_aws" name="mem_aws" value="" class="form-control">
														</div>													
														<div class="col-md-12">
															<label for="fullname">Password</label>
															<input type="password" id="mem_pw1" name="mem_pw1" value="" class="form-control">
														</div>
														<div class="col-md-12">
															<label for="fullname">Password Check</label>
															<input type="password" id="mem_pw2" name="mem_pw2" value="" class="form-control">
														</div>																												
													<div class="col-md-12">
														<br><input type="submit" class="btn btn-primary btn-block" value="confirm">
													</div>
												</div>												
											</form>																						
										</div>
									</div>	
								</div>
							</div>					
						</div>											
					</div>			
				</div>
			</div>
		</div>
	</header>

	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

	<script type="text/javascript">
		document.getElementById("mem_id").value = <%= mem_id2%>
		document.getElementById("mem_name").value = <%= mem_name2%>
		document.getElementById("mem_location").value = <%= mem_location2%>	
		$("#mem_hint").val("<%=mem_hint2%>").prop("selected",true);
		document.getElementById("mem_aws").value = <%= mem_aws2%>
		document.getElementById("mem_pw1").value = <%= mem_pw2%>
		document.getElementById("mem_pw2").value = <%= mem_pw2%>
	
		//document.getElementById('mem_id').disabled = true;
		
	</script>

	</body>
</html>

