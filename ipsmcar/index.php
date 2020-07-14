<?php 
session_start();
ob_start();
 $conn =  require "assets/php/dbConnection.php";

 	$rows = $con->prepare("SELECT YEAR FROM information GROUP BY YEAR");
    $rows->execute();
    $record = $rows->fetchAll();

 ?>

<!DOCTYPE html>
<html>

<head>
	<meta content="authenticity_token" name="csrf-param" />
	<meta content="4sWPhTlJAmt1IcyNq1FCyivsAVhHqjiDCKRXOgOQock=" name="csrf-token" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<title>RASED CAR</title>
	<!-- <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico"> -->
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 4 -->
	<link rel="stylesheet" href="assets/roots/css/bootstrap.min.css">

	<!-- Style Css -->
	<link rel="stylesheet" href="assets/css/style.css" />
	<link rel="stylesheet/less" href="assets/css/styles.less">
	<style>
      body, html { margin:0; padding:0; }
      #heatmapContainerWrapper { width:1276px; margin:auto; background:rgba(0,0,0,.1); }
      #heatmapContainer { width:100%; height:100%;}
    </style>
    <script src="build/heatmap.js"></script>

</head>

<body>
	<!-- Loading Animation-->
	<div id="layout-loading">
		<div class="loader-effect"></div>
	</div>

	<div class="content-body" id="content_body">

		<div class="charts-content">
			<div class="charts-area">

				<div class="charts-header">

					<div class="left-logo">
						<img src="assets/images/robot.png" class="mr-2" class="testim">
						<div class="media-body">
							<p class="my-0">Product powered by</p>
							<span class="my-0">MASBAR</span>
						</div>
					</div>

					<h1>RASED Car Detection Dashboard</h1>

					<div class="right-logo">
						<img src="assets/images/wakeb_white.png" alt="Wakeb" title="Wakeb">
					</div>
				</div>
				
				<div class="picture-container" id="image_container_id">
					<div id="my_camera" hidden class="hidden"></div>
					<img src="" id="image_src_id" class="demoImg">
					<div id="image_container_face_id"></div>
				</div>
	
				
	
				<div class="chart2">
					<p>Total number: <span>0</span></p>
					<div class="inner-section">
						<div class="left-section">
							<i>+99</i>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
							<hr>
						</div>
						<div class="right-section">
	
						</div>
					</div>
				</div>
	
			
	
	
			</div>
	
			<section class="chart4">
				<div class="inner-section">
					<h1>Total number of Cars</h1>
					<div class="controls">
	
						<div class="radio-section">
							<div class="ch4 radio-btn" id="ch4_y_btn">
								<input type="radio" name="ch4Time" value="y">
								<span>Year</span>
							</div>

							<div class="ch4 radio-btn" id="ch4_mo_btn">
								<input type="radio" name="ch4Time" value="mo">
								<span>Month</span>
							</div>
							<div class="ch4 radio-btn" id="ch4_we_btn">
								<input type="radio" name="ch4Time" value="we">
								<span>Week</span>
							</div>
							<div class="ch4 radio-btn" id="ch4_da_btn">
								<input type="radio" name="ch4Time" value="da">
								<span>DaY</span>
							</div>
						</div>
	
						<div class="combo-section">

							<select class="" id="ch4_y">
								<option value="all">All Years</option>
								<?php
									 if ($record > 0) {
									    foreach ($record as $year) {
										   echo '<option value="'.$year[0].'">'.$year[0].'</option>';
									    }

									  }

								?>
							</select>

							<select class="disabled" id="ch4_mo">
								<option value="all">All Months</option>
								<option value="1">January</option>
								<option value="2">February</option>
								<option value="3">March</option>
								<option value="4">April</option>
								<option value="5">May</option>
								<option value="6">June</option>
								<option value="7">July</option>
								<option value="8">August</option>
								<option value="9">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select>
	
							<select class="disabled" id="ch4_we">
								<option value="all">All Weeks</option>
								<option value="1">Week 1</option>
								<option value="2">Week 2</option>
								<option value="3">Week 3</option>
								<option value="4">Week 4</option>
							</select>
	
							<select class="disabled" id="ch4_da">
								<option value="all">All Days</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
						</div>
	
					</div>
					<div class="chart4-body">
						<div class="chart4-data"></div>
					</div>
				</div>
			</section>
	
	
			<i class="chart-arrow-left"></i>
			<i class="chart-arrow-bottom"></i>
		</div>
	</div>

	<div id="wrap">



		<!-- Header -->
		<div id="header">
			<div class="navigation fixed-top background scroll">
				<div class="container">
					<nav id="navbar-example" class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand brand-logo" target="-blank" href="http://wakeb.tech/">
							<img src="assets/images/wakeb.png" alt="Wakeb" title="Wakeb">
						</a>

						<button class="navbar-toggler hamburger " style=" visibility: visible;" type="button"
							data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="hamburger-box">
								<span class="hamburger-label"></span>
								<span class="hamburger-inner"></span>
							</span>
						</button>

						<div class="top-nav collapse navbar-collapse" id="nav-content">
							<ul class="navbar-nav ml-auto">
								<li class="nav-item">
									<a href="#">Home</a>
								</li>
								<li class="nav-item">
									<a href="#">Products</a>
								</li>
								<li class="nav-item">
									<a href="#">Services</a>
								</li>
								<li class="nav-item">
									<a href="#">Solutions</a>
								</li>
								<li class="nav-item">
									<a href="#">Blog</a>
								</li>
								<li class="nav-item">
									<a href="#">About us</a>
								</li>
								<li class="nav-item">
									<a href="#">Contact us</a>
								</li>
								<!-- <li class="nav-item d-flex align-items-center">
									<a href="index.rtl.html">
										<img src="assets/images/lang.png" class="mr-1">
										<span>Arabic</span>
									</a> -->
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<!--/. Header -->

		<!-- Page intro -->
		<div id="hero-bg" class="scroll top">
			<div class="container">
				<div class="hero-inner row">
					<div class="col-lg-6 col-md-7">
						<div class="hero-content">
							<div class="powered-by">
								<div class="media">
									<img src="assets/images/robot.png" class="mr-2" class="testim">
									<div class="media-body">
										<h5 class="my-0">Product powered by</h5>
										<h3 class="my-0">MASBAR</h3>
									</div>
								</div>
							</div>
							<h1>Rased Car Detection </h1>
							<p>An application in machine vision techniques which monitoring
							 Cars and get number of Cars .</p>
							<ul>
								<li>
									<button class="btn link" id="play">
										<span>Run</span>
										<img src="assets/images/play.png"></button>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-5 hide-small">
						<!-- <div class="here-side-img">
							<img src="assets/images/face-rased.svg" width="400px">
						</div> -->
					</div>
				</div>
			</div>
		</div>
		<!-- /. Page intro -->

		<!--Footer-->
		<div class="dark-footer">
			<div class="container">
				<div class="row">
					<div class="logo col-md-4 ">
						<a target="_blank" href="http://wakeb.tech/"><img src="assets/images/light-wakeb.png"
								alt="wakeb" title="wakeb"></a>
					</div>
					<div class="col-md-8 cpr">
						Product powered by Wakeb, All copyrights reserved © 2019
					</div>
				</div>
			</div>
		</div>
		<!-- /. Footer -->



	</div>
	<!--./wrap -->

	<div id="THE_RESPONCE_DIV"></div>
	<div id="THE_RESPONCE_DIV2"></div>





	<!--Js-->
	<script src="assets/js/jquery-3.3.1.min.js"></script>

	<!-- amcharts scripts -->
	<script src="assets/amcharts4/core.js"></script>
	<script src="assets/amcharts4/charts.js"></script>
	<script src="assets/amcharts4/animated.js"></script>




	<!-- Bootstrap JS -->
	<script src="assets/roots/js/bootstrap.min.js"></script>

	<!-- Face API JS -->
	<script src="assets/js/jquery.facedetection.min.js"></script>

	<script src="assets/js/less.min.js"></script>

	<script type="text/javascript" src="assets/js/webcam.min.js"></script>



	<!-- Bootstrap JS -->

	<script src="assets/js/functions.js"></script>

	<script src="assets/js/chart-script.js"></script>



</body>

</html>

<?php
ob_end_flush();
?>