<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:importAttribute name="specificCSSs" />
<tiles:importAttribute name="specificJSs" />

<head>
	<tiles:insertAttribute name="head" />
	
	<!-- Specific CSS -->
	<c:forEach var="css" items="${specificCSSs}">
		<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
	</c:forEach>
</head>
<body>
	<div>
		<tiles:insertAttribute name="header" />
	</div>
	<div class="container-fluid">
		<tiles:insertAttribute name="content" />
	</div>
	<div>
		<tiles:insertAttribute name="footer" />
	</div>
	
	<!-- Specific JS -->
	<c:forEach var="script" items="${specificJSs}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach> 
</body>