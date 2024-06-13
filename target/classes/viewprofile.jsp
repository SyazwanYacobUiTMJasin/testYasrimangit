<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
// import java.util.Base64;

// Retrieve session attributes
Integer loggedinaccountid = (Integer) session.getAttribute("loggedinaccountid");
String accountusername = (String) session.getAttribute("accountusername");
String accountfirstname = (String) session.getAttribute("accountfirstname");
String accountlastname = (String) session.getAttribute("accountlastname");
String accountphonenum = (String) session.getAttribute("accountphonenum");
String accountstreet = (String) session.getAttribute("accountstreet");
String accountstate = (String) session.getAttribute("accountstate");
String accountcity = (String) session.getAttribute("accountcity");
Integer accountpostalcode = (Integer) session.getAttribute("accountpostalcode");
//String accountpicture = (String) session.getAttribute("accountpicture");

// Decode the account picture if it's in Base64
//byte[] accountPictureBytes = null;
//if (accountpicture != null) {
//    accountPictureBytes = Base64.getDecoder().decode(accountpicture);
//}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yasriman | Profile</title>
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/viewprofile.css" />
    <style type="text/css">
    @import url("https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Inria Sans", sans-serif;
  transition: all 0.3s;
  overflow-x: hidden;
  overflow-y: hidden;
}

body {
  background-color: #f5efe6;
  max-width: 100vw;
  max-height: 100vh;
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
  position: fixed;
  width: 100vw;
  overflow: hidden;
}

.navbarbg a{
  text-decoration: none;
  color: #1a4d2e;
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

.navlinks .active{
  border-bottom: 1px solid #1a4d2e;
}

.navlinks a:hover {
  border-bottom: 1px solid #1a4d2e;
  transition: border-bottom 0.3s ease-in-out;
}

input[type="text"]:focus {
    border-bottom: 2px solid #d5c7b2;
    transition: border-bottom 0.3s; 
}

/* END NAVBAR */

.hero{
    background-color: rgba(255, 255, 255, 0.455);
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: 70vw;
    margin: 0 auto;
    margin-top: 30vh;
    flex-direction: column;
    /* gap: 20px; */
    min-height: 60vh;
    padding: 50px 20px;
}

form{
    display: flex;
    flex-direction: column;
    gap: 5px;
    width: 50vw;
}

form .submitbutton{
    width: 10vw;
    margin: 0 auto;
}

.hero a .submitbutton{
    width: 10vw;
    margin: 0 auto;
}

.maingroup{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}

.group{
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    width: 20vw;
    gap: 5px;
}

.group1{
    display: flex;
    justify-content: space-between;
    align-items: center;
}


/* input[type="text"],
input[type="tel"],
select,
button {
    padding: 5px;
    margin-bottom: 0px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
} */

/* input[type="file"] {
    margin-top: 10px;
} */

input[type="file"]{
    border: none;
    outline: none;
    width: fit-content;
}

form input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"], select {
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #1a4d2e;
  outline: none;
  padding: 5px;
  transition: border 0.3s;
  width: auto;
  /* border-radius: 5px; */
}

form input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
input[type="tel"]:focus, 
select:focus{
    border-bottom: 1px solid #1a4d2e;
    transition: border 0.3s;
    
}

 form a button{
    background-color: #1a4d2e;
    color: #f5efe6;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 20px;
    outline: none;
    border: none;
 }
 
  .hero a .submitbutton{
    background-color: #1a4d2e;
    color: #f5efe6;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 20px;
    outline: none;
    border: none;
 }

 form a button:hover{
    background-color: #d5c7b2;
 }

 form a{
    margin: 0 auto;
 }

 form img{
    width: 40px;
    height: auto;
 }
 
 @media(max-width: 1391px)
 {
	 .hero
	 {
	 	max-width: 80vw;
	 }
 	form
 	{
 		width: 60vw;
 	}
 	.group
 	{
 		width:27vw;
 	}
 }
 
  @media(max-width: 1034px)
 {
 	.hero
	 {
	 	width: 98vw;
	 }
	 .formdiv
	 {
	 	overflow: auto;
	 	max-height: 40vh;
	 }
	 .maingroup
	 {
	 	flex-direction: column;
	 }
 	.group1
 	{
 		flex-direction: column;
 		width:100%;
 	}
 	.group
 	{
 		width:100%;
 	}
 	form input[type="text"], input[type="email"], input[type="password"], input[type="tel"], select, label
 	{
 		width: 100%;
 		text-align: left;
 	}
 	
 	form .submitbutton
 	{
 		width: 100%;
 	}
 	
 	.hero a .submitbutton
 	{
 		width: 100%;
 	}
 }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" /> 
</head>
<body>
    <div class="navbarbg">
        <a href="./index.html">
            <h2>YASRIMAN</h2>
        </a>
        
        <div class="navlinks">
            <a href="./index.jsp">HOME</a>
        </div>
    </div>
    <div class="hero">
        <h1>View Profile</h1>
        <div class="formdiv">
        <form id="profile-form" action="#" method="POST" enctype="multipart/form-data">
            <label for="profilepic">Profile Picture:</label>
            <img src="data:image/jpeg;base64,a" alt="profile picture" name="profilepic"/>

            <label for="username">Username:</label>
            <input
                type="text"
                id="username"
                name="username"
                placeholder="Your Username"
                value="${accounts.username}"
                readonly
                autocomplete="off"
            />
            <div class="maingroup">
                <div class="fnlname group">
                    <label for="firstname">First Name:</label>
                    <input
                        type="text"
                        id="firstname"
                        name="firstname"
                        placeholder="Your First Name"
                        value="${accounts.firstname}"
                        readonly
                        autocomplete="off"
                    />
                    <label for="phone">Phone Number:</label>
                    <input
                        type="tel"
                        id="phone"
                        name="phone"
                        placeholder="Your Phone Number"
                        value="${accounts.phonenum}"
                        readonly
                        autocomplete="off"
                    />
                </div>
                <div class="phonenumngender group">
                    <label for="lastname">Last Name:</label>
                    <input
                        type="text"
                        id="lastname"
                        name="lastname"
                        placeholder="Your Last Name"
                        value="${accounts.lastname}"
                        readonly
                        autocomplete="off"
                    />

                    <label for="street">Street:</label>
                    <input
                        type="text"
                        id="street"
                        name="street"
                        placeholder="Street Name"
                        value="${accounts.street}"
                        readonly
                        autocomplete="off"
                    />
                </div>
            </div>
            <div class="statecitypostal group1">
                <label for="state">State:</label>
                <input
                    type="text"
                    id="state"
                    name="state"
                    placeholder="State Name"
                    value="${accounts.state}"
                    readonly
                    autocomplete="off"
                />

                <label for="city">City:</label>
                <input
                    type="text"
                    id="city"
                    name="city"
                    placeholder="City Name"
                    value="${accounts.city}"
                    readonly
                    autocomplete="off"
                />

                <label for="postalcode">Postal Code:</label>
                <input
                    type="text"
                    id="postalcode"
                    name="postalcode"
                    placeholder="Postal Code"
                    value="${accounts.postalcode}"
                    readonly
                    autocomplete="off"
                />
            </div>
        </form> 
    </div>
    	<a href="<%=request.getContextPath()%>/editcustomeraccountform?uid=${accounts.id}">
                <button type="button" class="submitbutton">Edit Profile</button>
        </a>
    </div>

    <script>
        // Disable the select element for gender
        document.getElementById("gender").disabled = true;
    </script>
</body>
</html>
