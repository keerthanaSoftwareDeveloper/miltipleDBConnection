<%--<%@ page import="javax.security.auth.Subject" %>--%>
<%--<%@ page import="org.springframework.boot.web.servlet.server.Session" %>--%>
<%--<%@ page import="java.util.Date" %>--%>
<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>

<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>






<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<meta http-equiv="refresh" content="15;url=http://www.somewhere.com/" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >

<html>
<head>
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
<%--    <script src="plugins/sweetalert2/sweetalert2.js"></script>--%>
<%--    <link rel="stylesheet" href="plugins/sweetalert2/sweetalert2.js">--%>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >--%>
    <div class="header">
        <a href="#default" class="logo">PRODUCT</a>
        <div class="header-right">
            <a class="active" href="/">Home</a>
            <a href="/">Login</a>
            <a href="/user">NewUser</a>
            <a href="/Login">Brand</a>
        </div>
    </div>
</head>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">--%>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<%--<script>--%>
    <%
    int timeout = session.getMaxInactiveInterval();
        System.out.println("Time count"+timeout);
    response.setHeader("Refresh", timeout + "; URL = UserLogin.jsp");
    %>


<%--<c:if test="${ warning !=null }">--%>
<%--    <script>--%>
<%--        Swal.fire({--%>
<%--            // toast: true,--%>
<%--            title: 'Error!',--%>
<%--            text: '${warning}',--%>
<%--            icon: 'error',--%>
<%--            animation: true,--%>
<%--            // position: 'posted',--%>
<%--            showConfirmButton: true,--%>
<%--            cancelButton:true,--%>
<%--            cancelButtonText:'No',--%>
<%--            confirmButtonText: 'OK'--%>
<%--        });--%>
<%--    </script>--%>
<%--</c:if>--%>
<%--</script>--%>

<%--//     int time=session.getA--%>
<%--// var idleTime = 0;--%>
<%--// alert("hiiiiiiiiiii");--%>
<%--//--%>
<%--// $(document).ready(function () {--%>
<%--// var idleInterval = (timerIncrement, 60000); // 1 minute--%>
<%--// console.log(idleInterval)--%>
<%--// $(this).mousemove(function (e) {--%>
<%--//     // alert("hgjghjghjhgjhjghjhjhj")--%>
<%--// idleTime = 0;--%>
<%--// });--%>
<%--// $(this).keypress(function (e) {--%>
<%--// idleTime = 0;--%>
<%--//     alert("keyyyyyyyyyyyyyyyy")--%>
<%--//--%>
<%--// });--%>
<%--// });--%>
<%--//--%>
<%--// function timerIncrement() {--%>
<%--//     idleTime = idleTime + 1;--%>
<%--//     if (idleTime > 1) {--%>
<%--//         alert("popuppppppp");// 1 minutes--%>
<%--//     }--%>
<%--// }--%>

<%--</script>--%>


<%--    <c:if test="${warning!=null}">--%>
<%--    <script>--%>
<%--        let timerInterval--%>

<%--        Swal.fire({--%>
<%--            toast: true,--%>
<%--            icon: 'warning',--%>
<%--            title: 'warning!',--%>
<%--            html: 'Session  will close in <strong>timer</strong>  milli seconds. did you continue',--%>
<%--            timer: 30000,--%>
<%--            position: 'bottom-right',--%>
<%--            showConfirmButton: true,--%>
<%--            showCancelButton:true,--%>
<%--            cancelButton:true,--%>
<%--            timerProgressBar: true,--%>
<%--            confirmButtonText:'Yes',--%>
<%--            cancelButtonText:'No',--%>
<%--            closeOnConfirm: false,--%>

<%--            didOpen: (toast) => {--%>
<%--                toast.addEventListener('mouseenter', Swal.stopTimer)--%>
<%--                toast.addEventListener('mouseleave', Swal.resumeTimer)--%>
<%--            },--%>

<%--              onBeforeOpen: () => {--%>
<%--              Swal.showLoading()--%>
<%--              timerInterval = setInterval(() => {--%>
<%--              Swal.getHtmlContainer().querySelector('strong')--%>
<%--              .textContent = Swal.getTimerLeft()--%>
<%--              }, 1)--%>
<%--              },--%>
<%--              onClose: () => {--%>
<%--                  window.location.href = "/";--%>
<%--              clearInterval(timerInterval)--%>

<%--              },--%>


<%--                function(){--%>
<%--                    window.location.href = "/";--%>
<%--                }--%>
<%--        })--%>










<%--</script>--%>

<%--    </c:if>--%>

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



    <table border="1" class="table table-striped table-responsive-md"  >
        <thead>
        <th>Count</th>
<%--        <th>Id</th>--%>
        <th>Brand</th>
        <th>Product Name</th>
        <th>Product Prize</th>
        <th>ADD Quantity</th>
        <th>Action</th>


        </thead>
        <tbody>

        <c:forEach var="emp" items="${user}" varStatus="counter">
            <tr>
                <td>${counter.count}</td>
                <form method="POST" action="/update/${emp.id}" >

                <td><input type="text" name="brand" value=" ${emp.brand}" readonly></td >
                <td><input type="text" name="productName" value=" ${emp.productName}" readonly> </td>
                <td><input type="text" name="prize" value=" ${emp.prize}" readonly></td>

                <td><input type="text" name="quantity" placeholder="Enter Quantity" maxlength="5" onkeydown="return ( event.ctrlKey || event.altKey)
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false)
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9)
                    || (event.keyCode>34 && event.keyCode<40)
                    || (event.keyCode===46)"  required></td>
                    <td><button type="submit"  class="btn btn-success">ADD</button></td>


                </form>




            </tr>
        </c:forEach>

     </tbody>
    </table>
<%--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
<%--    <script type="text/javascript">--%>
<%--        $(function () {--%>
<%--            $("#btnRedirect").click(function () {--%>
<%--                var seconds = 15;--%>
<%--                $("#dvCountDown").show();--%>
<%--                $("#lblCount").html(seconds);--%>
<%--                setInterval(function () {--%>
<%--                        seconds--;--%>
<%--                    $("#lblCount").html(seconds);--%>
<%--                    if (seconds == 0) {--%>
<%--                        $("#dvCountDown").hide();--%>
<%--                        window.location = "/";--%>
<%--                    }--%>
<%--                }, 1000);--%>
<%--            });--%>
<%--        });--%>
<%--    </script>--%>
<a href="Login" class="btn btn-success " >Back</a>







</body>
</html>
<style>
    body{
        text-align: center;
        font-size: 14px;
        background-color: #DBE3E6;
    }
   . h1{
        font-family: 'Pacifico', cursive;
        font-size: 6em;
        color: #252E40;
        line-height: 2.0em;
    }
    button{
        background-color: #F16669;
        border: none;
        padding: 15px 20px;
        color: white;
        font-size: 2em;
        margin-top: 40px;
        transition: 1s;
        cursor: pointer;
        border-radius: 4px;
    }

    button:hover{
        /*background-color: darken(#F16669, 30)*/
    }





    .header {
        overflow: hidden;
        background-color: #f1f1f1;
        padding: 20px 10px;
    }

    /* Style the header links */
    .header a {
        /*background-color: dodgerblue;*/
        color: white;
        float: left;
        /*color: black;*/
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






    <%--<form action="/add" method="get">--%>
<%--    <input type="number" id="quantity" name="quantity">--%>

<%--    <button  class="btn btn-primary">Add</button>--%>
<%--</form>--%>
<%--value="<%=request.getParameter("quantity")%>"--%>
<%--value="${paramValues.empty.document.getElementById('quantity').value}"--%>