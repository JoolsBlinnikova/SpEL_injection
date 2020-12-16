<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            background-image: url("../../resources/bg1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            text-align: center;
            color: #ffffff;
            margin: 15%;
        }
    </style>
</head>

<body>
<h1>Welcome to the notes app</h1>
<h3>Add your notes and don't forget anything</h3>
<br>
<a href="${pageContext.request.contextPath}/notesList"><h3>Go to notes</h3></a>
</body>
</html>