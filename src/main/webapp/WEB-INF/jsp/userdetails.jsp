<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: m865
  Date: 12/2/2022
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >
    <div class="header">
        <a href="#default" class="logo">PRODUCT</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="/">Login</a>
<%--            <a href="/logout" >Checkout</a>--%>
<%--            <a href="/user">NewUser</a>--%>
<%--            <a href="/Login">Brand</a>--%>
        </div>
    </div>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="/js/main.js"></script>
<h1><center>ADD NEW CUSTOMER</center></h1>
<br>


<div class="container">
    <%--    <div style="text-align: center; background-color: #1E88E5; color: #BBDEFB; padding: 8px;">--%>
    <%--        Are you an Customer?<br> Register Here<br>--%>
    <%--    </div>--%>

    <%--    <br>--%>

    <center><form      method="post"  action="/saveUserDetails" >

<%--        <input type="text" name="id" placeholder="Enter Id" id="id" class="form-control mb-4 col-4" required--%>
<%--               autocomplete="nope" --%>
<%--               onkeyup=" isNumberKey(evt)";>--%>
    <div class="form-group">

        <input type="text" name="name" placeholder="Enter Name" id="name" class="form-control mb-4 col-4"  th:field="*{name}"
               onkeypress="return onlyAlphabets(event);" autocomplete="nope"
               onkeyup=" spaceNotAllowed(this); autoCaps(this);">
    </div>
<%--    <span style="color: red;"class="has-error" th:if="${fields.hasErrors('name')}" th:errors="*{name}"></span>--%>
<%--    <div class="form-group">--%>
<%--        <input type="text" th:field="*{name}" class="form-control" placeholder="Username"--%>
<%--               autofocus="true">--%>
<%--        <span style="color: red;"class="has-error" th:if="${fields.hasErrors('name')}" th:errors="*{name}"></span>--%>
<%--    </div>--%>
    <div class="form-group">

        <input type="text"   name="address" placeholder=" Enter Address"  id="address" class="form-control mb-4 col-4"  th:field="*{address}"
               onkeypress="return onlyAlphabets(event);" autocomplete="nope"
               onkeyup=" spaceNotAllowed(this); autoCaps(this);"  />
    </div>

    <div class="form-group">

        <input type="email" name="email"  placeholder=" Enter Email" class="form-control mb-4 col-4" id="email"  th:field="*{email}"
               pattern="[a-z0-9._%+-]+@[a-z0-9-]{3,}+\.[a-z]{2,}$">
<%--    <span style="color: red;"class="has-error" th:if="${fields.hasErrors('email')}" th:errors="*{email}"></span>--%>
    </div>
    <div class="form-group">

        <input type="text"  name="password" placeholder="Enter Password" class="form-control mb-4 col-4"  id="password" th:field="*{password}" >
<%--    <span style="color: red;"class="has-error" th:if="${fields.hasErrors('password')}" th:errors="*{password}"></span>--%>
    </div>
    <br><br>

<%--        <input type="file" name="file" id="file" accept="image/*" required>
--%>

<%--        <input type="file" class="upload-box-file" name="image" id="image" accept="image/jpeg, image/PNG, image/gif, image/webp, image/svg+xml, image/bmp, image/x-icon">--%>

<%--        <input type="submit" name="submit" value="Upload Image">--%>
<%--               title="Password must be 8 characters including 1 uppercase letter,1 lowercase letter,numeric characters and Special characters"--%>
<%--               onkeyup="CheckPasswordStrength(this.value)"--%>
<%--               onblur="pwdvalidCheck()">--%>

        <button type="reset" class="btn btn-danger" >Cancel</button>

        <button type="submit" class="btn btn-success"> NewCustomer</button>

        <a href="/UserList" >List </a>
    </form>
    </center>


