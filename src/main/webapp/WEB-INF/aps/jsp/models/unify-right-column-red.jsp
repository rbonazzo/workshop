<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="pocwp" uri="/WEB-INF/tld/poc-aps-core.tld" %>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--><html lang="<wp:info key="currentLang" />"> <!--<![endif]-->
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
			<link rel="stylesheet" href="<wp:resourceURL />unify/assets/css/themes/red.css" id="style_color">
			<link rel="stylesheet" href="<wp:resourceURL />/unify/assets/css/themes/headers/header1-red.css" id="style_color-header-1">
			
        <%-- JS_JQUERY: (mandatory) it's used to load the necessary coming from the plugin. It also set the flag "outputHeadInfo_JS_JQUERY_isHere"  --%>
        <wp:outputHeadInfo type="JS_JQUERY">
            <c:set var="outputHeadInfo_JS_JQUERY_isHere" value="${true}" />
            <wp:printHeadInfo />    
        </wp:outputHeadInfo>
			
</head>
<body>
		<%-- Language --%>
		<div class="top">
			<div class="container">
				<%-- 1. Header - Menu Small  --%>
				<wp:show frame="1" />
				<jsp:include page="unify-inc/login.jsp" />
				<jsp:include page="unify-inc/widget-language_bar.jsp" />
			</div>
		</div>
		<%-- Header --%>
		<div class="header">
			<div class="container">
				<%-- Logo --%>
				<div class="logo logoimg">
					<a href="<wp:url page="homepage" />" class="logoimg">
						<%-- 0. Header - Logo  --%>
						<wp:show frame="0" />
					</a>
				</div>
				<%-- Menu --%>
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
			</div><!-- /container -->
		</div><!--/header -->
		
		<pocwp:checkWidgetOutputter frame="3">
			<div class="breadcrumbs margin-bottom-20">
				<div class="container">
							<%-- <h1 class="color-green pull-left"><wp:currentPage param="title" /></h1> --%>
							<%-- 3. Breadcrumbs  --%>
							<div class="pull-right">
								<wp:show frame="3" />
							</div>
					</div>
			</div>
		</pocwp:checkWidgetOutputter>
		
		<div id="body-container" class="container">
			<div class="row-fluid">
				<%-- Central Contents --%>
					<div class="span9">
						<div class="row-fluid margin-bottom-40">
							<%-- 4. Column Right I //the main frame  --%>
								<wp:show frame="4" />
						</div>
						<div class="row-fluid margin-bottom-40">
							<%-- 5. Column Right I //the main frame  --%>
								<wp:show frame="5" />
						</div>
						<div class="row-fluid margin-bottom-40">
							<%-- 6. Column Right II  --%>
								<wp:show frame="6" />
						</div>
						<div class="row-fluid margin-bottom-40">
							<%-- 7. Column Right III  --%>
								<wp:show frame="7" />
						</div>
						<div class="row-fluid margin-bottom-40">
							<%-- 8. Column Right IV  --%>
								<wp:show frame="8" />
						</div>
					</div><%-- /span9 --%>

				<!-- Side Part -->
					<div class="span3">
						<div class="margin-bottom-20">
						  <%-- 9. Column Left IV  --%>
						    <wp:show frame="9" />
						</div>
						<div class="margin-bottom-20">
						  <%-- 10. Column Left II  --%>
						    <wp:show frame="10" />
						</div>
						<div class="margin-bottom-20">
						  <%-- 11. Column Left III  --%>
						    <wp:show frame="11" />
						</div>
						<div class="margin-bottom-20">
						  <%-- 11. Column Left III  --%>
						    <wp:show frame="12" />
						</div>
					</div>

			</div><!--/span9-->
		</div><!--/span9-->
	</div><!--/row-fluid-->
</div><!--/container-->

<%-- Footer --%>
<div class="footer">
	<div class="container">
		<div class="row-fluid">
			<div class="span4">
				<wp:show frame="13" />
			</div>
			<div class="span4">
				<wp:show frame="14" />
			</div>
			<div class="span4">
				<wp:show frame="15" />
			</div>
		</div>
	</div>
</div>
<%-- End Footer --%>

<%-- Copyright --%>
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
<%-- Copyright --%>

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
