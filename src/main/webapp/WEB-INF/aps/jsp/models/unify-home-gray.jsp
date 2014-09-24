<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
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

		<jsp:include page="inc/lesscss-active/lesscss.jsp" />
		<jsp:include page="inc/models-common-utils.jsp" />

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
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/themes/light.css" id="style_color">
			<link rel="stylesheet" href="<wp:resourceURL />/unify/assets/css/themes/headers/header1-light.css" id="style_color-header-1">
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
<c:set var="frame3"><wp:show frame="3" /></c:set>
	<c:if test="${!(empty frame3)}">
			<div class="slider-inner">
				<div id="da-slider" class="da-slider">
					<c:out value="${frame3}" escapeXml="false" />
					<nav class="da-arrows">
							<span class="da-arrows-prev"></span>
							<span class="da-arrows-next"></span>
					</nav>
				</div>
			</div>
	</c:if>


	<%-- Purchase Block --%>
	<c:set var="frame4"><wp:show frame="4" /></c:set>
	<c:if test="${!(empty frame4)}">
		<div class="row-fluid purchase margin-bottom-30">
				<div class="container">
					<div class="span12">
							<%-- 4. Content II  --%>
								<c:out value="${frame4}" escapeXml="false" />
					</div>
				</div>
		</div>
	</c:if>

<div id="body-container" class="container">
	<c:set var="frame5"><wp:show frame="5" /></c:set>
	<c:set var="frame6"><wp:show frame="6" /></c:set>
	<c:set var="frame7"><wp:show frame="7" /></c:set>
	<c:if test="${not empty frame5}">
		<div class="row-fluid">
			<div class="span4">
				<div class="service clearfix">
					<%-- 5. Banner 1 (left)  --%>
						<c:out value="${frame5}" escapeXml="false" />
				</div>
			</div>
			<div class="span4">
				<div class="service clearfix">
						<%-- 6. Banner 2 (center)  --%>
							<c:out value="${frame6}" escapeXml="false" />
				</div>
			</div>
			<div class="span4">
				<div class="service clearfix">
					<%-- 7. Banner 3 (right)  --%>
						<c:out value="${frame7}" escapeXml="false" />
				</div>
			</div>
		</div>
	</c:if>


	<%-- 8. Content VI  --%>
		<c:set var="frame8"><wp:show frame="8" /></c:set>
		<c:if test="${!(empty frame8)}">
			<div class="container"><div class="row-fluid">
				<c:out value="${frame8}" escapeXml="false" />
			</div></div>
		</c:if>
	<%-- 9. Content VII  --%>
		<c:set var="frame9"><wp:show frame="9" /></c:set>
		<c:if test="${!(empty frame9)}">
			<div class="container"><div class="row-fluid">
				<c:out value="${frame9}" escapeXml="false" />
			</div></div>
		</c:if>
	<%-- 10. Content VIII  --%>
		<c:set var="frame10"><wp:show frame="10" /></c:set>
		<c:if test="${!(empty frame10)}">
			<div class="container"><div class="row-fluid">
				<c:out value="${frame10}" escapeXml="false" />
			</div></div>
		</c:if>
	<%-- 11. Content IX  --%>
		<c:set var="frame11"><wp:show frame="11" /></c:set>
		<c:if test="${!(empty frame11)}">
			<div class="container"><div class="row-fluid">
				<c:out value="${frame11}" escapeXml="false" />
			</div></div>
		</c:if>
	<%-- 12. Content X  --%>
		<c:set var="frame12"><wp:show frame="12" /></c:set>
		<c:if test="${!(empty frame12)}">
			<div class="container"><div class="row-fluid">
				<c:out value="${frame12}" escapeXml="false" />
			</div></div>
		</c:if>

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
