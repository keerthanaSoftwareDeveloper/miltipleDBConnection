<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE-edge">--%>
<%--            <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--   <title>User Registration</title>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>--%>
<%--    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=**Quicksand:wght@500**&display=swap" rel="stylesheet">--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="style.css">?&ndash;%&gt;--%>
<%--&lt;%&ndash;    <script defer src="userCreation.jsp"></script>&ndash;%&gt;--%>

<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <form id="form" action="/">--%>
<%--        <h2>Registration</h2>--%>
<%--        <div class="input-control">--%>
<%--            <label for="username" >UserName</label>--%>
<%--            <input id="username"  name="username" type="text" >--%>
<%--            <div class="error">--%>

<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="input-control">--%>
<%--            <label for="email" >Email</label>--%>
<%--            <input id="email"  name="email" type="text" >--%>
<%--            <div class="error">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="input-control">--%>
<%--            <label for="password" >Password</label>--%>
<%--            <input id="password"  name="password" type="password" >--%>
<%--            <div class="error">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="input-control">--%>
<%--            <label for="password2" >ConformPassword</label>--%>
<%--            <input id="password2"  name="password2" type="password" >--%>
<%--            <div class="error">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="input-control">--%>
<%--            <label for="address" >Address</label>--%>
<%--            <input id="address"  name="address" type="text" >--%>
<%--            <div class="error">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <button type="submit" >Register</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script>--%>
<%--    let form = document.getElementById('form');--%>
<%--    const  username=document.getElementById('username');--%>
<%--    const  email=document.getElementById('email');--%>
<%--    const  password=document.getElementById('password');--%>
<%--    const  password1=document.getElementById('password2');--%>
<%--    const  address=document.getElementById('address')--%>
<%--    form.addEventListener('submit', e =>{--%>
<%--        e.preventDefault();--%>
<%--        validateInputs();--%>
<%--    });--%>
<%--    const  setError=(element, message)=>{--%>
<%--        const  inputControl=element.parentElement;--%>
<%--        const  errorDisplay=inputControl.querySelector('.error');--%>
<%--        errorDisplay.innerHTML=message;--%>
<%--        inputControl.classList.remove('success');--%>
<%--        inputControl.classList.add('error');--%>
<%--        element.classList.add("error");--%>

<%--    }--%>
<%--    const  validEmail=email=>{--%>
<%--        const  re=/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;--%>
<%--        return re.test(String(email).toLowerCase());--%>
<%--    };--%>
<%--    const  setSuccess=element=>{--%>
<%--        const inputControl= element.parentElement;--%>
<%--        const  errorDisplay=inputControl.querySelector('.error');--%>
<%--        errorDisplay.innerHTML='';--%>
<%--        inputControl.classList.add('error');--%>
<%--        inputControl.classList.remove('success');--%>
<%--    };--%>
<%--       const  validateInputs=()=>{--%>
<%--        let  userNameValue=username.value.trim();--%>
<%--        let  emailValue= email.value.trim();--%>
<%--        let  passwordValue=password.value.trim();--%>
<%--        let  password2value=password1.value.trim();--%>
<%--        let addressValue=address.value.trim();--%>
<%--        if(userNameValue ===''){--%>
<%--           setError(username,'Username is required')--%>
<%--        }--%>
<%--        else {--%>
<%--            setSuccess(username);--%>
<%--        }--%>
<%--        if(emailValue ===''){--%>
<%--            setError(email,'Email is required')--%>
<%--        }--%>
<%--        else if(!validEmail(emailValue)) {--%>
<%--            setError(email, 'provide valid Email')--%>
<%--        }--%>
<%--        else {--%>
<%--            setSuccess(email);--%>
<%--        }--%>
<%--        if (passwordValue ===''){--%>
<%--            setError(password,'password is required')--%>
<%--        }--%>
<%--        else if (passwordValue.length<8){--%>
<%--            setError(password,'password must be at least 8 character.')--%>
<%--        }--%>
<%--        else {--%>
<%--            setSuccess(password);--%>
<%--        }--%>
<%--        if (password2value ===''){--%>
<%--            setError(password1,'please conform your password')--%>
<%--        }--%>
<%--        else if(passwordValue !==password2value){--%>
<%--            setError(password1,"passwords doesn't match");--%>

<%--        }--%>
<%--        else {--%>
<%--            setSuccess(password1)--%>
<%--        }--%>
<%--        if(addressValue  ===''){--%>
<%--            setError(address,'Address is required');--%>
<%--        }--%>
<%--        else {--%>
<%--            setSuccess(address)--%>
<%--        }--%>
<%--       };--%>
<%--</script>--%>
<%--&lt;%&ndash;   <c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;       <script>&ndash;%&gt;--%>
<%--&lt;%&ndash;           swal.fire({&ndash;%&gt;--%>
<%--&lt;%&ndash;               title: 'Do you want to save the changes?',&ndash;%&gt;--%>
<%--&lt;%&ndash;               text:'hi',&ndash;%&gt;--%>
<%--&lt;%&ndash;               button:'ok'&ndash;%&gt;--%>
<%--&lt;%&ndash;           })&ndash;%&gt;--%>
<%--&lt;%&ndash;       </script>&ndash;%&gt;--%>
<%--&lt;%&ndash;   </c:if>&ndash;%&gt;--%>

