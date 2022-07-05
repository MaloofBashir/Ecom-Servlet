<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
</head>

<body>

	 <%
	 String msg=request.getParameter("msg");
	 if ("valid".equals(msg)){ %>
	 <h1>Succefully Registered</h1>
	 <% 
		 
	 }
	 %>
	 
	 <%if ("invalid".equals(msg)){ %>
	 <h1>something went wrong</h1>
	 <%} %>

    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <h1 id="regs">Registration Form</h1>

    <form id="myform" action="RegisterModule" name="myForm" onsubmit="return validateForm()" method="post">

        <div class="form-design" id="name">
            <label class="label" for="">First Name:</label> <input type="text" name="fname"><b> <span id="span1"
                    class="formerror"> </span></b>
        </div>
        <div class="form-design" id="name">
            <label class="label" for="">Last Name:</label> <input type="text" name="lname"><b> <span id="spant"
                    class="formerror"> </span></b>
        </div>
        <div class="form-design" id="email">
            <label class="label" for="">Email:</label> <input type="email" name="femail"> <span id="span2"
                class="formerror"> <b></b> </span>
        </div>

        <div class="form-design" id="phone">
            <label class="label" for="">Phone:</label> <input type="text" name="fphone"> <span id="span3"
                class="formerror"> <b></b> </span>
        </div>

        <div class="form-design" id="pass">
            <label class="label" for="">Password:</label> <input type="password" name="fpass"> <span id="span4"
                class="formerror"> <b></b> </span>
        </div>



        <input type="submit" value="Register" class="but">

    </form>

    <a href="login.jsp">Go to login page</a>
</body>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status=document.getElementById("status").value;
    if(status=="success"){
        swal("Congrats","account created succefully","success");
    }

</script>

<script>

    function seterror(id, error) {
        element = document.getElementById(id);
        element.innerHTML = error;

    }

    function validateForm() {
        var rvalue = true;
        var fname = document.forms["myForm"]["fname"].value;
        var lname = document.forms["myForm"]["lname"].value;
        var email = document.forms["myForm"]["femail"].value;
        var phone = document.forms["myForm"]["fphone"].value;
        var password = document.forms["myForm"]["fpass"].value;
        //var confirm_password=document.forms["myForm"]["fcpass"].value;

        var mailformat = "/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/";

        var phoneformat = "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"

        var passwordformat = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"


        console.log(name);

        if (fname.length <= 0) {
            seterror("span1", "length of name is too short");
            rvalue = false;
        }

        if (lname.length <= 0) {
            seterror("spant", "length of name is too short");
            rvalue = false;
        }

        // if (!email.match(mailformat)) {
        //     seterror("span2", "please enter the valid email format");
        //     rvalue = false;
        // }

        if (!phone.match(phoneformat)) {
            seterror("span3", "please enter valid phone format");
            rvalue = false;
        }

        if (!password.match(passwordformat)) {
            seterror("span4", `Password should contain atleast one upper case English letter,
        one lower case letter,
        one digit, 
        one special character,
        Minimum eight in length`);

            rvalue = false;

        }

        return rvalue;
    }
</script>

</html>