<%--&lt;%&ndash;&lt;%&ndash;&ndash;%&gt;--%>
<%--&lt;%&ndash;  Created by IntelliJ IDEA.&ndash;%&gt;--%>
<%--&lt;%&ndash;  User: m865&ndash;%&gt;--%>
<%--&lt;%&ndash;  Date: 11/25/2022&ndash;%&gt;--%>
<%--&lt;%&ndash;  Time: 1:02 PM&ndash;%&gt;--%>
<%--&lt;%&ndash;  To change this template use File | Settings | File Templates.&ndash;%&gt;--%>
<%--&lt;%&ndash;&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>&ndash;%&gt;--%>

<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >&ndash;%&gt;--%>
<%--&lt;%&ndash;        <meta charset="ISO-8859-1">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">&ndash;%&gt;--%>


<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>List Of Quantity</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form  method="get" modelAttribute="List">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <table border="1" class="table table-striped table-responsive-md">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <thead>&ndash;%&gt;--%>

<%--&lt;%&ndash;            <th>Count</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <th> id</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <th>Quantity</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <th> Cost</th>&ndash;%&gt;--%>


<%--&lt;%&ndash;            </thead>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tbody>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <c:forEach var="emp" items="${List}" varStatus="counter">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${counter.count}<c:out value="${counter.count}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${emp.id}<c:out value="${emp.id}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td> ${emp.quantity}<c:out value="${emp.quantity}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td> ${emp.cost}<c:out value="${emp.cost}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>


<%--&lt;%&ndash;                </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tbody>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </table>&ndash;%&gt;--%>

<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>


<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<style>&ndash;%&gt;--%>


