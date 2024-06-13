<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yasriman | Sign Up</title>
	<link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/signup.css" />
    <style type="text/css">
    @import url("https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Inria Sans", sans-serif;
  overflow-x: hidden;
  overflow-y: hidden;
}

body {
  background-color: #f5efe6;
  /* max-width: 100vw;
  max-height: 100vh; */
  /* overflow-y: hidden; */
  display: flex;
  align-items: center;
  justify-content: center;
}

/* START NAVBAR */

.navbarbg {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #e8dfca;
  color: #1a4d2e;
  font-weight: 700;
  flex-direction: column;
  padding: 20px 0;
  gap: 30px;
  height: 25vh;
}

.navbarbg h2 {
  font-size: 30px;
}

.navbarbg div a {
  text-decoration: none;
  color: inherit;
  font-weight: 400;
}

.navbarbg .loginicon {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
}

.navbarbg .logintext {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 90vw;
}

.navbarbg .logintext a {
  display: flex;
  align-items: center;
  justify-content: end;
  width: fit-content;
  gap: 10px;
  flex-direction: row-reverse;
}

.logintext .searchdiv {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
}

.logintext img {
  max-width: 20px;
}

.logintext input[type="text"] {
  background-color: transparent;
  border: none;
  border-bottom: 2px solid #1a4d2e;
  outline: none;
  padding: 5px;
}

.navbarbg .navlinks {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 80vw;
  gap: 160px;
}

.navlinks a:hover {
  border-bottom: 2px solid #000;
  transition: all 0.3s ease-in-out;
}
/* END NAVBAR */

.all {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

.formcontainer {
  display: flex;
  align-items: center;
  justify-content: space-around;
  width: 1000px;
  height: 650px;
  color: #1a4d2e;
  background-color: #fff;
}

.imagedisplay {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  width: 50%;
  height: 100%;
  /* padding: 50px; */
}

.imagedisplay img {
  width: auto;
  height: 100%;
}

.formcontent {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  width: 50%;
}

.formcontent input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"] {
  background-color: transparent;
  border: none;
  border-bottom: 2px solid #1a4d2e;
  outline: none;
  padding: 5px;
  width: 95%;
  transition: border-bottom 0.3s;
}

.formcontent .firstline {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 20px;
}

.formcontent .secondline {
  display: flex;
  align-items: start;
  justify-content: center;
  flex-direction: column;
  gap: 3px;
  padding-top: 25px;
  width: 100%;
}

.formcontent form .buttons input {
  background-color: #1a4d2e;
  color: #f5efe6;
  padding: 10px 40px;
  cursor: pointer;
  margin-top: 20px;
  outline: none;
  border: none;
}

form {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  gap: 10px;
}

form a {
  text-decoration: none;
  color: inherit;
  font-weight: 400;
}

form .returnhome {
  font-size: 15px;
  text-decoration: none;
  color: inherit;
  font-weight: 400;
  margin-top: 20px;
  border-bottom: 2px solid #1a4d2e;
}

.signintext {
  display: flex;
  align-items: center;
  gap: 30px;
}

.signintext a {
  /* display: flex;
  border-bottom: 2px solid #1a4d2e;
  gap: 30px; */
  font-size: 13px;
  border: 1px solid #1a4d2e;
  background-color: #d5c7b2;
  color: #1a4d2e;
  padding: 5px 30px;
  cursor: pointer;
  /* margin-top: 20px; */
  outline: none;
  order: none;
}

form .signintext,
form .buttons,
form .returnhome {
  font-size: 14px;
}

