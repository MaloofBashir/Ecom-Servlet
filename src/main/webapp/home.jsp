<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav input[type=text] {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  border: none;
  font-size: 17px;
}

@media screen and (max-width: 600px) {
  .topnav a, .topnav input[type=text] {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }

  .topnav input[type=text] {
    border: 1px solid #ccc;
  }
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 80%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

</style>
</head>
<body style="background-color:#566573;">

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#about">About</a>
  <a href="#contact">Contact</a>
  <a href="changepassword.html">Reset password</a>
  <input type="text" placeholder="Search..">
</div>

<div style="padding-left:16px">

  <h2>Happy Shoping</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="shirt1.jpg" alt="Shirt" style="width:100%">
  <div class="container">
    <h4><b>Cotton Shirt</b></h4>
    <p>Price</p>
      <input type="submit" value="Add to cart" class="btn">
          <input type="button" value="buy" class ='btn'>
  </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="shirt2.jpg" alt="Shirt" style="width:100%">
  <div class="container">
    <h4><b>Cotton Shirt</b></h4>
    <p>Price</p>
      <input type="submit" value="Add to cart" class="btn">
          <input type="button" value="buy" class ='btn'>
  </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="watch1.jpg" alt="Watch" style="width:100%">
  <div class="container">
    <h4><b>Watch</b></h4>
    <p>Price</p>
      <input type="submit" value="Add to cart" class="btn">
          <input type="button" value="buy" class ='btn'>
  </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="watches2.jpg" alt="Watch" style="width:100%">
  <div class="container">
    <h4><b>Watch</b></h4>
    <p>Price</p>
      <input type="submit" value="Add to cart" class="btn">
          <input type="button" value="buy" class ='btn'>
  </div>
    </div>
  </div>
</div>
</div>

</body>
</html>
