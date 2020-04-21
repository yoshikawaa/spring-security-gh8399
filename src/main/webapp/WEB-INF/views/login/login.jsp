<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
    <div id="wrapper">
        <h1>Login</h1>
        <form method="post">
            username:<input name="username" value="demo"><br>
            password:<input type="password" name="password" value="demo"><br>
            redirectTo:<input name="redirectTo" value="https://google.com/"><br>
            <button type="submit">login</button>
            <sec:csrfInput />
        </form>
        <sec:authorize access="isAuthenticated()">
            <form method="post" action="${pageContext.request.contextPath}/logout">
                <button type="submit">logout</button>
                <sec:csrfInput />
            </form>
        </sec:authorize>
    </div>
</body>
</html>
