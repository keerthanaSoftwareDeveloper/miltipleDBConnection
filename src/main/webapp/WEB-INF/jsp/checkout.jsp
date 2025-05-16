<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>

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
            <a class="active" href="/">Home</a>
            <a href="/" class="btn btn-danger " >Logout</a>
<%--            <a href="/listimg" class="btn btn-primary">Download</a>--%>
<%--            <a href="/D:/image" class="btn btn-success" download>Download</a>--%>
<%--            <button type="button" class="btn btn-default" style="margin-left: 20px" onclick="onClick()" formaction="/operatorReportsDetails">download pdf</button>--%>


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
<%--   function  onClick(divid)--%>
<%--   {--%>
<%--       // function download_DIVPdf(divid) {--%>
<%--           var pdf = new jsPDF('p', 'pt', 'letter');--%>
<%--           var pdf_name = 'PostMode-'+om+'.pdf';--%>
<%--           // source can be HTML-formatted string, or a reference--%>
<%--           // to an actual DOM element from which the text will be scraped.--%>
<%--           htmlsource = $('#'+divid)[0];--%>

<%--           specialElementHandlers = {--%>
<%--               // element with id of "bypass" - jQuery style selector--%>
<%--               '#bypassme': function (element, renderer) {--%>
<%--                   // true = "handled elsewhere, bypass text extraction"--%>
<%--                   return true--%>
<%--               }--%>
<%--           };--%>
<%--           margins = {--%>
<%--               top: 80,--%>
<%--               bottom: 60,--%>
<%--               left: 40,--%>
<%--               width: 522--%>
<%--           };--%>

<%--           pdf.fromHTML(--%>
<%--               htmlsource, // HTML string or DOM elem ref.--%>
<%--               margins.left, // x coord--%>
<%--               margins.top, { // y coord--%>
<%--                   'width': margins.width, // max width of content on PDF--%>
<%--                   'elementHandlers': specialElementHandlers--%>
<%--               },--%>

<%--               function (dispose) {--%>

<%--                   pdf.save(pdf_name);--%>
<%--               }, margins);--%>
<%--       }--%>
<%--</script>--%>

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

                <form:form method="get" modelAttribute="order">
                    <p><STRONG>Name:</STRONG>   ${order.name}</p>
                    <p><STRONG>Email:</STRONG>${order.email}</p>
                    <p><STRONG>Address:</STRONG>${order.address}</p>
                    <p><strong>Date:</strong>${order.date}</p>
<%--                  <p>Date:  <fmt:formatDate value="${order.date}"  pattern="yyyy/mm/dd"/> </p>--%>
                </form:form>
<form:form method="get" modelAttribute="ptoduct">
<%--









--%>
<%--    <p> Date:${ptoduct.date}</p>--%>
</form:form>

<table border="1" class="table table-striped table-responsive-md"  >
    <thead>
    <th>Count</th>

    <th>Product name</th>
    <th>Brand</th>
    <th>Quantity</th>
    <th>Prize</th>
    <th> Cost</th>

    </thead>
    <tbody>
    <c:forEach var="emp1" items="${dateeee}" varStatus="counter">
        <tr>
            <td>${counter.count}</td>
            <form:form method="get"  modelAttribute="emp">
                <td> ${emp1.productName}</td >
                <td>${emp1.brand}</td>
                <td>${emp1.quantity}</td>
                <td>${emp1.prize}</td>
                <td> ${emp1.cost}</td>

<%--                <td><fmt:formatDate value="${emp.date}" type="date" pattern="dd/MMM/yyyy"/> </td>--%>
            </form:form>

        </tr>
    </c:forEach>
    <tr class="total"  >
        <form:form method="get"  modelAttribute="total">
            <p colspan="5" style=" column-span: 5"><strong>Total Amount: ${total} </strong></p>
        </form:form>
      </tr>
    </tbody>
</table>

<%--<a href="Login" class="btn btn-success " >Back</a>--%>

</body>
</html>

<style>
    .total{
        column-span: none;
        margin-right: 90px;
    }
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


<%--<c:forEach var="date1" items="${dateeee}" varStatus="count">--%>
<%--&lt;%&ndash;<form:form method="get" modelAttribute="date">&ndash;%&gt;--%>
<%--    <--%>
<%--    <p>Brand:${date1.id}</p>--%>
<%--&lt;%&ndash;    <p>Product Name:${date1.q}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p>Prize:${date.cost}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p> Date:${date.productid}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p> Date:${date.userid}</p>&ndash;%&gt;--%>

<%--&lt;%&ndash;</form:form>&ndash;%&gt;--%>
<%--</c:forEach>--%>

