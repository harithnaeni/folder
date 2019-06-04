<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Login_Css.css">
<title>Login Page </title>



<script LANGUAGE="javascript">
function check()
{
var v1=f.t1.value;
var v2=f.t2.value;
if (v1=="")
{
alert ( "Please Fill Firstname:" );
document.f.t1.focus();
return false;
}
if (v2=="")
{
alert ( "Please Fill Lastname:" );
document.f.t2.focus();
return false;
}
else
{
alert ("ACCPTED");
return true;
}
}
</script>

<style>
* {
  box-sizing: border-box;
}
input[type=text], select, textarea {
  width: 250px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 8px;
  resize: vertical;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}
input[type=submit] {
  background-color: #0000FF;
  color: white;
  padding: 12px 17px;
  border: red;
  border-radius: 9px;
  cursor: pointer;
  float: left;
  margin-top: 25px;
  margin-left: 180px;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.container {
  border-radius: 5px;
  background-color: black;
  padding: 20px;
}
.col-25 {
  float: left;
  width: 25%;
  margin-top: 2px;
}
.col-75 {
  float: left;
  width: 75%;
  margin-top: 7px;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>


</head>

<style>
body {
background-color: #000000;
margin: 0px;
padding: 0px;
}
</style>

<body>

<div class="header" border="0px">
  <a href="#default" class="logo"> &nbsp Sailpoint </a>
  <div class="header-right">
  <a class="active" href="#home">Info</a>
  
  </div>
</div>



<div class="container">
  <form action="/action_page.php">
  <div class="row">
    <div class="col-25">
      <label for="fname">User Id</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="firstname"   placeholder="User Name ..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">PassWord</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="lastname" placeholder="Your PassWord..">
    </div>
  </div>
  
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
</div>


</body>


</html>