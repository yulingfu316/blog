<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>单行博客</title>

<meta name="author" content="Yuling Fu"/>
<meta name="description" content="This is a blog site."/>
<meta name="keywords" content="blog,博客,单行"/>
<!-- <meta name="robots" content="index, follow, noarchive" />
<meta name="googlebot" content="noarchive" /> -->

<link rel="stylesheet" type="text/css" media="screen"
	href="css/main.css" />

</head>

<body>
	<!-- Wrap -->
	<div id="wrap">

		<!-- Header -->
    <jsp:include page="common/header.jsp"/>

		<!-- menu -->
		<jsp:include page="common/menu.jsp"/>

		<!--Content Wrap -->
		<div id="content-wrap">

			<div id="main">

				<a name="TemplateInfo"></a>
				<h1>Template Info</h1>

				<p>
					<strong>SimpleBlog</strong> is a free, W3C-compliant, CSS-based
					website template by <a href="http://www.cssmoban.com/">styleshout.com</a>.
					This work is distributed under the <a rel="license"
						href="http://creativecommons.org/licenses/by/2.5/"> Creative
						Commons Attribution 2.5 License</a>, which means that you are free to
					use and modify it for any purpose. All I ask is that you give me
					credit by including a <strong>link back</strong> to <a
						href="http://www.cssmoban.com/">my website</a>.
				</p>

				<p>
					You can find more of my free template designs at <a
						href="http://www.cssmoban.com/">my website</a>. For premium
					commercial designs, you can check out <a href="#"
						title="Website Templates">DreamTemplate.com</a>.
				</p>

				<p class="post-footer">
					<a href="index.html" class="readmore">Read more</a> <a
						href="index.html" class="comments">Comments (7)</a> <span
						class="date">Oct 01, 2006</span>
				</p>

				<a name="SampleTags"></a>
				<h1>Sample Tags</h1>

				<h3>Code</h3>
				<p>
					<code>
						code-sample { <br /> font-weight: bold;<br /> font-style:
						italic;<br /> }
					</code>
				</p>

				<h3>Example Lists</h3>

				<ol>
					<li>example of</li>
					<li>ordered list</li>
				</ol>

				<ul>
					<li>example of</li>
					<li>unordered list</li>
				</ul>

				<h3>Blockquote</h3>
				<blockquote>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
						aliquam erat....</p>
				</blockquote>

				<h3>Image and text</h3>
				<p>
					<a href="http://getfirefox.com/"><img
						src="images/firefox-gray.jpg" width="100" height="120"
						alt="firefox" class="float-left" /></a> Lorem ipsum dolor sit amet,
					consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.
					Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus
					turpis varius lorem, eu posuere nunc justo tempus leo. Donec
					mattis, purus nec placerat bibendum, dui pede condimentum odio, ac
					blandit ante orci ut diam. Cras fringilla magna. Phasellus
					suscipit, leo a pharetra condimentum, lorem tellus eleifend magna,
					eget fringilla velit magna id neque. Curabitur vel urna. In
					tristique orci porttitor ipsum. Aliquam ornare diam iaculis nibh.
					Proin luctus, velit pulvinar ullamcorper nonummy, mauris enim
					eleifend urna, congue egestas elit lectus eu est.
				</p>

				<h3>Example Form</h3>
				<form action="#">
					<p>
						<label>Name</label> <input name="dname" value="Your Name"
							type="text" size="30" /> <label>Email</label> <input
							name="demail" value="Your Email" type="text" size="30" /> <label>Your
							Comments</label>
						<textarea rows="5" cols="5"></textarea>
						<br /> <input class="button" type="submit" />
					</p>
				</form>
				<br />

			</div>

			<div id="sidebar">

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
		<jsp:include page="common/footer.jsp"/>

	</div>
  <!-- End Wrap -->
</body>
</html>