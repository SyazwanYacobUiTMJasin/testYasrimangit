<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yasriman | Dashboard</title>
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/accounts.css">
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
	  /* overflow-y: hidden; */
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
	
	.navbarbg div a, #sidebar a {
	  text-decoration: none;
	 	color: white;
	  font-weight: 400;
	}
	
	.navbarbg div a
	{
		color: #1a4d2e;
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
	
	.tablediv
	{
		overflow:auto;
		max-height: 65vh;
		max-width: 80vw;
	}
	
	.formcontent input[type="text"]:focus, 
	.formcontent input[type="email"]:focus, 
	.formcontent input[type="password"]:focus, 
	.formcontent input[type="tel"]:focus{
	    border-bottom: 2px solid #d5c7b2;
	    transition: border-bottom 0.3s; 
	}
	
	.formcontent select:focus
	{
		border-bottom: 2px solid #d5c7b2;
	    transition: border-bottom 0.3s; 
	}
	
	.formcontent select
	{
		background-color: #d5c7b2; 
	    border: 1px solid #1a4d2e;
	    outline: none;
	    padding: 5px;
	    transition: border-bottom 0.3s;
	    width: 70%;
	}
	
	.formcontent input[type="text"],
	  .formcontent input[type="email"],
	  .formcontent input[type="password"],
	  .formcontent input[type="tel"]{
	    background-color: transparent;
	    border: none;
	    border-bottom: 2px solid #1a4d2e;
	    outline: none;
	    padding: 5px;
	    transition: border-bottom 0.3s;
	    width: 70%;
	  }
	  
	  
	  
	
	/* END NAVBAR */
	
	#hero {
	    display: flex;
	    height: 75vh;
	    margin-top: 25vh;
	    overflow: hidden;
	}
	
	#sidebar {
		overflow: hidden; 
	    min-width: 222px;
	    background-color: #1a4d2e;
	    color: white;
	    padding: 20px;
	}
	
	#sidebar ul{
	    display: flex;
	    gap: 30px;
	    flex-direction: column;
	    padding-left: 10px;
	}
	
	#sidebar ul li{
	    border-bottom: 1px solid rgba(255, 255, 255, 0.241);
	    padding: 4px 5px;
	}
	
	.main{
	  width: 100%;
	  display:flex;
	  flex-direction: column;
	  height: fit-content;
	  padding: 30px 20px;
	  overflow: visible;
	}
	
	#sidebar b{
	  font-weight: 600;
	  font-size: 20px;
	}
	
	.topbar
	{
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding-bottom: 0px;
	}
	
	h1{
		font-size: 20px; 
	}
	 
	table {
	    border-collapse: collapse;
	    border: 1px solid #ddd;
	    width: 100%;
	    max-height: 40vh;
	    overflow:auto;
	    /* box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); */
	  }
	
	  th, td {
	    padding: 8px;
	    text-align: center;
	    border-bottom: 1px solid #ddd;
	  }
	  
	  th {
	    background-color: #d5c7b24f;
	  }
	
	  .edit-btn, .update-btn {
	  
	  text-decoration: none; 
	  font-weight: 400;
	    padding: 6px 12px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	  }
	  
	  .buttons
	  {
	  	display:flex;
	  	width: 100%;
	  	justify-content: center;
	  	align-items: center;
	  	gap: 30px;
	  }
	  
	  .main .edit-btn {
	    background-color: #d5c7b2;
	    color: #1a4d2e;
	  }
	  
	  .update-btn { 
	    background-color: #1a4d2e;
	    color: white;
	    font-weight: 400;
	  }
	  
	  form.formcontent .update-btn { 
	    background-color: #1a4d2e;
	    color: white;
	  }
	
	.notespan
	{
		display: none;
	}
	@media (width < 830px) {
	  * {
	    font-size: 95%;
	  }
	
	  #main{
	    grid-template-columns: repeat(1, 1fr);
	    height: fit-content;
	    overflow-y: visible;
	  }
	
	  .main
	  {
	    height:70vh;
	  }
	
	  h1
	  {
	    font-size: 20px;
	  }
	}
	
	
	@media (width < 600px) {
	  #sidebar  {
	    min-width: 100px;
	    padding: 20px 10px;
	    height: 100%;
	  }
	
	  #sidebar ul
	  {
	    padding: 0;
	  }
	   
	}
	
	@media (width < 470px)
	{
	.notespan
	{
		display: inline;
	}
		.tablediv{
	  max-width: 65vw;
	  }
	}
	
	@media (width < 353px)
	{
	  #main
	  {
	    padding: 20px 0;
	  }
	  
	  .tablediv{
	  max-width: 50vw;
	  }
	}
    </style>
</head>
<body>
    <div class="navbarbg">
        <a href="./index.jsp"><h2>YASRIMAN</h2></a>
        <div class="navlinks">
            <a href="./index.jsp">HOME</a>
            <!--<a href="./product.html">PRODUCTS</a
            <a href="./information.html">INFORMATION</a>
            <a href="./faq.html"  class="active">FAQ</a>
            <a href="./viewcart.html">CART</a>>-->
    </div> 
      </div>
<div id="hero">
    <div id="sidebar">
        <b>NAV LINKS</b>
        <!-- Sidebar Navigation Links -->
        <ul>
            <br>
            <li><a href="<%=request.getContextPath()%>/staffdashboard">Dashboard</a></li>
            <li><a href="<%=request.getContextPath()%>/listallaccounts">Accounts</a></li>
            <li><a href="./inventory.html">Inventory</a></li>
            <li><a href="./order.html">Orders</a></li>
            <!-- Add more navigation links as needed -->
        </ul>
    </div>

    <div class="main">
    <h1>Accounts</h1> <span class="notespan">scroll right for more action</span>
    <div class="tablediv">
    <table border="1">
		<tr>
			<th>ID</th>
			<th>Role</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th colspan="2">Action</th>
		</tr>
		<c:forEach items="${accounts}" var="account">
		<tr>
        	<td><c:out value="${account.id}"/></td>
            <td><c:out value="${account.role}"/></td>
            <td><c:out value="${account.firstname}"/></td>    
            <td><c:out value="${account.lastname}"/></td>      
            <td><a class="btn btn-info edit-btn" href="<%=request.getContextPath()%>/viewcustomeraccount?uid=<c:out value="${account.id}&from=dashboard"/>">View</a></td>
            <td><a class="btn btn-primary update-btn" href="<%=request.getContextPath()%>/viewcustomeraccount?uid=<c:out value="${account.id}&from=dashboardupdate"/>">Update</a></td>
        </tr>
        </c:forEach>
	</table>
	</div>
    </div>
</div> 
</body>
</html>
