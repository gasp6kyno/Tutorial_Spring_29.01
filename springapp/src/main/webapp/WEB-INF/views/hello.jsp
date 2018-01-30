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
<title>Hello :: Spring Application</title>
</head>
<body>
	<div class="container">
		<div class="col align-self-center">
			<h2 class="row justify-content-center">Hello - Spring Application</h2>
			<p class="row justify-content-center">Greetings, it is now <c:out value="${now}"/></p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="row justify-content-center">
					<a href="index.jsp" class="btn btn-success" >BACK</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>