</div>
<script>
    function onlyAlphabets(e) {
        try {
            if (window.event) {
                var charCode = window.event.keyCode;
            } else if (e) {
                var charCode = e.which;
            } else {
                return true;
            }

            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (e.keyCode == 8) || (e.keyCode == 9)) {
                return true;
            } else {
                return false;
            }
        } catch (err) {
            alert(err.Description);
        }
    }
    function spaceNotAllowed(input) {
        var $th = $(input);
        $th.val($th.val().replace(/^\s*/, ''));
    }
    function autoCaps(input) {
        var $th = $(input);
        $th.val($th.val().toLowerCase().replace(/\b[a-z]/g, function (letter) {
            return letter.toUpperCase();
        }))
    }
    function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode;
        return !(charCode > 31 && (charCode < 48 || charCode > 57));
    }
    function spaceNotAllowed(input) {
        var $th = $(input);
        $th.val($th.val().replace(/^\s*/, ''));
    }
    function CheckPasswordStrength(password) {
        var password_strength = document.getElementById("password_strength");
        //TextBox left blank.
        if (password.length == 0) {
            password_strength.innerHTML = "";
            return;
        }

        //Regular Expressions.
        var regex = new Array();
        regex.push("[A-Z]"); //Uppercase Alphabet.
        regex.push("[a-z]"); //Lowercase Alphabet.
        regex.push("[0-9]"); //Digit.
        regex.push("[$@$!%*#?&]"); //Special Character.

        var passed = 0;
        //Validate for each Regular Expression.
        for (var i = 0; i < regex.length; i++) {
            if (new RegExp(regex[i]).test(password)) {
                passed++;
            }
        }

        //Validate for length of Password.
        if (passed > 2 && password.length >= 8) {
            passed++;
        }

        //Display status.
        var color = "";
        var strength = "";

        switch (passed) {
            case 0:
            case 1:
                strength = "Weak";
                color = "red";
                break;
            case 2:
                strength = "Good";
                color = "darkorange";
                break;
            case 3:
            case 4:
                strength = "Strong";
                color = "green";
                break;
            case 5:
                strength = "Very Strong";
                color = "darkgreen";
                break;

        }

        password_strength.innerHTML = strength;
        password_strength.style.color = color;
    }

    function pwdvalidCheck() {
        var password_strength = document.getElementById("password_strength").innerHTML;
        if (password_strength === "Very Strong") {
        } else {
            alert("Set valid password");
            document.getElementById("password").value = "";
            document.getElementById("password_strength").innerHTML = "";
            return false;
        }
    }
    // function validate() {
    //     var brand = document.forms["RegForm"]["brand"];
    //     var name = document.forms["RegForm"]["productName"];
    //     var prize = document.forms["RegForm"]["prize"];
    //     var email = document.forms["RegForm"]["email"];
    //     var pwd = document.forms["RegForm"]["password"];
    //
    //     if (brand.value === "") {
    //         window.alert("Please enter your Brand.");
    //         id.focus();
    //         return false;
    //     }
    //
    //     if (name.value === "") {
    //         window.alert("Please enter your ProductName");
    //         name.focus();
    //         return false;
    //     }
    //
    //     if (prize.value === "") {
    //         window.alert("Please enter your Prize");
    //         des.focus();
    //         return false;
    //     }
    //
    //     if (email.value === "") {
    //         window.alert("Please enter your Email.");
    //         dept.focus();
    //         return false;
    //     }
    //
    //     if (pwd.value !== password.value) {
    //         window.alert("Passwords must match.");
    //         password.focus();
    //         return false;
    //     }
    //
    //
    //
    //     return true;
    // }
    // function alphaOnly(e) {
    //
    //     // alert(event);
    //
    //     var key;
    //
    //     if (window.event) {
    //         key = window.event.key;
    //     } else if (e) {
    //         key = e.which;
    //     }
    //     //var key = window.event.key || event.key;
    //     // alert(key.value);
    //     return ((key >= 65 && key <= 90) || (key >= 95 && key <= 122));
    //
    // }
</script>
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
    .has-error {
        border-color: red !important;
        color: red;

        font-Size: 13px;

    }
    css
    js
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
<style type="text/css">

</style>

<%--<input type="text" id="brand" name="brand" required  ><br><br>--%>
<%--<label ><strong>ProductName:</strong> </label>--%>
<%--<input type="text" id="productName" name="productName"    ><br><br>--%>
<%--<label ><strong> productPrize:</strong></label>--%>
<%--<input type="text" id="prize" name="productPrize" ><br><br>--%>
<%--<input type="submit" value="Submit" >--%>
