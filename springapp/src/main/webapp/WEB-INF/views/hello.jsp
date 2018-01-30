<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- <title>Hello :: Spring Application</title> -->
<title><fmt:message key="title"/></title>
</head>
<body>
	<div class="container">
		<div class="col align-self-center">
<!-- 			<h2 class="row justify-content-center">Hello - Spring Application</h2> -->
			<div class="row justify-content-center">
				<h1><fmt:message key="heading"/></h1>
<%-- 			<p class="row justify-content-center">Greetings, it is now <c:out value="${now}"/></p> --%>
			</div>
			<div class="row justify-content-center">
				<p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col align-self-center">
			<h3>Products</h3>
			<br>
			<c:forEach items="${model.products}" var="prod">
				<c:out value="${prod.description}" />
				<i><c:out value="${prod.price}" /> $</i>
				<br>
				<br>
			</c:forEach>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="row justify-content-center">
					 <a href="<c:url value="priceincrease.htm"/>" class="btn btn-success">Increase Prices</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="row justify-content-center">
					<a href="index.jsp" class="btn btn-success">HOME</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>