<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="wp" uri="/aps-core" %>

<wp:info key="langs" var="langs" />
<wp:info key="currentLang" var="currentLang" />

<ul class="loginbar pull-right">
		<li><i class="icon-globe"></i><a>Languages <i class="icon-sort-up"></i></a>
			<ul class="nav-list">
					<c:forEach items="${langs}" var="lang">
					<li class="<c:if test="${lang.code==currentLang}">active</c:if>">
						<a href="<wp:url lang="${lang.code}" />">
							<c:out value="${lang.descr}" />
						</a> <c:if test="${lang.code==currentLang}"><i class="icon-ok"></i></c:if>
					</li>
					</c:forEach>
				</ul>
		</li>
		<%--
		<li class="devider">&nbsp;</li>
		<li><a href="page_faq.html" class="login-btn">Help</a></li>
		<li class="devider">&nbsp;</li>
		<li><a href="login.html" class="login-btn">Login</a></li>
		--%>
</ul>