h1 {
  margin-bottom: 20px;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
input[type="tel"]:focus {
  border-bottom: 2px solid #d5c7b2;
  transition: border-bottom 0.3s;
}

.passwordgroup {
  display: flex;
  align-items: center;
  width: 100%;
  margin-bottom: 25px;
}

.passwordgroup img {
  width: 15px;
}

@media (width <1024px) {
  * {
    font-size: 98%;
  }

  .formcontainer {
    flex-direction: column;
    width: fit-content;
    padding: 20px 0;
    gap: 10px;
    /* height: fit-content; */
  }

  .imagedisplay {
    height: 70px;
    width: 80%;
  }
  .imagedisplay img {
    object-fit: cover;
    width: 100%;
    height: 100%;
    object-position: 0% 58%;
  }
  h1 {
    font-size: 30px;
  }
  .formcontent
  {
    width: 80%;
  } 
}

@media (width < 500px) {
  .formcontainer
  {
    transform: scale(0.8);
  }
}
    
    </style> 
  </head>
  <body>
    <div class="all">
      <div class="formcontainer">
        <div class="imagedisplay">
          <img src="https://i.ibb.co/PZ8VYLY/signupimage.png" alt="image" draggable="false" />
        </div>
        <div class="formcontent">
          <h1>SIGN UP</h1>
          <form onsubmit="return validateForm()" action="<%=request.getContextPath()%>/createaccount" method="post" >
            <div class="firstline">
              <input
                type="text"
                id="firstname"
                name="firstname"
                placeholder="First Name"
                autocomplete="off"
                required
              /><br />
              <input
                type="text"
                id="lastname"
                name="lastname"
                placeholder="Last Name"
                autocomplete="off"
                required
              /><br />
            </div>
            <div class="secondline">
              <input
                type="text"
                id="username"
                name="username"
                placeholder="Username"
                autocomplete="off"
                required
              /><br />
              <%
              	String emailerror = (String) session.getAttribute("emailerror");
              if (emailerror != null) {
              %>
              <p style="color: red; font-weight: 500;"><%= emailerror %></p>
              <%} %>
              <input
                type="email"
                id="email"
                name="email"
                placeholder="Email"
                autocomplete="off"
                required
              /><br />
              <div class="passwordgroup">
                <input
                  type="password"
                  id="password"
                  name="password"
                  placeholder="Password"
                  autocomplete="off"
                  required
                /><br />
                <img
                  class="eyeToggle"
                  src="https://svgshare.com/i/176H.svg"
                  draggable="false"
                  alt="Show Password"
                  onclick="togglePasswordVisibility('password')"
                />
              </div>
              <div class="passwordgroup">
                <input
                  type="password"
                  id="confirmpassword"
                  name="confirmpassword"
                  placeholder="Confirm Password"
                  autocomplete="off"
                  required
                /><br />
                <img
                  class="eyeToggle"
                  src="https://svgshare.com/i/176H.svg"
                  draggable="false"
                  alt="Show Password"
                  onclick="togglePasswordVisibility('confirmpassword')"
                />
              </div>
              <input
                type="tel"
                id="phone"
                name="phone"
                placeholder="Phone Number"
                autocomplete="off"
                value="+60"
                required
              /><br />
            </div>
            <div class="signintext">
              <p>Already have an account?</p>
              <a href="<%=request.getContextPath()%>/signinform">Sign In</a>
            </div>
            <div class="buttons">
              <input type="submit" value="Sign Up" />
            </div>
            <a href="<%=request.getContextPath()%>/" class="returnhome">Return Home</a>
          </form>
        </div>
      </div>
    </div>
    <script src="./js/signup.js"></script>
    <script type="text/javascript">
    function validateForm() {
        const firstName = document.getElementById("firstname").value.trim();
        const lastName = document.getElementById("lastname").value.trim();
        const username = document.getElementById("username").value.trim();
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirmpassword").value;
        const phone = document.getElementById("phone").value.trim();
        
        // Regular expressions for validation
        const nameRegex = /^[a-zA-Z]{3,10}$/;
        const usernameRegex = /^[a-zA-Z0-9_]{3,}$/;
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;
        const malaysiaPhoneRegex = /^\+60\d{9,10}$/;
      
        if (!nameRegex.test(firstName)) {
          alert("First name must be between 3 and 10 characters long and contain only letters.");
          return false;
        }
      
        if (!nameRegex.test(lastName)) {
          alert("Last name must be between 3 and 10 characters long and contain only letters.");
          return false;
        }
      
        if (!usernameRegex.test(username)) {
          alert("Username must be at least 3 characters long and can only contain letters, numbers, and underscore.");
          return false;
        }
      
        if (!emailRegex.test(email)) {
          alert("Please enter a valid email address.");
          return false;
        }
      
        if (!passwordRegex.test(password)) {
          alert("Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one number.");
          return false;
        }
      
        if (password !== confirmPassword) {
          alert("Passwords do not match.");
          return false;
        }
      
        if (!malaysiaPhoneRegex.test(phone)) {
          alert("Please enter a valid Malaysia phone number (e.g., +60123456789).");
          return false;
        }
      
        return true;
      }
      
     
      

    document.addEventListener("DOMContentLoaded", function() {
        const eyeToggles = document.querySelectorAll(".eyeToggle");

        eyeToggles.forEach(function(eyeToggle) {
            eyeToggle.addEventListener("click", function() {
                const passwordField = this.parentElement.querySelector("input[type='password']");
                
                if (this.src.includes("https://svgshare.com/i/176H.svg")) {
                    this.src = "https://svgshare.com/i/177M.svg";
                    
                } else if (this.src.includes("https://svgshare.com/i/177M.svg")) {
                    this.src = "https://svgshare.com/i/176H.svg";
                }
            });
        });
    });

    function togglePasswordVisibility(inputId) {
        var passwordInput = document.getElementById(inputId);
        var eyeIcon = passwordInput.nextElementSibling;

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            eyeIcon.src = "https://svgshare.com/i/177M.svg";
            eyeIcon.alt = "Hide Password";
        } else {
            passwordInput.type = "password";
            eyeIcon.src = "https://svgshare.com/i/176H.svg";
            eyeIcon.alt = "Show Password";
        }
    }

    </script>
  </body>
</html>
