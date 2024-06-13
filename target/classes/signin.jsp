<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yasriman | Sign In</title>
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/signin.css" />
    <style type="text/css">
    @import url("https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap");
	@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");
	
	* {
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	  font-family: "Inria Sans", sans-serif;
	  /* transition: all 0.3s; */
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
	
	.all {
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    height: 100vh;
	  }
	  
	  .formcontainer {
	    display: flex;
	    align-items: center;
	    justify-content: space-evenly;
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
	    transition: border-bottom 0.3s;
	    width: 95%;
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
	  
	  .formcontent form .buttons input{
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
	  
	  .signintext{
	    display: flex;
	    align-items: center;
	    gap: 30px;
	}
	
	.signintext a{
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
	  
	  form .signintext, form .buttons, form .returnhome{
	      font-size: 14px;
	  }
	  
	  h1{
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
	      flex-direction: column-reverse;
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
        <div class="formcontent">
          <h1>SIGN IN</h1>
          <%
              	String signinerror = (String) session.getAttribute("signinerror");
          if (signinerror != null) {
              %>
              <p style="color: red; font-weight: 500;"><%= signinerror %></p>
              <%} %>
          <form action="<%=request.getContextPath()%>/signinaccount" method="post" onsubmit="return validateForm()">
            <div class="secondline">
                <input type="email" id="email" name="email" placeholder="Email" autocomplete="off" required><br />
                <div class="passwordgroup">
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Password"
                        autocomplete="off"
          required
          /><br />
                    <img class="eyeToggle" src="https://svgshare.com/i/176H.svg" draggable="false" alt="Show Password" onclick="togglePasswordVisibility('password')">
                </div>
            </div>
            <div class="signintext">
                <p>Do not have an account yet?</p>
                <a href="<%=request.getContextPath()%>/signupform">Sign Up</a>
            </div>
            <div class="buttons">
                <input type="submit" value="Sign In" />
            </div>
            <a href="<%=request.getContextPath()%>/" class="returnhome">Return Home</a>
            </form>
        </div>
        <div class="imagedisplay">
            <img src="https://i.ibb.co/C0qZ4hh/signinimage.jpg" alt="image" draggable="false"/>
          </div>
      </div>
    </div>
    <script src="./js/singin.js"></script>
    <script type="text/javascript">
    function validateForm() {
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value;
        
        // Regular expression for email validation
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      
        if (!emailRegex.test(email)) {
          alert("Please enter a valid email address.");
          return false;
        }
      
        if (password.length < 8) {
          alert("Password must be at least 8 characters long.");
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
