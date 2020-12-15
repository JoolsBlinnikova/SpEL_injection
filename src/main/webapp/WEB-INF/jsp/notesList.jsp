<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Person List</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            background-color: #d4d0fb;
            background-size: cover;
            background-repeat: no-repeat;
            text-align: center;
            color: #000000;
            margin-top: 5%;
        }

        #editAddr{
            margin: 0 auto;
        }
    </style>
</head>

<body>
<h1>Your Notes</h1>

<br/><br/>
<div>
    <form action="notesList" method="post" name="addressForm">
        <div>
            <label>
                <p><b>Title:</b>
                <input name="noteTitle">
            </label>
            <br>
            <label>
                <p><b>Note:</b>
                <input name="note">
            </label>
        </div>
        <div class="form-group" id="buttonDiv">
            <button id="editAddr" name="editAddr" type="submit" class="btn btn-outline-dark btn-block" style="width: 20%;">Save
            </button>
        </div>
    </form>

    <table border="1" class="table table-striped">
        <tr>
            <th>Title</th>
            <th>Note</th>
        </tr>
        <c:forEach  items="${notes}" var ="notes">
            <tr>
                <td>${notes.title}</td>
                <td>${notes.note}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>

</html>