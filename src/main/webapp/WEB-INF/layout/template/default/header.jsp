<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<sec:authentication var="principal" property="principal" />

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/'/>"><spring:message code="app.title"/></a>
		</div>
		
		<div class="collapse navbar-collapse" id="navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="?lang=en"><spring:message code="lang.en"/></a></li>
				<li><a href="?lang=fr"><spring:message code="lang.fr"/></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						${principal.username}<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/logout'/>"><spring:message code="general.logout"/></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>