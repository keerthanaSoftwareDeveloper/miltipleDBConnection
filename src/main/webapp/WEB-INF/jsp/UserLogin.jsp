<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>

    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/adminlte.min.css">



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>

    <div class="header">
        <a href="#default" class="logo">PRODUCT</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
<%--            <a href="/logout" >Logout</a>--%>
            <a href="/user">NewUser</a>
            <a href="/Login">Brand</a>
        </div>
    </div>


<body>
<h1><center>Customer Login</center></h1>
<br><br>

<div class="container">

<center>
    <form action="/loginUser"  method="get" >

            <input type="email" name="email"  placeholder=" Email"
                   id="email" class="form-control mb-4 col-4"/>

        <input type="password"  name="password" placeholder=" Password" id="password" class="form-control mb-4 col-4" >

        <input type="checkbox" onclick="myFunction()">Show Password

        <button type="submit" class="btn btn-success"> LoginCustomer</button>

    </form>

</center>

</div>

<%--<c:if test="${errorsMessage == null}">--%>
<%--    <script>--%>
<%--        Swal.fire({--%>
<%--            errorsMessage: false,--%>
<%--            &lt;%&ndash;title: 'Error!',&ndash;%&gt;--%>
<%--            &lt;%&ndash;text: '${errorsMessage}',&ndash;%&gt;--%>
<%--            &lt;%&ndash;confirmButtonText: 'OK'&ndash;%&gt;--%>
<%--        });--%>
<%--    </script>--%>
<%--</c:if>--%>
<%--<c:if test="${errorsMessage != null}">--%>
<%--    <script>--%>
<%--        Swal.fire({--%>
<%--            errorsMessage: true,--%>
<%--            title: 'Error!',--%>
<%--            text: '${errorsMessage}',--%>
<%--            confirmButtonText: 'OK'--%>
<%--        });--%>
<%--    </script>--%>
<%--</c:if>--%>
<c:if test="${ not empty errorsMessage}">
        <script>
            Swal.fire({
                toast: true,
                title: 'Error!',
                text: '${errorsMessage}',
                icon: 'error',
                animation: true,
                position: 'posted',
                showConfirmButton: true,
                cancelButton:true,
                cancelButtonText:'No',
                confirmButtonText: 'OK'
            });
        </script>
    </c:if>
<c:if test="${ warning !=null }">
    <script>
        Swal.fire({
            // toast: true,
            title: 'Error!',
            text: '${warning}',
            icon: 'error',
            animation: true,
            // position: 'posted',
            showConfirmButton: true,
            cancelButton:true,
            cancelButtonText:'No',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>

<c:if test="${errorsMessage != null}">
    <script>
        Swal.fire({
            errorsMessage: true,
            title: 'Error!',
            text: '${errorsMessage}',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>

</body>
<script type="text/javascript">
    function myFunction() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }


</script>

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
    input:invalid {
        border-color: black;
        background-color: #ffffff;
    }

    input:focus:invalid {
        outline: none;

    }
     .error {
         color: red
     }


</style>
<!-- jQuery -->
<%--<script src="../../plugins/jquery/jquery.min.js"></script>--%>
<%--<!-- Bootstrap 4 -->--%>
<%--<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<!-- AdminLTE App -->--%>
<%--<script src="../../dist/js/adminlte.min.js"></script>--%>



