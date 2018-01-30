<%@ include file="/WEB-INF/views/include.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title><fmt:message key="title" /></title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col align-self-center">
			<div class="row justify-content-center">
				<h1>
					<fmt:message key="priceincrease.heading" />
				</h1>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<form:form method="post" commandName="priceIncrease">
			<table>
				<tr>
					<td align="right" width="20%">Increase (%):</td>
					<td width="20%"><form:input path="percentage" class="form-control"/></td>
					<td width="60%"><form:errors path="percentage"
							cssClass="error" /></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Execute" class="btn btn-success">
		</form:form>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="row justify-content-center">
					<a href="<c:url value="hello.htm"/>" class="btn btn-success">Home</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>