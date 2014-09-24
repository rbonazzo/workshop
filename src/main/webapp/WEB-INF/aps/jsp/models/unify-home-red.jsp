<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="pocwp" uri="/WEB-INF/tld/poc-aps-core.tld" %>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--><html lang="<wp:info key="currentLang" />"><!--<![endif]-->
<head>
	<title><wp:currentPage param="title" /> - <wp:i18n key="PORTAL_TITLE" /></title>

	<%-- Meta --%>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<c:import url="/WEB-INF/aps/jsp/models/inc/lesscss-active/lesscss.jsp" />
		<c:import url="/WEB-INF/aps/jsp/models/inc/models-common-utils.jsp" />

		<script>
				window.basePath = '<wp:resourceURL />unify/';
				window.scrolltotop=window.scrolltotop||{};
				window.scrolltotop.controlHTML=window.scrolltotop.controlHTML||'<img src="<wp:resourceURL />unify/assets/img/up.png" style="width:51px; height:42px" />';
		</script>

		<%-- CSS Global Compulsory--%>
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/style.css">
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/headers/header1.css">
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/style_responsive.css">
			<link rel="shortcut icon" href="favicon.ico">
		<%-- CSS Implementing Plugins --%>
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/plugins/font-awesome/css/font-awesome.css">
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/plugins/flexslider/flexslider.css" type="text/css" media="screen">
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/plugins/parallax-slider/css/parallax-slider.css" type="text/css">
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/plugins/bxslider/jquery.bxslider.css">
		<%-- CSS Theme --%>
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/themes/red.css" id="style_color">
			<link rel="stylesheet" href="<wp:resourceURL />/unify/assets/css/themes/headers/header1-red.css" id="style_color-header-1">
</head>

<body>
	<div class="top">
		<div class="container">
			<%-- 1. Header - Menu Small  --%>
			<wp:show frame="1" />
			<jsp:include page="unify-inc/login.jsp" />
			<jsp:include page="unify-inc/widget-language_bar.jsp" />
		</div>
	</div>

	<div class="header">
		<div class="container">
			<%-- Logo --%>
			<div class="logo logoimg">
				<a href="<wp:url page="homepage" />" class="logoimg">
					<%-- 0. Header - Logo  --%>
					<wp:show frame="0" />
				</a>
			</div>
			<div class="navbar">
				<div class="navbar-inner">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
					</a><!-- /nav-collapse -->
					<div class="nav-collapse collapse">
						<%-- 2. Header - Menu Main  --%>
							<wp:show frame="2" />
					</div><!-- /nav-collapse -->
				</div><!-- /navbar-inner -->
			</div>
		</div>
	</div>

<%-- 3. Slider  --%>
	<pocwp:checkWidgetOutputter frame="3">
		<div class="slider-inner">
			<div id="da-slider" class="da-slider">
				<pocwp:show frame="3" />
				<nav class="da-arrows">
						<span class="da-arrows-prev"></span>
						<span class="da-arrows-next"></span>
				</nav>
			</div>
		</div>
	</pocwp:checkWidgetOutputter>


	<%-- Purchase Block --%>
	<pocwp:checkWidgetOutputter frame="4">
		<div class="row-fluid purchase margin-bottom-30">
			<div class="container">
				<div class="span12">
					<%-- 4. Content II  --%>
					<pocwp:show frame="4" />
				</div>
			</div>
		</div>
	</pocwp:checkWidgetOutputter>
	
<div id="body-container" class="container">
	<pocwp:checkWidgetOutputter frame="5">
		<div class="row-fluid">
			<div class="span4">
				<div class="service clearfix">
					<%-- 5. Banner 1 (left)  --%>
					<pocwp:show frame="5" />
				</div>
			</div>
			<div class="span4">
				<div class="service clearfix">
					<%-- 6. Banner 2 (center)  --%>
					<pocwp:show frame="6" />
				</div>
			</div>
			<div class="span4">
				<div class="service clearfix">
					<%-- 7. Banner 3 (right) --%>
					<pocwp:show frame="7" />
				</div>
			</div>
		</div>
	</pocwp:checkWidgetOutputter>


	<%-- 8. Content VI  --%>
	<pocwp:checkWidgetOutputter frame="8">
		<div class="container"><div class="row-fluid">
			<pocwp:show frame="8" />
		</div></div>
	</pocwp:checkWidgetOutputter>
	<%-- 9. Content VII  --%>
	<pocwp:checkWidgetOutputter frame="9">
		<div class="container"><div class="row-fluid">
			<pocwp:show frame="9" />
		</div></div>
	</pocwp:checkWidgetOutputter>
	<%-- 10. Content VIII  --%>
	<pocwp:checkWidgetOutputter frame="10">
		<div class="container"><div class="row-fluid">
			<pocwp:show frame="10" />
		</div></div>
	</pocwp:checkWidgetOutputter>
	<%-- 11. Content IX  --%>
	<pocwp:checkWidgetOutputter frame="11">
		<div class="container"><div class="row-fluid">
			<pocwp:show frame="11" />
		</div></div>
	</pocwp:checkWidgetOutputter>
	<%-- 12. Content X  --%>
	<pocwp:checkWidgetOutputter frame="12">
		<div class="container"><div class="row-fluid">
			<pocwp:show frame="12" />
		</div></div>
	</pocwp:checkWidgetOutputter>

</div>

<%--=== Footer ===--%>
<div class="footer">
	<div class="container">
		<div class="row-fluid">
			<div class="span4">
				<%-- 13. Footer 1  --%>
					<wp:show frame="13" />
			</div>
			<div class="span4">
				<%-- 14. Footer 2  --%>
					<wp:show frame="14" />
			</div>
			<div class="span4">
				<%-- 15. Footer 3  --%>
					<wp:show frame="15" />
			</div>
		</div>
	</div>
</div>
<%--=== End Footer ===--%>

<%--=== Copyright ===--%>
<div class="copyright">
	<div class="container">
		<div class="row-fluid">
			<div class="span8">
					<p><wp:i18n key="PORTAL_CREDITS" escapeXml="false" /></p>
			</div>
			<div class="span4 logoimg">
				<%-- 0. Header - Logo  --%>
					<div class="pull-right"><wp:show frame="0" /></div>
			</div>
		</div>
	</div>
</div>
<%--=== End Copyright ===--%>

<%-- JS Global Compulsory --%>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/js/modernizr.custom.js"></script>
<%-- JS Implementing Plugins --%>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/plugins/bxslider/jquery.bxslider.js"></script>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/plugins/back-to-top.js"></script>
<%-- JS Page Level --%>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/js/app.js"></script>
<script type="text/javascript" src="<wp:resourceURL />unify/assets/js/pages/index.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function() {
				App.init();
				App.initSliders();
				App.initBxSlider1();
				Index.initParallaxSlider();
		});
</script>
<!--[if lt IE 9]>
		<script src="<wp:resourceURL />unify/assets/js/respond.js"></script>
<![endif]-->
</body>
</html>