<%--&lt;%&ndash;    table, th, td {&ndash;%&gt;--%>
<%--&lt;%&ndash;        border: 1px solid;&ndash;%&gt;--%>
<%--&lt;%&ndash;        border-collapse: collapse;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>

<%--&lt;%&ndash;</style>&ndash;%&gt;--%>


<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">&ndash;%&gt;--%>

<%--&lt;%&ndash;    <title>View Books</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>

<%--&lt;%&ndash;<table>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <thead>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>ID</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Quantity</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Cost</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </thead>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tbody>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <c:forEach items="${List}" var="book">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${book.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${book.quantity}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${book.cost}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tbody>&ndash;%&gt;--%>
<%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<style>&ndash;%&gt;--%>
<%--&lt;%&ndash;    table, th, td {&ndash;%&gt;--%>
<%--&lt;%&ndash;        border: 1px solid;&ndash;%&gt;--%>
<%--&lt;%&ndash;        border-collapse: collapse;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;</style>&ndash;%&gt;--%>

<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${'Welcome to javaTpoint'}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${'counter.count'}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${'emp.id'}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${'emp.quantity'}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${'emp.cost'}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Core Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:set var="Income" scope="session" value="${4000*4}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${Income}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Core Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach var="j" begin="1" end="3">&ndash;%&gt;--%>
<%--&lt;%&ndash;    Item <c:out value="${K}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;    Data<c:out value="${D}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Core Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forTokens items="Rahul-Nakul-Rajesh-keerthi-deepak-selvaraj-anusuya-Abi-Abitha-Niranjan-rishi-deekshan-kannan-senu-" delims="-" var="name">&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:out value="${name}"/><p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forTokens>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>


<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Core Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:url value="/index1" var="completeURL">&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:param name="trackingId" value="786"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:param name="user" value="Nakul"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:url>${completeURL}&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>



<%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Core Tag Example</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:set var="url" value="1" scope="request"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:if test="${url<1}">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <c:redirect url="http://javatpoint.com"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:if test="${url>1}">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <c:redirect url="https://stackblitz.com/"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500&display=swap" rel="stylesheet">--%>
<%--    <script src="https://kit.fontawesome.com/b9f255870f.js" crossorigin="anonymous"></script>--%>
<%--    <link rel="stylesheet" type="text/css" href="css/fontawesome/all.css">--%>
<%--    <link rel="stylesheet" href="style.css">--%>
<%--    <link rel="JavaScript" href="js/script.js">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--    <title>Business Contact Us</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<script>--%>
<%--const contactus_form = document.getElementById('contactus_form');--%>
<%--const firstName = document.getElementById('firstName');--%>
<%--const lastName = document.getElementById('lastName');--%>
<%--const companyPosition = document.getElementsById('companyPosition');--%>
<%--const email = document.getElementById('email');--%>
<%--const message = document.getElementById('message');--%>

<%--contactus_form.addEventListener('submit', (e) => {--%>
<%--e.preventDefault();--%>

<%--checkInputs();--%>
<%--});--%>

<%--function checkInputs() {--%>

<%--const firstNameValue = firstName.value.trim();--%>
<%--const lastNameValue = lastName.value.trim();--%>
<%--const companyPositionValue = companyPosition.value.trim();--%>
<%--const emailValue = email.value.trim();--%>
<%--const messageValue = message.value.trim();--%>

<%--if (firstNameValue === '') {--%>

<%--setErrorFor(firstNameValue, 'First name cannot be blank');--%>
<%--} else {--%>

<%--setSuccessFor(firstNameValue);--%>
<%--}--%>

<%--if (lastNameValue === '') {--%>

<%--setErrorFor(lastNameValue, 'Last name cannot be blank');--%>
<%--} else {--%>

<%--setSuccessFor(lastNameValue);--%>
<%--}--%>

<%--if (companyPositionValue === '') {--%>

<%--setErrorFor(companyPositionValue, 'Company position cannot be blank');--%>
<%--} else {--%>

<%--setSuccessFor(companyPositionValue);--%>
<%--}--%>

<%--if (emailValue === '') {--%>

<%--setErrorFor(emailValue, 'Email cannot be blank');--%>
<%--} else if (!isEmail(emailValue)) {--%>
<%--setErrorFor(emailValue, 'Not a valid email')--%>
<%--} else {--%>

<%--setSuccessFor(emailValue);--%>
<%--}--%>

<%--if (messageValue === '') {--%>

<%--setErrorFor(messageValue, 'Message cannot be blank');--%>
<%--} else {--%>

<%--setSuccessFor(messageValue);--%>
<%--}--%>
<%--}--%>

<%--function setErrorFor(input, message) {--%>
<%--const formControl = input.parentElement;--%>
<%--const small = formControl.querySelector('small');--%>

<%--small.innerText = message;--%>

<%--formControl.className = 'form-control error';--%>

<%--}--%>

<%--function setSuccessFor(input, message) {--%>
<%--const formControl = input.parentElement;--%>
<%--formControl.className = 'form-control success';--%>
<%--}--%>

<%--function isEmail(email) {--%>
<%--return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);--%>
<%--}--%>
<%--</script>--%>
<%--<section class="main_body">--%>
<%--    <!-- Merch Section & Folder Structure-->--%>
<%--    <div class="form-body">--%>
<%--        <div id="form-error"></div>--%>
<%--        <div class="container">--%>
<%--            <form id="contactus_form" class="contactus_form">--%>
<%--                <div class="form-control">--%>
<%--                    <label for="firstName">First Name</label>--%>
<%--                    <input type="text" id="firstName" name="firstName">--%>
<%--                    <i class="fas fa-check-circle"></i>--%>
<%--                    <i class="fas fa-exclamation-circle"></i>--%>
<%--                    <small>Error Message</small>--%>
<%--                </div>--%>
<%--                <div class="form-control">--%>
<%--                    <label for="lastName">Last Name</label>--%>
<%--                    <input type="text" id="lastName" name="lastName">--%>
<%--                    <i class="fas fa-check-circle "></i>--%>
<%--                    <i class="fas fa-exclamation-circle"></i>--%>
<%--                    <small>Error Message</small>--%>
<%--                </div>--%>
<%--                <div class="form-control">--%>
<%--                    <label for="companyPosition">Position</label>--%>
<%--                    <input type="text" id="companyPosition" name="companyPosition">--%>
<%--                    <i class="fas fa-check-circle"></i>--%>
<%--                    <i class="fas fa-exclamation-circle"></i>--%>
<%--                    <small>Error Message</small>--%>
<%--                </div>--%>
<%--                <div class="form-control">--%>
<%--                    <label for="email">Email</label>--%>
<%--                    <input type="email" id="email" name="email">--%>
<%--                    <i class="fas fa-check-circle"></i>--%>
<%--                    <i class="fas fa-exclamation-circle"></i>--%>
<%--                    <small>Error Message</small>--%>
<%--                </div>--%>
<%--&lt;%&ndash;                <div class="form-control ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <label for="message">Message</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <textarea name="message" id="message" cols="30" rows="10"></textarea>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <i class="fas fa-check-circle"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <i class="fas fa-exclamation-circle"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <small>Error Message</small>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                <button class="contactus-form-submitbtn" type="submit">Submit</button>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<%--</body>--%>

<%--</html>--%>
<%--<style>--%>
<%--    /*.form-body {*/--%>
<%--    /*    min-height: 1300px;*/--%>
<%--    /*    width: 100%;*/--%>
<%--    /*    background-color: grey;*/--%>
<%--    /*    display: flex;*/--%>
<%--    /*    align-items: center;*/--%>
<%--    /*    justify-content: center;*/--%>
<%--    /*    flex-direction: column;*/--%>
<%--    /*    margin: 0px;*/--%>
<%--    /*}*/--%>

<%--    .container {--%>
<%--        position: fixed;--%>
<%--        width: 90%;--%>
<%--        height: auto;--%>
<%--        max-width: 700px;--%>
<%--        /*margin  :50px;*/--%>
<%--        /*padding: 20px 40px;*/--%>
<%--        /*box-shadow: 0px 0px 20px #00000010;*/--%>
<%--        /*background-color: white;*/--%>
<%--        /*border-radius: 8px;*/--%>
<%--        /*margin-bottom: 20px;*/--%>
<%--    }--%>

<%--    /*.contactus-form {*/--%>
<%--    /*    padding: 30px 40px;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control {*/--%>
<%--    /*    margin-bottom: 10px;*/--%>
<%--    /*    padding-bottom: 20px;*/--%>
<%--    /*    position: relative;*/--%>
<%--    /*    border: none;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control label {*/--%>
<%--    /*    display: inline-block;*/--%>
<%--    /*    margin-bottom: 3px;*/--%>
<%--    /*    font-size: 18px;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control input {*/--%>
<%--    /*    border: 2px solid #f0f0f0;*/--%>
<%--    /*    border-radius: 4px;*/--%>
<%--    /*    display: block;*/--%>
<%--    /*    font-family: inherit;*/--%>
<%--    /*    font-size: 14px;*/--%>
<%--    /*    padding: 10px;*/--%>
<%--    /*    width: 100%;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control.success input {*/--%>
<%--    /*    border-color: #2ecc71;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control.error input {*/--%>
<%--    /*    border-color: #e74c3c;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control textarea {*/--%>
<%--    /*    width: 100%;*/--%>
<%--    /*    padding: 5px;*/--%>
<%--    /*    font-size: 18px;*/--%>
<%--    /*    border: 1px solid rgb(128, 128, 128, 0.199);*/--%>
<%--    /*    margin-top: 5px;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control i {*/--%>
<%--    /*    position: absolute;*/--%>
<%--    /*    top: 40px;*/--%>
<%--    /*    right: 10px;*/--%>
<%--    /*    visibility: hidden;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control.success i.fa-check-circle {*/--%>
<%--    /*    color: #2ecc71;*/--%>
<%--    /*    visibility: visible;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control.error i.fa-exclamation-circle {*/--%>
<%--    /*    color: #e74c3c;*/--%>
<%--    /*    visibility: visible;*/--%>
<%--    /*}*/--%>

<%--    /*.form-control small {*/--%>
<%--    /*    visibility: hidden;*/--%>
<%--    /*    position: absolute;*/--%>
<%--    /*    bottom: 0;*/--%>
<%--    /*    left: 0;*/--%>
<%--    /*}*/--%>

<%--    /*.contactus-form-submitbtn {*/--%>
<%--    /*    width: 100%;*/--%>
<%--    /*    height: 30px;*/--%>
<%--    /*    margin: 10px 0px;*/--%>
<%--    /*    color: #ffffff;*/--%>
<%--    /*    display: block;*/--%>
<%--    /*    background-color: rgb(31, 136, 229);*/--%>
<%--    /*    border: 1px solid rgb(128, 128, 128, 0.199);*/--%>
<%--    /*    border-radius: 2px;*/--%>
<%--    /*}*/--%>

<%--    /*label#disclaimer-label {*/--%>
<%--    /*    font-size: 12px;*/--%>
<%--    /*    width: 600px;*/--%>
<%--    /*    margin: 0px;*/--%>
<%--    /*}*/--%>

<%--    /*.form-group-disclaimer {*/--%>
<%--    /*    padding: 10px 0px;*/--%>
<%--    /*}*/--%>
<%--</style>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
<%--<label>password :--%>
<%--    <input name="password" id="password" type="password" />--%>
<%--</label>--%>
<%--<br>--%>
<%--<label>confirm password:--%>
<%--    <input type="password" name="confirm_password" id="confirm_password" />--%>
<%--    <span id='message'></span>--%>
<%--</label>--%>

<%--<button type="submit">submit</button>--%>
<%--<script>--%>
<%--$('#password, #confirm_password').on('keyup', function () {--%>
<%--if ($('#password').val() == $('#confirm_password').val()) {--%>
<%--$('#message').html('Matching').css('color', 'green');--%>
<%--} else--%>
<%--$('#message').html('Not Matching').css('color', 'red');--%>
<%--});--%>
<%--</script>--%>
<form id="form">
    <div>
        <label for="username">Username</label>
        <input name="username" type="text" placeholder="Username" pattern="[a-z]{1,15}" id="username">
    </div>
</form>
<style>
    html {
        box-sizing: border-box;
    }

    *,
    *:before,
    *:after {
        box-sizing: inherit;
    }

    body {
        font-family: "Trebuchet MS", "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Tahoma, sans-serif;
        background-color: #ECEFF1;
    }
    form {
        max-width: 300px;
        margin-top: 60px;
        margin-right: auto;
        margin-left: auto;
        text-align: left;
        position: relative;
        padding-top: 80px;
    }
    label,
    input {
        display: block;
    }
    label {
        font-size: 12px;
        text-transform: uppercase;
        color: #B0BEC5;
        margin-bottom: 10px;
    }
    input {
        width: 100%;
        padding: 10px;
        outline: 0;
        border: 2px solid #B0BEC5;
    }
    input:invalid {
        border-color: #DD2C00;
    }

    #notify {
        margin-top: 5px;
        padding: 10px;
        font-size: 12px;
        width: 100%;
        color: #fff;
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
    }
    #notify.error {
        background-color: #DD2C00;
    }
</style>