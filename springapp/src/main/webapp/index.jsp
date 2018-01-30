<%@ include file="/WEB-INF/views/include.jsp" %>

<%-- Redirected because we can't set the welcome page to a virtual URL. --%>
<%-- <c:redirect url="/hello.htm"/> --%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Example :: Spring Application</title>
</head>
<body>
	<div class="container">
	<div class="col align-self-center">
		<h2 class="row justify-content-center">Example - Spring Application</h2>
		<p class="row justify-content-center">This is my test.</p>
	</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="row justify-content-center">
					<a href="hello.htm"><button type="button" class="btn btn-success">HELLO!!</button></a>
				</div>
			</div>
			<div class="col">
				<div class="row justify-content-center">
					<a href="servicios.htm"><button type="button" class="btn btn-success">Servícios</button></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>