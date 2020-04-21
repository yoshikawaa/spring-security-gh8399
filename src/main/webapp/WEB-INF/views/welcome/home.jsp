<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
    <div id="wrapper">
        <h1>Hello world!</h1>
        <p>The time on the server is ${serverTime}.</p>
        <sec:authorize access="isAuthenticated()">
            <form method="post" action="${pageContext.request.contextPath}/logout">
                <button type="submit">logout</button>
                <sec:csrfInput />
            </form>
        </sec:authorize>
    </div>
</body>
</html>