<%--</body>--%>
<%--</html>--%>
<%--<style>--%>
<%--    body {--%>
<%--        /*background-color:white ;*/--%>
<%--        /*font-family: sans-serif;*/--%>
<%--    }--%>
<%--    form{--%>
<%--        width: 900px;--%>
<%--        margin:   auto ;--%>
<%--        padding: 20px;--%>
<%--        background-color: lightblue;--%>
<%--        border-color: black;--%>
<%--        border-radius: 4px;--%>
<%--        font-size: 22px;--%>

<%--    }--%>
<%--    .form h2{--%>
<%--        color: #0f2027;--%>
<%--        text-align: center;--%>

<%--    }--%>
<%--    .form button{--%>
<%--        padding: 10px;--%>
<%--        margin-top: 10px;--%>
<%--        width: 100%;--%>
<%--        color: white;--%>
<%--        background-color: rgb(41,57,194);--%>
<%--        border: none;--%>
<%--        border-radius: 4px;--%>
<%--    }--%>
<%--    .input-control--%>
<%--    {--%>
<%--       display: flex;--%>
<%--        flex-direction: column;--%>

<%--    }--%>
<%--    .input-control input{--%>
<%--        border:  4px solid #f0f0f0;--%>
<%--        border-radius: 4px;--%>
<%--        border:  4px;--%>
<%--        display: block;--%>
<%--        font-size: 15px;--%>
<%--        padding: 10px;--%>
<%--        width: 100%;--%>
<%--    }--%>
<%--.input-control input:focus{--%>
<%--    outline: 0;--%>
<%--}--%>
<%--.input-control.success input{--%>
<%--    border-color: #09c372;--%>
<%--}--%>
<%--.input-control .error input{--%>
<%--    border-color: red;--%>
<%--}--%>
<%--.input-control .error{--%>
<%--    color: red;--%>
<%--    font-size: 20px;--%>
<%--    height: 25px;--%>
<%--    /*border-color: red;*/--%>
<%--}--%>
</style>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="en" xmlns:th="http://www.thymeleaf.org">--%>
<%--<head>--%>
<%--    <script src="sweetalert2.min.js"></script>--%>
<%--    <link rel="stylesheet" href="sweetalert2.min.css">--%>
<%--    <script src="sweetalert2.all.min.js"></script>--%>
<%--    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.js"></script>--%>
<%--    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/jquery.validate.js"></script>--%>
<%--    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/additional-methods.js"></script>--%>
<%--    &lt;%&ndash;box alert&ndash;%&gt;--%>

<%--    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.6.5/sweetalert2.min.js"  ></script>--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">--%>
<%--    <!-- icheck bootstrap -->--%>
<%--    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">--%>
<%--    <!-- Theme style -->--%>
<%--    <link rel="stylesheet" href="dist/css/adminlte.min.css">--%>
<%--    <script src="plugins/sweetalert2/sweetalert2.js"></script>--%>
<%--    <link rel="stylesheet" href="plugins/sweetalert2/sweetalert2.js">--%>
<%--    <meta charset="ISO-8859-1">--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">--%>

<%--    &lt;%&ndash;    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">&ndash;%&gt;--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">--%>
<%--    <!-- icheck bootstrap -->--%>
<%--    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">--%>


<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >--%>

