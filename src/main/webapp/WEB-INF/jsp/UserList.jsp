
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>






<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >

<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >
    <div class="header">
        <a href="#default" class="logo">PRODUCT</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="/">Login</a>
            <a href="/user">NewUser</a>
            <a href="/Login">Brand</a>

        <%--            <a href="/bb">List</a>--%>
        </div>
    </div>
</head>
<body>
<script>
    // var countNo;
    //     function edit(){
    //         countNo=document.getElementById('quantity').value;
    //         alert(document.getElementById('quantity').value)
    //
    // }

</script>
<c:if test="${errorsMessage != null}">
    <script>
        Swal.fire({
            title: 'Error!',
            text: '${errorsMessage}',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>
<c:if test="${errorsMessage == null}">
    <script>
        Swal.fire({
            title: 'Error!',
            text: '${errorsMessage}',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>
<style>
    input{
        border: hidden;
        /*text-align: center;*/
        margin-top:20px;
        background:#f8f8f8

    }
    table{
        border: 1px solid;
        border-collapse: collapse;
    }
    th, td {
        padding: 15px;
    /text-align: left;

    }
</style>
<body></body>


<%--<div  method="get" modelAttribute="listUser">--%>

<table border="1" class="table table-striped table-responsive-md"  >
    <thead>
    <th>Count</th>

    <th>Name</th>
    <th>Address</th>
    <th>Email</th>
<%--    <th>Image</th>--%>
    <th>OderDate</th>


    </thead>
    <tbody>
    <c:forEach var="emp" items="${listUsers}" varStatus="counter">
        <tr>
            <td>${counter.count}</td>
            <form:form method="get"  modelAttribute="emp">
                <td> ${emp.name}</td >
                <td> ${emp.address}</td>
                <td>${emp.email}</td>
<%--                <td>${emp.image}</td>--%>
                <td>${emp.date}  </td>
            </form:form>

        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="Login" class="btn btn-success " >Back</a>

</body>
</html>

<style>
    .header {
        overflow: hidden;
        background-color: #f1f1f1;
        padding: 20px 10px;
    }

    /* Style the header links */
    .header a {
        float: left;
        color: black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px;
        line-height: 25px;
        border-radius: 4px;
    }

    /* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
    .header a.logo {
        font-size: 25px;
        font-weight: bold;
    }

    /* Change the background color on mouse-over */
    .header a:hover {
        background-color: #ddd;
        color: black;
    }

    /* Style the active/current link*/
    .header a.active {
        background-color: dodgerblue;
        color: white;
    }

    /* Float the link section to the right */
    .header-right {
        float: right;
    }

    /* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
    @media screen and (max-width: 500px) {
        .header a {
            float: none;
            display: block;
            text-align: left;
        }
        .header-right {
            float: none;
        }
    }
</style>



<%--<form action="/add" method="get">--%>
<%--    <input type="number" id="quantity" name="quantity">--%>

<%--    <button  class="btn btn-primary">Add</button>--%>
<%--</form>--%>
<%--value="<%=request.getParameter("quantity")%>"--%>
<%--value="${paramValues.empty.document.getElementById('quantity').value}"--%>