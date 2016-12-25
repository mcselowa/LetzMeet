<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>




<html>
	<head>
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/et-line-font-plugin/style.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise-gallery/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <asp:Panel ID="popup" runat="server" ScrollBars="Auto" Width="100%" Height="395px" Visible="False">
            <asp:TextBox ID="PopMessage" runat="server"></asp:TextBox>
        </asp:Panel>
		<title>Letz Mit</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>
        <form id="form1" runat="server">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="#" id="logo">Letz Meet <em>slogan</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="#">Home</a></li>
							</ul>
						</nav>

				</div>
				<!-- Banner -->
				<section class="mbr-slider mbr-section mbr-section__container carousel slide mbr-section-nopadding" data-ride="carousel" data-keyboard="false" data-wrap="true" data-pause="false" data-interval="5000" id="slider-3">
    <div>
        <div>
            <div>
                
                <div class="carousel-inner" role="listbox">
                    <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full active" data-bg-video-slide="false" style="background-image: url(assets/images/maxresdefault-2000x1015-55.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/4a7cfbe7fc88d5300037497fe7f01a26-2000x1417-31.png);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/27-02-2013-00-2000x1232-93.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/33-funny-business-quotes-to-make-you-laugh-2000x1125-46.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/4567aabe4596d75afce18d1296874d09-2000x1250-72.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/907546ce825af8d1159d879c0a55b4ca-2000x1333-30.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/business-networking-quotes-11-2000x1500-37.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/inspirational-quote-by-giantsqurl-2000x1495-78.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/motivational-business-quotes-thomas-edison-2000x1162-79.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(assets/images/think-big-business-motivational-quotes-2000x1122-81.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        
                                        

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-3">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-3">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>

            <div  id="header2">

					<!-- Stats -->
						<a ><font color="white">Over 10,000 monthly users</font></a><br /><a><font color="white">Over 200 monthly events</font></a><br /><a><font color="white">Why not join us and reap the benefits?</font></a><p></p><a href="/login.aspx" class="button">Login || Register</a>

				</div>

			<!-- Main -->
				<!-- Highlights -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row 200%">
							<section class="4u 12u(narrower)">
								<div class="box highlight">
									<a href="login.aspx" class="icon major fa-paper-plane" ></a>
									<h3>View Our Events</h3>
									<p>This is where you can view all the pictures and videos from previous events.</p>
								</div>
							</section>
							<section class="4u 12u(narrower)">
								<div class="box highlight">
									<a href="Login.aspx" class="icon major fa-pencil"></a>
									<h3>Event Organisers and business owners!</h3>
									<p>Register here to be a part of our network and promote your events and business.</p>
								</div>
							</section>
							<<section class="4u 12u(narrower)">
								<div class="box highlight">
									<a href="Manage.aspx" class="icon major fa-wrench" ></a>
									<h3>Managers</h3>
									<p>Login Here to manage your ads and events.</p>
								</div>
							</section>
						</div>
					</div>
				</section>

			<!-- Gigantic Heading -->
				<section class="wrapper style2">
					<div class="container">
						<header class="major">
							<h2>Events to look forward to:</h2>
							<p>This is the top 4 most anticipated events.</p>
						</header>
					</div>
				</section>

			<!-- Posts -->
            <div class="8u  12u(narrower) important(narrower)">

								<div id="content">
				<article>
				<header>
				<h2>Letz Meet</h2>
				<p>Your Personal Guide and assistant To All The Right Meet-ups</p>
				</header>

               <asp:Literal ID="HomeEvents" runat="server"></asp:Literal>

			</article>
                                    </div>
                </div>
				</section>

			<!-- Footer -->
            
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="6u 12u(narrower)">
								<h3>Get In Touch</h3>
									<div class="row 50%">
										<div class="6u 12u(mobilep)">
											<asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
										</div>
										<div class="6u 12u(mobilep)">
                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
										</div>
									</div>
									<div class="row 50%">
                                        
										<div class="12u">
                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Message" Rows="5" TextMode="MultiLine"></asp:TextBox>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
											    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Message" /><!-- Send Button-->
											</ul>
										</div>
									</div>
							</section>
						    
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
            </form>

        <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/masonry/masonry.pkgd.min.js"></script>
  <script src="assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/mobirise-gallery/player.min.js"></script>
  <script src="assets/mobirise-gallery/script.js"></script>

        <input name="animation" type="hidden">
	</body>
</html>