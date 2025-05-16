<!DOCTYPE html>
<html lang="en" >
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/jquery.validate.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/additional-methods.js"></script>
<%--box alert--%>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.6.5/sweetalert2.min.js"  ></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<%--<script src="plugins/sweetalert2/sweetalert2.js"></script>--%>
<%--<link rel="stylesheet" href="plugins/sweetalert2/sweetalert2.js">--%>
    <div class="header">
        <a href="#default" class="logo">PRODUCT</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="/">Login</a>
<%--            <a href="/logout" >Logout</a>--%>
<%--            <a href="/user">NewUser</a>--%>
<%--            <a href="/login">Brand</a>--%>
        </div>
    </div>
</head>
<body>
<h1><center>ADD NEW CUSTOMER</center></h1>
<br>


<div class="container">
<%--    <div style="text-align: center; background-color: #1E88E5; color: #BBDEFB; padding: 8px;">--%>
<%--        Are you an Customer?<br> Register Here<br>--%>
<%--    </div>--%>

<%--    <br>--%>

    <center><form  action="/saveContact"    method="post" onsubmit="date()" >


        <input type="text" name="brand" placeholder="Brand Name" id="brand" class="form-control mb-4 col-4"
<%--               onkeypress="return onlyAlphabets(event);" autocomplete="nope"--%>
<%--               onkeyup=" spaceNotAllowed(this); autoCaps(this);"--%>
        >



        <input type="text"   name="productName" placeholder="productName"  id="productName" class="form-control mb-4 col-4"
<%--               onkeypress="return onlyAlphabets(event);" autocomplete="nope"--%>
<%--               onkeyup=" spaceNotAllowed(this); autoCaps(this);"--%>
        >


        <input type="text" name="prize"  placeholder="prize" id="prize" class="form-control mb-4 col-4">
<%--               onkeypress="return isNumberKey(event);"--%>
<%--               onkeyup="return spaceNotAllowed(this);">--%>


<%--        <input type="email" name="email"  placeholder=" Email" class="form-control mb-4 col-4" id="email"--%>
<%--               pattern="[a-z0-9._%+-]+@[a-z0-9-]{3,}+\.[a-z]{2,}$"  >--%>


<%--        <input type="text"  name="password" placeholder=" Password" class="form-control mb-4 col-4"  id="password"--%>
<%--               title="Password must be 8 characters including 1 uppercase letter,1 lowercase letter,numeric characters and Special characters"--%>
<%--               onkeyup="CheckPasswordStrength(this.value)"--%>
<%--               onblur="pwdvalidCheck()">--%>

         <button type="reset" class="btn btn-danger" >Cancel</button>

        <button type="submit" class="btn btn-success"> NewCustomer</button>

        <a href="/" >Login Customer </a>
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
</script>
<c:if test="${successMessage != null}">
    <script>
        Swal.fire({
            title: 'Success!',
            text: '${successMessage}',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>

<c:if test="${errorsMessage != null}">
    <script>
        Swal.fire({
            title: 'Error!',
            text: '${errorsMessage}',
            confirmButtonText: 'OK'
        });
    </script>
</c:if>



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
<style type="text/css">

</style>

<%--<input type="text" id="brand" name="brand" required  ><br><br>--%>
<%--<label ><strong>ProductName:</strong> </label>--%>
<%--<input type="text" id="productName" name="productName"    ><br><br>--%>
<%--<label ><strong> productPrize:</strong></label>--%>
<%--<input type="text" id="prize" name="productPrize" ><br><br>--%>
<%--<input type="submit" value="Submit" >--%>