<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>

    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

</head>

<body>
    <h1 id="regs">Login Form</h1>

    <form id="myform" action="Login" name="myForm" method="post">

        

        <div class="form-design" id="email">
           <label class="label" > Email:</label> <input type="text" name="femail"> <span id="span2" class="formerror"> <b></b> </span>
        </div>


        <div class="form-design" id="pass">
            <label class="label" >Password:</label> <input type="password" name="fpass"> <span id="span4" class="formerror"> <b></b> </span>
        </div>

        

        <input type="submit" value="Login" class="but">

    </form>
</body>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status=document.getElementById("status").value;
    if(status=="failed"){
        swal("Sorry","Wrong details entered","failed");
    }

</script>
</html>