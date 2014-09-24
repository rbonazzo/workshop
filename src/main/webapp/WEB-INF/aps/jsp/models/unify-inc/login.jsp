<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pull-right" id="login-box">
&#32;|&#32;
	<c:choose>
		<c:when test="${sessionScope.currentUser != 'guest'}">
			<span class="noscreen sr-only"><wp:i18n key="WELCOME" />,&#32;</span>

			<span class="icon-user"></span>&#32;
			<c:out value="${sessionScope.currentUser}"/>!

			<c:if test="${sessionScope.currentUser.entandoUser}">
				<c:if test="${!sessionScope.currentUser.credentialsNotExpired}">
				<span class="alert">
					<wp:i18n key="USER_STATUS_EXPIRED_PASSWORD" />
					<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action">
						<wp:i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" />
					</a>
				</span>
				</c:if>
			</c:if>

			<wp:ifauthorized permission="enterBackend" var="enterBackend" />
			<c:if test="${enterBackend}">
					<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<wp:info key="currentLang" />" class=""><wp:i18n key="ADMINISTRATION" /></a>
					&#32;
			</c:if>

			<wp:pageWithWidget widgetTypeCode="userprofile_editCurrentUser" var="userprofileEditingPageVar" listResult="false" />
			<c:if test="${null != userprofileEditingPageVar}" >
				&#32;|
				<a href="<wp:url page="${userprofileEditingPageVar.code}" />">
					<wp:i18n key="userprofile_CONFIGURATION" />
				</a>
				&#32;|
			</c:if>

			<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/logout.action">
				<wp:i18n key="LOGOUT" />
			</a>

		</c:when>
		<c:otherwise>
			<%--
			<c:if test="${accountExpired}">
				<div class="alert alert-block alert-error">
					<p><wp:i18n key="USER_STATUS_EXPIRED" /></p>
				</div>
			</c:if>
			<c:if test="${wrongAccountCredential}">
				<div class="alert alert-block alert-error">
					<p><wp:i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
				</div>
			</c:if>

			<form
				action="<wp:url/>"
				method="post"
				class="form-inline">
					<c:if test="${!(empty param.returnUrl)}">
						<input type="hidden" name="returnUrl" value="<c:out value="${param.returnUrl}" />" />
					</c:if>
					<!--
						<label for="username" class="control-label"><wp:i18n key="USERNAME" /></label>
						<label for="password" class="control-label"><wp:i18n key="PASSWORD" /></label>
					-->
						<input type="text" id="username" name="username" class="input-mini" />
						<input type="password" id="password" name="password" class="input-mini" />
						<input type="submit" value="<wp:i18n key="SIGNIN" />" class="btn btn-small" />
			</form>
			--%>
			<wp:pageWithWidget var="loginPage" widgetTypeCode="login_form" />
			<c:if test="${!(empty loginPage)}">
				<a href="
				<wp:url page="${loginPage.code}">
					<wp:urlPar name="returnUrl"><wp:url /></wp:urlPar>
				</wp:url>
				">Login</a>
			</c:if>
		</c:otherwise>
	</c:choose>

</div>
