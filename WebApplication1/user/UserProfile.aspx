<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication1.user.UserProfile" %>

<!DOCTYPE html>

<html>
	<head>
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

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row 200%">
							<div class="4u 12u(narrower)">
								<div id="sidebar">

									<!-- Sidebar -->

										<section>
											<h3>Letz Mit</h3>
											<p>My Panel</p>
										</section>

										<section>
											<!--<h3>Another Subheading</h3>-->
											<ul class="links">
												<li><a href="userHOme.aspx">All Events</a></li>
												<li><a href="userHome.aspx?type=user">My Events</a></li>
												<li><a href="userHome.aspx?type=attending">Events I'm Attending</a></li>
												<li><a href="UserProfile.aspx">My Profile</a></li>
											</ul>
											<footer>
												<a href="Logout.aspx" class="button">Log out</a>
											</footer>
										</section>

								</div>
							</div>
							<div class="8u  12u(narrower) important(narrower)">
								<div id="content">

									<!-- Content -->

										<article>
											<header>
												<h2>User Profile</h2>
												<p>
                                                    <asp:Literal ID="UserName" runat="server"></asp:Literal>

												</p>
											</header>

											<span class="image featured">
                                            <asp:Image ID="UserImage" runat="server" />
                                            </span>
											&nbsp;
										    Name<asp:TextBox ID="txtName" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            Surname<asp:TextBox ID="txtSurname" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            e-mail Address<asp:TextBox ID="txtemail" runat="server" Enabled="False" TextMode="Email"></asp:TextBox>
                                            <br />
&nbsp;
                                            DOB<asp:TextBox ID="txtDOB" runat="server" Enabled="False" TextMode="Date"></asp:TextBox>
                                            <br />
&nbsp;
                                            Cell Number<asp:TextBox ID="txtCellNum" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            Address<asp:TextBox ID="txtAddress" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            City<asp:TextBox ID="txtCity" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            Province<asp:TextBox ID="txtProvince" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
&nbsp;
                                            Postal Code<asp:TextBox ID="txtPostCode" runat="server" Enabled="False"></asp:TextBox>
                                           
										</article>

								</div>
							</div>
						</div>
					</div>
				</section>

			<!-- Footer -->
				<div id="footer">

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
								<li>&copy; Letz Mit. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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

	</body>
</html>