<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">--%>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" >--%>
<%--    <div class="header">--%>
<%--        <a href="#default" class="logo">PRODUCT</a>--%>
<%--        <div class="header-right">--%>
<%--            <a class="active" href="#home">Home</a>--%>
<%--            &lt;%&ndash;            <a href="/logout" >Logout</a>&ndash;%&gt;--%>
<%--            <a href="/user">NewUser</a>--%>
<%--            <a href="/Login">Brand</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</head>--%>

<body>
<h1><center>Customer Login</center></h1>
<br><br>

<div class="container">

    <center>
        <form action="/saveUserDetails
"  method="get" >

            <input type="email" name="email"  placeholder=" Email" required
                   id="email" class="form-control mb-4 col-4"/>

            <input type="password"  name="password" placeholder=" Password" id="password" class="form-control mb-4 col-4"  required><br>

<%--            <input type="checkbox" onclick="myFunction()">Show Password--%>

            <button type="reset" class="second">Cancel</button>

            <button type="submit" class="third"> LoginCustomer</button>
        </form>
    </center>
</div>
</body>

<%--<button class="first" type="reset">Cancel</button>--%>
<%--<button class="second" type="button">Title and Text</button>--%>
<%--<button class="third" type="submit">Title, Text and Icon</button>--%>
<script>
// document.querySelector(".first").addEventListener('click', function(){
// Swal.fire("Our First Alert");
// });

document.querySelector(".second").addEventListener('click', function(){
Swal.fire("Our First Alert", "With some body text!", "cancel");
});

document.querySelector(".third").addEventListener('click', function(){
Swal.fire("Our First Alert", "With some body text and success icon!", "success");
});
</script>
<style>
    body {
        margin: 20px auto;
        font-family: 'Lato';
        font-weight: 300;
        width: 600px;
        text-align: center;
    }

    button {
        background: cornflowerblue;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 8px;
        font-family: 'Lato';
        margin: 5px;
        text-transform: uppercase;
        cursor: pointer;
        outline: none;
    }

    button:hover {
        background: orange;
    }

</style>















<%--  Created by IntelliJ IDEA.--%>
<%--  User: m865--%>
<%--  Date: 1/11/2023--%>
<%--  Time: 4:24 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>


<%--&lt;%&ndash;<jsp:include page="fragments/header.jsp" />&ndash;%&gt;--%>

<%--<div class="container">--%>

<%--    <c:choose>--%>
<%--        <c:when test="${userForm['new']}">--%>
<%--            <h1>Add User</h1>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <h1>Update User</h1>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>

<%--    <form:form method="post" modelAttribute="userForm" action="/users">--%>

<%--        <form:hidden path="id" />--%>

