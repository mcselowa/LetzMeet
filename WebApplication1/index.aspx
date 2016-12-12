<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>




<html><head>
		<title>Letz Mit</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css">
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<style id="__web-inspector-hide-shortcut-style__" type="text/css">
.__web-inspector-hide-shortcut__, .__web-inspector-hide-shortcut__ *, .__web-inspector-hidebefore-shortcut__::before, .__web-inspector-hideafter-shortcut__::after
{
    visibility: hidden !important;
}
</style></head>
	<body class="navPanel-visible">
        
		<form id="form1" runat="server">
		<div id="page-wrapper">


            <asp:Panel ID="popup" runat="server" ScrollBars="Auto" Width="100%" Height="395px" Visible="False">
            <asp:TextBox ID="PopMessage" runat="server"></asp:TextBox>
        </asp:Panel>

			<!-- Header -->
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

			<!-- Banner -->
				<section id="banner">
					<header>
						
						<a href="/login.aspx" class="button">Login || Register</a>
					</header>
				</section>

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
									<a href="Register.aspx" class="icon major fa-pencil"></a>
									<h3>Event Organisers and business owners!</h3>
									<p>Register here to be a part of our network and promote your events and business.</p>
								</div>
							</section>
							<section class="4u 12u(narrower)">
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
				<article>
											<header>
												<h2>Letz Meet</h2>
												<p>Your Personal Guide and assistant To All The Right Meet-ups</p>
											</header>

                                            <asp:Literal ID="HomeEvents" runat="server"></asp:Literal>

										</article>

			<!-- CTA -->
				<section id="cta" class="wrapper style3">
					<div class="container">
						<header class="__web-inspector-hide-shortcut__">
							<h2>Are you ready to continue your quest?</h2>
							<a href="#" class="button">Insert Coin</a>
						</header>
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
								<!--<li>� Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>-->
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

	
<ul class="dropotron level-0" style="user-select: none; display: none; position: absolute; z-index: 1000;">
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Lorem dolor</a></li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Magna phasellus</a></li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Etiam sed tempus</a></li>
										<li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
											<a href="#" style="display: block;">Submenu</a>
											<ul style="user-select: none; display: none; position: absolute; z-index: 1001;" class="dropotron level-1">
												<li style="white-space: nowrap;"><a href="#" style="display: block;">Lorem dolor</a></li>
												<li style="white-space: nowrap;"><a href="#" style="display: block;">Phasellus magna</a></li>
												<li style="white-space: nowrap;"><a href="#" style="display: block;">Magna phasellus</a></li>
												<li style="white-space: nowrap;"><a href="#" style="display: block;">Etiam nisl</a></li>
												<li style="white-space: nowrap;"><a href="#" style="display: block;">Veroeros feugiat</a></li>
											</ul>
										</li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Veroeros feugiat</a></li>
									</ul><div id="titleBar"><a href="#navPanel" class="toggle"></a><span class="title">Arcana <em>Author</em></span></div><div id="navPanel"><nav><a class="link depth-0" href="index.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Home</a></nav></div>
        </form>
</body>

</html>