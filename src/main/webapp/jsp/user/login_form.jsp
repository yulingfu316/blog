<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>One-way Blog</title>

<meta name="author" content="Yuling Fu" />
<meta name="description" content="This is a blog site." />
<meta name="keywords" content="blog,博客,单行" />
<!-- <meta name="robots" content="index, follow, noarchive" />
<meta name="googlebot" content="noarchive" /> -->
<link rel="stylesheet" type="text/css" href="../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../css/login.css">
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/myjs/common.js"></script>
</head>

<body>
	<!-- Wrap -->
	<div id="wrap">

		<!-- Header -->
		<jsp:include page="../common/header.jsp" />

		<!-- menu -->
		<jsp:include page="../common/menu.jsp" />

		<!--Content Wrap -->
		<div id="content-wrap">

			<div id="main">

				<h1>登录帐号</h1>
				<form id="loginForm" action="account/login?ref=${uri}" method="post">
					用户名 / 邮箱：<input id="username" name="username" tabindex="1" class="username" type="text" value=""/>
					密码：<input id="password" name="password" tabindex="2" class="password" type="password" value=""/>
					验证码：<input id="checkcode" name="checkcode" tabindex="3" class="checkcode" type="text"/>
					<img id="checkcode" alt="验证码" src="account/checkcode"><a href="javascript:document.getElemntById('checkcode').src='account/checkcode?time=new Date().getTime()';">看不清？</a>
					<div class="forget-password">
						<span class="rememberMe">
						  <input type="checkbox" name="rememberMe" id="rememberMe" value="true" class="auto-login" tabindex="3" />
						  <label for="rememberMe" wordwrap="true" autosize="false" dock="fill">下次自动登录</label>
						</span> 
						<span class="forget">
							<a href="javascript:void(0);" tabindex="4">忘记密码</a>
						</span>
					</div>

					<input class="loginButton" accesskey="l" value="登 录" tabindex="5" type="button"/>
				</form>

			</div>

			<div id="sidebar">
			
            <form id="searchform" method="post" class="search" action="#">
                <input name="search_query" class="textbox" type="text"/>
                <input name="search" class="button" type="submit" value="search"/>
            </form>
				<h1>Sidebar Menu</h1>
				<ul class="sidemenu">
					<li><a href="index.html">Home</a></li>
					<li><a href="#TemplateInfo">Template Info</a></li>
					<li><a href="#SampleTags">Sample Tags</a></li>
					<li><a href="http://www.cssmoban.com/">More Free Templates</a></li>
					<li><a href="#" title="Web Templates">Web Templates</a></li>
				</ul>

				<h1>Sponsors</h1>
				<ul class="sidemenu">
					<li><a href="#" title="Website Templates">DreamTemplate</a></li>
					<li><a href="#" title="WordPress Themes">ThemeLayouts</a></li>
					<li><a href="#" title="Website Hosting">ImHosted.com</a></li>
					<li><a href="#" title="Stock Photos">DreamStock</a></li>
					<li><a href="#" title="Website Builder">Evrsoft</a></li>
					<li><a href="#" title="Web Hosting">Web Hosting</a></li>
				</ul>

				<h1>Wise Words</h1>
				<p>&quot;Be not afraid of life. Believe that life is worth
					living, and your belief will help create the fact.&quot;</p>

				<p class="align-right">- William James</p>

				<h1>Support Styleshout</h1>
				<p>
					If you are interested in supporting my work and would like to
					contribute, you are welcome to make a small donation through the <a
						href="http://www.cssmoban.com/">donate link</a> on my website - it
					will be a great help and will surely be appreciated.
				</p>

			</div>

			<!--End content-wrap-->
		</div>

		<!-- Footer -->
		<jsp:include page="../common/footer.jsp" />

	</div>
	<!-- End Wrap -->
</body>
</html>