<%--        <spring:bind path="name">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="name" class="col-sm-2 col-form-label">Name</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:input path="name" type="text" id="name"--%>
<%--                                class="form-control ${status.error ? 'is-invalid' : ''}"--%>
<%--                                aria-describedby="validationNameFeedback" />--%>
<%--                    <form:errors path="name" id="validationNameFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="email">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="email" class="col-sm-2 col-form-label">Email</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:input path="email" type="text" id="email"--%>
<%--                                class="form-control ${status.error ? 'is-invalid' : ''}"--%>
<%--                                aria-describedby="validationEmailFeedback" />--%>
<%--                    <form:errors path="email" id="validationEmailFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="password">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="password" class="col-sm-2 col-form-label">Password</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:password path="password" id="password"--%>
<%--                                   class="form-control ${status.error ? 'is-invalid' : ''}"--%>
<%--                                   aria-describedby="validationPasswordFeedback" />--%>
<%--                    <form:errors path="password" id="validationPasswordFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="confirmPassword">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="confirmPassword" class="col-sm-2 col-form-label">Confirm Password</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:password path="confirmPassword" id="confirmPassword"--%>
<%--                                   class="form-control ${status.error ? 'is-invalid' : ''}"--%>
<%--                                   aria-describedby="validationConfirmPasswordFeedback" />--%>
<%--                    <form:errors path="confirmPassword" id="validationConfirmPasswordFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="address">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="address" class="col-sm-2 col-form-label">Address</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:textarea path="address" rows="5" id="address"--%>
<%--                                   class="form-control ${status.error ? 'is-invalid' : ''}"--%>
<%--                                   aria-describedby="validationAddressFeedback" />--%>
<%--                    <form:errors path="address" id="validationAddressFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="framework">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label class="col-sm-2 col-form-label">Web Frameworks</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:checkboxes path="framework" class="form-check-input ${status.error ? 'is-invalid' : ''}"--%>
<%--                                     items="${frameworkList}" element="div class='form-check form-check-inline'"--%>
<%--                                     aria-describedby="validationFrameworkFeedback" />--%>
<%--                    <form:errors path="framework" id="validationFrameworkFeedback"--%>
<%--                                 class="invalid-feedback-force-display" element="div" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="sex">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="sex" class="col-sm-2 col-form-label">Sex</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <div class="form-check form-check-inline">--%>
<%--                        <form:radiobutton path="sex" value="M" id="sexM"--%>
<%--                                          class="form-check-input ${status.error ? 'is-invalid' : ''}"--%>
<%--                                          aria-describedby="validationSexFeedback" />--%>
<%--                        <label class="form-check-label" for="sexM">Male</label>--%>
<%--                    </div>--%>
<%--                    <div class="form-check form-check-inline">--%>
<%--                        <form:radiobutton path="sex" value="F" id="sexF"--%>
<%--                                          class="form-check-input ${status.error ? 'is-invalid' : ''}"--%>
<%--                                          aria-describedby="validationSexFeedback" />--%>
<%--                        <label class="form-check-label" for="sexF">Female</label>--%>
<%--                    </div>--%>
<%--                    <form:errors path="sex" id="validationSexFeedback"--%>
<%--                                 class="invalid-feedback-force-display" element="div" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="number">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="number" class="col-sm-2 col-form-label">Number</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:radiobuttons path="number" items="${numberList}"--%>
<%--                                       class="form-check-input ${status.error ? 'is-invalid' : ''}"--%>
<%--                                       element="div class='form-check form-check-inline'"--%>
<%--                                       aria-describedby="validationNumberFeedback" />--%>
<%--                    <form:errors path="number" id="validationNumberFeedback"--%>
<%--                                 class="invalid-feedback-force-display" element="div" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="country">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="country" class="col-sm-2 col-form-label">Country</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:select path="country" id="country" class="form-select ${status.error ? 'is-invalid' : ''}"--%>
<%--                                 aria-describedby="validationCountryFeedback" >--%>
<%--                        <form:option value="NONE" label="-- Select --" />--%>
<%--                        <form:options items="${countryList}" />--%>
<%--                    </form:select>--%>
<%--                    <form:errors path="country" id="validationCountryFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="skill">--%>
<%--            <div class="mb-3 row">--%>
<%--                <label for="skill" class="col-sm-2 col-form-label">Skills</label>--%>
<%--                <div class="col-sm-10">--%>
<%--                    <form:select path="skill" items="${javaSkillList}" multiple="true" size="5"--%>
<%--                                 aria-describedby="validationSkillFeedback"--%>
<%--                                 class="form-select ${status.error ? 'is-invalid' : ''}" />--%>
<%--                    <form:errors path="skill" id="validationSkillFeedback" class="invalid-feedback" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="acceptTOS">--%>
<%--            <div class="mb-3 row">--%>
<%--                <div class="col-12">--%>
<%--                    <div class="form-check">--%>
<%--                        <form:checkbox path="acceptTOS" id="acceptTOS"--%>
<%--                                       class="form-check-input ${status.error ? 'is-invalid' : ''}"--%>
<%--                                       aria-describedby="validationAcceptTosFeedback" />--%>
<%--                        <label for="acceptTOS" class="form-check-label">Agree to terms and conditions</label>--%>
<%--                        <form:errors path="acceptTOS" id="validationAcceptTosFeedback" class="invalid-feedback" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <div class="d-grid gap-2 d-md-flex justify-content-md-end">--%>
<%--            <c:choose>--%>
<%--                <c:when test="${userForm['new']}">--%>
<%--                    <button type="submit" class="btn btn-primary btn-lg">Add</button>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <button type="submit" class="btn btn-primary btn-lg">Update</button>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>

<%--    </form:form>--%>

<%--</div>--%>

<%--<jsp:include page="fragments/footer.jsp" />--%>

<%--</body>--%>
<%--</html>--%>
<%--</body>--%>
<%--</html>--%>
