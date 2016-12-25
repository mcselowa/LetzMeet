<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE HTML>
<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
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
		<title>Letz Mit || Sign Up and Login</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>
        <div id="header">

					<!-- Logo -->
						<h1><a href="index.aspx" id="logo">LetzMeet</a></h1><em>Daily Dose of Business Studies</em>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current" style="white-space: nowrap;"><a href="index.aspx">Home</a></li>
								</ul>
						</nav>

				</div>
        <form id="Login" runat="server">
		<div id="page-wrapper">

			<!-- Header -->
            <asp:Panel ID="popup" runat="server" ScrollBars="Auto" Width="100%" Height="395px" Visible="False">
            <asp:TextBox ID="PopMessage" runat="server"></asp:TextBox>
        </asp:Panel>
				

			<!-- Main -->
				<div class="container">
							<section class="6u 12u(narrower)">
								<h3>Login or Sign Up</h3>
								
									<div class="row 50%">

                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="UserName" runat="server" placeholder="Name" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="SURNAME" runat="server" placeholder="Surname" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
										<div class="6u 12u(mobilep)">
											<asp:TextBox ID="usernameTxt" runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="emailverify" runat="server" placeholder="verify email" TextMode="Email" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="number" runat="server" placeholder="Contact Number" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="address" runat="server" placeholder="Address" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="province" runat="server" placeholder="Province" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="city" runat="server" placeholder="City" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
											<asp:TextBox ID="postcode" runat="server" placeholder="Postal Code" TextMode="SingleLine" Visible="False"></asp:TextBox>
										</div>
										<div class="6u 12u(mobilep)">
                                            <asp:TextBox ID="passwordTxt" runat="server" placeholder="password" TextMode="Password" MaxLength="20"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
                                            <asp:TextBox ID="passwordverify" runat="server" placeholder="verify password" TextMode="Password" Visible="False" MaxLength="20"></asp:TextBox>
										</div>
                                        <div class="6u 12u(mobilep)">
                                            <asp:TextBox ID="DateOfBirth" runat="server" placeholder="YYYY,MM,DD" TextMode="Date" Visible="False"></asp:TextBox>
										</div>
                                        <!--<div class="6u 12u(mobilep)">
                                            <asp:Calendar ID="DOB" runat="server" Visible="False" VisibleDate="2017/01/01" SelectedDate="200/01/01" Caption="DOB"></asp:Calendar>
										</div>-->
									</div>
									<div class="row 50%">
                                        
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<asp:Button ID="Btnlogin" runat="server"  Text="Login" OnClick="Btnlogin_Click" />
                                                <asp:Button ID="Signup" runat="server"  Text="Sign Up" OnClick="Signup_Click"  />
                                                <asp:Button ID="SignupComplete" runat="server"  Text="Sign Up" OnClick="SignupComplete_Click" Visible="False"  />
                                                <asp:Button ID="UpdateUser" runat="server"  Text="Update" Visible="False"  />
											</ul>

										</div>
									</div>
								
							</section>
					</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
							<section class="6u 12u(narrower)">
								<h3>Get In Touch</h3>
								
									<div class="row 50%">
										<div class="6u 12u(mobilep)">
											<asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
										</div>
										<div class="6u 12u(mobilep)">
                                            <asp:TextBox ID="email" runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
										</div>
									</div>
									<div class="row 50%">
                                        
										<div class="12u">
                                            <asp:TextBox ID="message" runat="server" placeholder="Message" Rows="5" TextMode="MultiLine"></asp:TextBox>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<asp:Button ID="sendmessage" runat="server" OnClick="sendmessage_Click" Text="Send Message" />
											</ul>
										</div>
									</div>
								
							</section>
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