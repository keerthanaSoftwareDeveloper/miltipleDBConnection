
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >
<div class="container">
    <form action="/listimg" method="get" modelAtributte="list" >
        <h2>Download Image</h2>

<div>
    <button   class="btn btn-success"    type="submit">Download</button>
</div>
        <c:if test="${not empty list}">
        <div id="Image" >
            <img  src='data:image/jpg;base64,${list}' ></div>
        </c:if>
    </form>

</div>

<style>
    img{
        height: 241px;
        width: 266px;
    }
</style>


<select id="mySelect" onchange="myFunction()">
    <option value="Audi">Audi</option>
    <option value="BMW">BMW</option>
    <option value="Mercedes">Mercedes</option>
    <option value="Volvo">Volvo</option>
</select>

<p>When you select a new car, a function is triggered which outputs the value of the selected car.</p>

<p id="demo"></p>

<script>
    function myFunction() {
        var x = document.getElementById("mySelect").value;
        document.getElementById("demo").innerHTML = "You selected: " + x;
    }
</script>