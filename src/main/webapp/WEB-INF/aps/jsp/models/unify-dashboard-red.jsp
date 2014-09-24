<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
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

		<script>
				window.basePath = '<wp:resourceURL />unify/';
				window.scrolltotop=window.scrolltotop||{};
				window.scrolltotop.controlHTML=window.scrolltotop.controlHTML||'<img src="<wp:resourceURL />unify/assets/img/up.png" style="width:51px; height:42px" />';
		</script>

		<jsp:include page="inc/lesscss-active/lesscss.jsp" />
		<jsp:include page="inc/models-common-utils.jsp" />

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


		<%-- jpmyportal plus - start --%>
	  	<%-- enable jquery if not already included (usually it's included with lesscss.jsp or other utilities
		--%>
			<script src="<wp:resourceURL />static/js/entando-misc-jquery/jquery-1.10.0.min.js"></script>
		<script src="<wp:resourceURL />static/js/entando-misc-jquery-ui/jquery-ui-1.10.3.min.js"></script>
		<script src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/jquery.browser.mobile.js"></script>
		<jsp:include page="/WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/jpmyportalplus_javascript_variables.jsp" />
		<script src="<wp:resourceURL />plugins/jpmyportalplus/static/js/jpmyportalplus.js"></script>
		<link rel="stylesheet" type="text/css" href="<wp:resourceURL />plugins/jpmyportalplus/static/css/jpmyportalplus.css" media="screen" />
		<%-- jpmyportal plus - end --%>


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

		<c:set var="frame3Var"><wp:show frame="3" /></c:set>
		<c:if test="${!(empty frame3Var)}">
			<div class="breadcrumbs margin-bottom-20">
				<div class="container">
							<h1 class="color-green pull-left"><wp:currentPage param="title" /></h1>
							<%-- 3. Breadcrumbs  --%>
							<div class="pull-right">
								<c:out value="${frame3Var}" escapeXml="false" />
							</div>
					</div>
			</div>
		</c:if>

		<div class="container">
			<div class="row-fluid">
				<div id="configure-page" class="margin-medium-vertical">
					<a class="btn btn-info" href="#editshowletlist" id="editshowlet_title"><i class="icon-cog icon-white"></i>&#32;<wp:i18n key="JPMYPORTALPLUS_CONFIGMYHOME" /></a>
				</div>
				<%-- Remember to include the Page Configuration Block --%>
				<jsp:include page="/WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/page_configuration.jsp" />
			</div>
		</div>


	<div id="body-container" class="container">
			<div class="row-fluid" id="widget-columns-container">
				<%-- Central Contents --%>
					<div class="span4 widget-column"  id="widget-col1">
							<%-- 4. Dashboard Left Column I  --%>
								<wp:show frame="4" />
							<%-- 5. Dashboard Left Column II  --%>
								<wp:show frame="5" />
							<%-- 6. Dashboard Left Column III  --%>
								<wp:show frame="6" />
							<%-- 7. Dashboard Left Column IV  --%>
								<wp:show frame="7" />
							<%-- 8. Dashboard Left Column V  --%>
								<wp:show frame="8" />
							<%-- 9. Dashboard Left Column VI  --%>
								<wp:show frame="9" />
							<%-- 10. Dashboard Left Column VII  --%>
								<wp:show frame="10" />
							<%-- 11. Dashboard Left Column VIII  --%>
								<wp:show frame="11" />
							<%-- 12. Dashboard Left Column IX  --%>
								<wp:show frame="12" />
							<%-- 13. Dashboard Left Column X  --%>
								<wp:show frame="13" />
							<%-- 14. Dashboard Left Column XI  --%>
								<wp:show frame="14" />
							<%-- 15. Dashboard Left Column XII  --%>
								<wp:show frame="15" />
							<%-- 16. Dashboard Left Column XIII  --%>
								<wp:show frame="16" />
							<%-- 17. Dashboard Left Column XIV  --%>
								<wp:show frame="17" />
							<%-- 18. Dashboard Left Column XV  --%>
								<wp:show frame="18" />
							<%-- 19. Dashboard Left Column XVI  --%>
								<wp:show frame="19" />
							<%-- 20. Dashboard Left Column XVII  --%>
								<wp:show frame="20" />
							<%-- 21. Dashboard Left Column XVIII  --%>
								<wp:show frame="21" />
							<%-- 22. Dashboard Left Column XIX  --%>
								<wp:show frame="22" />
							<%-- 23. Dashboard Left Column XX  --%>
								<wp:show frame="23" />
							<%-- 24. Dashboard Left Column XXI  --%>
								<wp:show frame="24" />
							<%-- 25. Dashboard Left Column XXII  --%>
								<wp:show frame="25" />
							<%-- 26. Dashboard Left Column XXIII  --%>
								<wp:show frame="26" />
							<%-- 27. Dashboard Left Column XXIV  --%>
								<wp:show frame="27" />
							<%-- 28. Dashboard Left Column XXV  --%>
								<wp:show frame="28" />
							<%-- 29. Dashboard Left Column XXVI  --%>
								<wp:show frame="29" />
							<%-- 30. Dashboard Left Column XXVII  --%>
								<wp:show frame="30" />
							<%-- 31. Dashboard Left Column XXVIII  --%>
								<wp:show frame="31" />
							<%-- 32. Dashboard Left Column XXIX  --%>
								<wp:show frame="32" />
							<%-- 33. Dashboard Left Column XXX  --%>
								<wp:show frame="33" />
							<%-- 34. Dashboard Left Column XXXI  --%>
								<wp:show frame="34" />
							<%-- 35. Dashboard Left Column XXXII  --%>
								<wp:show frame="35" />
							<%-- 36. Dashboard Left Column XXXIII  --%>
								<wp:show frame="36" />
							<%-- 37. Dashboard Left Column XXXIV  --%>
								<wp:show frame="37" />
							<%-- 38. Dashboard Left Column XXXV  --%>
								<wp:show frame="38" />
							<%-- 39. Dashboard Left Column XXXVI  --%>
								<wp:show frame="39" />
							<%-- 40. Dashboard Left Column XXXVII  --%>
								<wp:show frame="40" />
							<%-- 41. Dashboard Left Column XXXVIII  --%>
								<wp:show frame="41" />
							<%-- 42. Dashboard Left Column XXXIX  --%>
								<wp:show frame="42" />
							<%-- 43. Dashboard Left Column XL  --%>
								<wp:show frame="43" />
							<%-- 44. Dashboard Left Column XLI  --%>
								<wp:show frame="44" />
							<%-- 45. Dashboard Left Column XLII  --%>
								<wp:show frame="45" />
							<%-- 46. Dashboard Left Column XLIII  --%>
								<wp:show frame="46" />
							<%-- 47. Dashboard Left Column XLIV  --%>
								<wp:show frame="47" />
							<%-- 48. Dashboard Left Column XLV  --%>
								<wp:show frame="48" />
							<%-- 49. Dashboard Left Column XLVI  --%>
								<wp:show frame="49" />
							<%-- 50. Dashboard Left Column XLVII  --%>
								<wp:show frame="50" />
							<%-- 51. Dashboard Left Column XLVIII  --%>
								<wp:show frame="51" />
							<%-- 52. Dashboard Left Column XLIX  --%>
								<wp:show frame="52" />
							<%-- 53. Dashboard Left Column L  --%>
								<wp:show frame="53" />
					</div>



					<div class="span4 widget-column" id="widget-col2">
							<%-- 54. Dashboard Middle Column I //the main frame  --%>
								<wp:show frame="54" />
							<%-- 55. Dashboard Middle Column II  --%>
								<wp:show frame="55" />
							<%-- 56. Dashboard Middle Column III  --%>
								<wp:show frame="56" />
							<%-- 57. Dashboard Middle Column IV  --%>
								<wp:show frame="57" />
							<%-- 58. Dashboard Middle Column V  --%>
								<wp:show frame="58" />
							<%-- 59. Dashboard Middle Column VI  --%>
								<wp:show frame="59" />
							<%-- 60. Dashboard Middle Column VII  --%>
								<wp:show frame="60" />
							<%-- 61. Dashboard Middle Column VIII  --%>
								<wp:show frame="61" />
							<%-- 62. Dashboard Middle Column IX  --%>
								<wp:show frame="62" />
							<%-- 63. Dashboard Middle Column X  --%>
								<wp:show frame="63" />
							<%-- 64. Dashboard Middle Column XI  --%>
								<wp:show frame="64" />
							<%-- 65. Dashboard Middle Column XII  --%>
								<wp:show frame="65" />
							<%-- 66. Dashboard Middle Column XIII  --%>
								<wp:show frame="66" />
							<%-- 67. Dashboard Middle Column XIV  --%>
								<wp:show frame="67" />
							<%-- 68. Dashboard Middle Column XV  --%>
								<wp:show frame="68" />
							<%-- 69. Dashboard Middle Column XVI  --%>
								<wp:show frame="69" />
							<%-- 70. Dashboard Middle Column XVII  --%>
								<wp:show frame="70" />
							<%-- 71. Dashboard Middle Column XVIII  --%>
								<wp:show frame="71" />
							<%-- 72. Dashboard Middle Column XIX  --%>
								<wp:show frame="72" />
							<%-- 73. Dashboard Middle Column XX  --%>
								<wp:show frame="73" />
							<%-- 74. Dashboard Middle Column XXI  --%>
								<wp:show frame="74" />
							<%-- 75. Dashboard Middle Column XXII  --%>
								<wp:show frame="75" />
							<%-- 76. Dashboard Middle Column XXIII  --%>
								<wp:show frame="76" />
							<%-- 77. Dashboard Middle Column XXIV  --%>
								<wp:show frame="77" />
							<%-- 78. Dashboard Middle Column XXV  --%>
								<wp:show frame="78" />
							<%-- 79. Dashboard Middle Column XXVI  --%>
								<wp:show frame="79" />
							<%-- 80. Dashboard Middle Column XXVII  --%>
								<wp:show frame="80" />
							<%-- 81. Dashboard Middle Column XXVIII  --%>
								<wp:show frame="81" />
							<%-- 82. Dashboard Middle Column XXIX  --%>
								<wp:show frame="82" />
							<%-- 83. Dashboard Middle Column XXX  --%>
								<wp:show frame="83" />
							<%-- 84. Dashboard Middle Column XXXI  --%>
								<wp:show frame="84" />
							<%-- 85. Dashboard Middle Column XXXII  --%>
								<wp:show frame="85" />
							<%-- 86. Dashboard Middle Column XXXIII  --%>
								<wp:show frame="86" />
							<%-- 87. Dashboard Middle Column XXXIV  --%>
								<wp:show frame="87" />
							<%-- 88. Dashboard Middle Column XXXV  --%>
								<wp:show frame="88" />
							<%-- 89. Dashboard Middle Column XXXVI  --%>
								<wp:show frame="89" />
							<%-- 90. Dashboard Middle Column XXXVII  --%>
								<wp:show frame="90" />
							<%-- 91. Dashboard Middle Column XXXVIII  --%>
								<wp:show frame="91" />
							<%-- 92. Dashboard Middle Column XXXIX  --%>
								<wp:show frame="92" />
							<%-- 93. Dashboard Middle Column XL  --%>
								<wp:show frame="93" />
							<%-- 94. Dashboard Middle Column XLI  --%>
								<wp:show frame="94" />
							<%-- 95. Dashboard Middle Column XLII  --%>
								<wp:show frame="95" />
							<%-- 96. Dashboard Middle Column XLIII  --%>
								<wp:show frame="96" />
							<%-- 97. Dashboard Middle Column XLIV  --%>
								<wp:show frame="97" />
							<%-- 98. Dashboard Middle Column XLV  --%>
								<wp:show frame="98" />
							<%-- 99. Dashboard Middle Column XLVI  --%>
								<wp:show frame="99" />
							<%-- 100. Dashboard Middle Column XLVII  --%>
								<wp:show frame="100" />
							<%-- 101. Dashboard Middle Column XLVIII  --%>
								<wp:show frame="101" />
							<%-- 102. Dashboard Middle Column XLIX  --%>
								<wp:show frame="102" />
							<%-- 103. Dashboard Middle Column L  --%>
								<wp:show frame="103" />
					</div>




					<div class="span4 widget-column" id="widget-col3">
						<%-- 104. Dashboard Right Column I  --%>
							<wp:show frame="104" />
						<%-- 105. Dashboard Right Column II  --%>
							<wp:show frame="105" />
						<%-- 106. Dashboard Right Column III  --%>
							<wp:show frame="106" />
						<%-- 107. Dashboard Right Column IV  --%>
							<wp:show frame="107" />
						<%-- 108. Dashboard Right Column V  --%>
							<wp:show frame="108" />
						<%-- 109. Dashboard Right Column VI  --%>
							<wp:show frame="109" />
						<%-- 110. Dashboard Right Column VII  --%>
							<wp:show frame="110" />
						<%-- 111. Dashboard Right Column VIII  --%>
							<wp:show frame="111" />
						<%-- 112. Dashboard Right Column IX  --%>
							<wp:show frame="112" />
						<%-- 113. Dashboard Right Column X  --%>
							<wp:show frame="113" />
						<%-- 114. Dashboard Right Column XI  --%>
							<wp:show frame="114" />
						<%-- 115. Dashboard Right Column XII  --%>
							<wp:show frame="115" />
						<%-- 116. Dashboard Right Column XIII  --%>
							<wp:show frame="116" />
						<%-- 117. Dashboard Right Column XIV  --%>
							<wp:show frame="117" />
						<%-- 118. Dashboard Right Column XV  --%>
							<wp:show frame="118" />
						<%-- 119. Dashboard Right Column XVI  --%>
							<wp:show frame="119" />
						<%-- 120. Dashboard Right Column XVII  --%>
							<wp:show frame="120" />
						<%-- 121. Dashboard Right Column XVIII  --%>
							<wp:show frame="121" />
						<%-- 122. Dashboard Right Column XIX  --%>
							<wp:show frame="122" />
						<%-- 123. Dashboard Right Column XX  --%>
							<wp:show frame="123" />
						<%-- 124. Dashboard Right Column XXI  --%>
							<wp:show frame="124" />
						<%-- 125. Dashboard Right Column XXII  --%>
							<wp:show frame="125" />
						<%-- 126. Dashboard Right Column XXIII  --%>
							<wp:show frame="126" />
						<%-- 127. Dashboard Right Column XXIV  --%>
							<wp:show frame="127" />
						<%-- 128. Dashboard Right Column XXV  --%>
							<wp:show frame="128" />
						<%-- 129. Dashboard Right Column XXVI  --%>
							<wp:show frame="129" />
						<%-- 130. Dashboard Right Column XXVII  --%>
							<wp:show frame="130" />
						<%-- 131. Dashboard Right Column XXVIII  --%>
							<wp:show frame="131" />
						<%-- 132. Dashboard Right Column XXIX  --%>
							<wp:show frame="132" />
						<%-- 133. Dashboard Right Column XXX  --%>
							<wp:show frame="133" />
						<%-- 134. Dashboard Right Column XXXI  --%>
							<wp:show frame="134" />
						<%-- 135. Dashboard Right Column XXXII  --%>
							<wp:show frame="135" />
						<%-- 136. Dashboard Right Column XXXIII  --%>
							<wp:show frame="136" />
						<%-- 137. Dashboard Right Column XXXIV  --%>
							<wp:show frame="137" />
						<%-- 138. Dashboard Right Column XXXV  --%>
							<wp:show frame="138" />
						<%-- 139. Dashboard Right Column XXXVI  --%>
							<wp:show frame="139" />
						<%-- 140. Dashboard Right Column XXXVII  --%>
							<wp:show frame="140" />
						<%-- 141. Dashboard Right Column XXXVIII  --%>
							<wp:show frame="141" />
						<%-- 142. Dashboard Right Column XXXIX  --%>
							<wp:show frame="142" />
						<%-- 143. Dashboard Right Column XL  --%>
							<wp:show frame="143" />
						<%-- 144. Dashboard Right Column XLI  --%>
							<wp:show frame="144" />
						<%-- 145. Dashboard Right Column XLII  --%>
							<wp:show frame="145" />
						<%-- 146. Dashboard Right Column XLIII  --%>
							<wp:show frame="146" />
						<%-- 147. Dashboard Right Column XLIV  --%>
							<wp:show frame="147" />
						<%-- 148. Dashboard Right Column XLV  --%>
							<wp:show frame="148" />
						<%-- 149. Dashboard Right Column XLVI  --%>
							<wp:show frame="149" />
						<%-- 150. Dashboard Right Column XLVII  --%>
							<wp:show frame="150" />
						<%-- 151. Dashboard Right Column XLVIII  --%>
							<wp:show frame="151" />
						<%-- 152. Dashboard Right Column XLIX  --%>
							<wp:show frame="152" />
						<%-- 153. Dashboard Right Column L  --%>
							<wp:show frame="153" />
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
				<wp:show frame="154" />
			</div>
			<div class="span4">
				<wp:show frame="155" />
			</div>
			<div class="span4">
				<wp:show frame="156" />
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
