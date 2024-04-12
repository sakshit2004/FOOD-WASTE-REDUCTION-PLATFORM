<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Arial:400,500,600,700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Arial', sans-serif;
}

body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #f3f3f3; 
}

.wrapper {
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 30px;
  border-radius: 6px;
  box-shadow: 0 3px 5px rgba(0, 0, 0, 0.1);
}

.wrapper h2 {
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #111; 
}

.wrapper h2::before {
  content: '';
  position: absolute;
  left: 0;
  bottom: -5px; 
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #FF9900; 
}

.wrapper form {
  margin-top: 30px;
}

.wrapper form .input-box {
  height: 52px;
  margin: 18px 0;
}

form .input-box input,
form .input-box select {
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #111; 
  border: 1.5px solid #ddd; 
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}

.input-box input:focus,
.input-box input:valid,
.input-box select:focus,
.input-box select:valid {
  border-color: #FF9900; 
}

form .policy {
  display: flex;
  align-items: center;
}

form h3 {
  color: #666; 
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}

.input-box.button input {
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #FF9900; 
  cursor: pointer;
}

.input-box.button input:hover {
  background: #FFD700; 
}

form .text h3 {
  color: #111; 
  width: 100%;
  text-align: center;
}

form .text h3 a {
  color: #FF9900;
  text-decoration: none;
}

form .text h3 a:hover {
  text-decoration: underline;
}


.dialog-box {
  margin-top: 20px;
  padding: 20px;
  background: #f9f9f9; 
  border: 1px solid #ddd; 
  border-radius: 6px;
}

.dialog-box p {
  font-size: 16px;
  color: #333; 
}

.dialog-box button {
  margin-top: 15px;
  padding: 10px 20px;
  background: #FF9900; 
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.dialog-box button:hover {
  background: #FFD700; 
}
</style>


</head>
<body>

<div class="wrapper">
  <h2>USER REGISTRATION</h2>
  <%-- Check for success message in session and display it if present --%>
  <% 
  String successMessage = (String) session.getAttribute("successMessage");
  if (successMessage != null) { 
  %>
    <div style="text-align:center;" class="success-message"><%= successMessage %></div>
  <% 
    session.removeAttribute("successMessage"); 
  } %>
  <form action="RegistrationForm" method="post">
    <div class="input-box">
      <input type="text" name="name1" placeholder="Enter your name" required>
    </div>
    <div class="input-box">
      <input type="text" name="email1" placeholder="Enter your email" required>
    </div>
    <div class="input-box">
      <input type="password" name="pass1"  placeholder="Create password" required>
    </div>
    
    <div class="input-box">

      <div class="select-box">
        <select name="Type1">
          <option value="" disabled selected>Type Of User</option>
          <option value="Retailer">Retailers</option>
          <option value="charitable"> Charitable Organization</option>
          <option value="Consumers"> Consumers</option>

        </select>
      </div>
    </div>
    <div class="policy">
      <input type="checkbox">
      <h3>I accept all terms & condition</h3>
    </div>
    <div class="input-box button">
      <input type="Submit" value="Register Now">
    </div>
    <div class="text">
      <h3>Already have an account? <a href="login.jsp">Login now</a></h3>
    </div>
  </form>
</div>

</body>
</html>
