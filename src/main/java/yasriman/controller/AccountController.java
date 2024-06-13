package yasriman.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import yasriman.dao.AccountDAO;
import yasriman.model.accounts;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List; 

/**
 * Servlet implementation class AddAccountController
 */
//@WebServlet("/AddAccountController")
@MultipartConfig
public class AccountController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AccountDAO AccountDAO;

    public void init() {
        AccountDAO = new AccountDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        
        try {
            switch (action) {
                case "/signupform":
                    showNewForm(request, response);
                    break;
                case "/createaccount":
                    insertAccount(request, response);
                    break;
                case "/signinform":
                    signinformAccount(request, response);
                    break;
                case "/signinaccount":
                    signinAccount(request, response);
                    break;
                case "/staffdashboard":
                    showDashboard(request, response);
                    break;
                case "/listallaccounts":
                    listAllAccounts(request, response);
                    break;
                case "/viewcustomeraccount":
                    viewCustomerAccount(request, response);
                    break;
                case "/editcustomeraccountform":
                    editCustomerAccountForm(request, response);
                    break;
                case "/updatecustomeraccount":
                    updateCustomerAccount(request, response);
                    break;
                // Other cases can be added here
                default:
//                    listUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void updateCustomerAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(); 
//    	
//    	int loggedinaccountid = (int) session.getAttribute("loggedinaccountid"); 
	  	int accountid = Integer.parseInt(request.getParameter("uid"));
	  	String role = (String) session.getAttribute("accountrole");
	  	
	  	System.out.println(accountid);
	  	
	  	if(role.equals("Staff"))
	  	{
		    String accountrole = request.getParameter("role"); 
		    String accountusername = request.getParameter("username"); 
		    String accountfirstname = request.getParameter("firstname"); 
		    String accountlastname = request.getParameter("lastname"); 
		    String accountemail = request.getParameter("email"); 
		    String accountpassword = request.getParameter("password"); 
		    String accountphonenum = request.getParameter("phonenum"); 
		    String accountstreet = request.getParameter("street"); 
		    String accountstate = request.getParameter("state"); 
		    String accountcity = request.getParameter("city");  
		    int accountpostalcode = Integer.parseInt(request.getParameter("postalcode")); 

	  		accounts accounts = null;
			try {
				accounts = AccountDAO.updateCustomerAccount(accountid,accountrole, accountusername,accountfirstname,accountlastname,accountemail,
						accountpassword,accountphonenum,accountstreet,accountstate,accountcity,accountpostalcode);
				
				System.out.println(accounts.getUsername());
				
				request.setAttribute("accounts", accounts); 
			
				RequestDispatcher req = request.getRequestDispatcher("viewaccounts.jsp");
		        req.forward(request, response);
			
		        System.out.println("updatecustomeraccount");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	  	} else
	  	{
	  		session.setAttribute("errorMessage", "You are not allowed to go here!!!"); 
			response.sendRedirect("error.jsp");
	  	}
	}

	private void editCustomerAccountForm(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession(); 
    	
    	int loggedinaccountid = (int) session.getAttribute("loggedinaccountid"); 
	  	int accountid = Integer.parseInt(request.getParameter("uid"));
	  	
	  	System.out.println(accountid);
	  	
	  	if(loggedinaccountid == accountid)
	  	{
	  		accounts accounts = AccountDAO.viewCustomerAccount(accountid);
			
			System.out.println(accounts.getUsername());
			
			request.setAttribute("accounts", accounts); 

			RequestDispatcher req = request.getRequestDispatcher("editprofile.jsp");
	        req.forward(request, response);
		
	        System.out.println("editcustomeraccountform");
	        
	  	} else
	  	{
	  		session.setAttribute("errorMessage", "You are not allowed to go here!!!"); 
			response.sendRedirect("error.jsp");
	  	}
        
	}

	private void viewCustomerAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession(); 
    	
	  	int loggedinaccountid = (int) session.getAttribute("loggedinaccountid"); 
	  	int accountid = Integer.parseInt(request.getParameter("uid"));
	  	String from = request.getParameter("from");
	  	   
	  	System.out.println(accountid);
	  	
	  	if(from.equals("edit"))
	  	{
	  		if(loggedinaccountid == accountid) {
	  		    String accountfirstname = request.getParameter("firstname");
	  		    String accountlastname = request.getParameter("lastname");
	  		    String accountusername = request.getParameter("username");
	  		    String accountphonenum = request.getParameter("phone");
	  		    String accountcity = request.getParameter("city");
	  		    String accountstate = request.getParameter("state");
	  		    String accountstreet = request.getParameter("street");
	  		    int accountpostalcode;
	  		    byte[] accountpicture;
	  		    
	  		    //Debugging purposes
	  		    System.out.println("Received Parameters:");
		  	    System.out.println("Firstname: " + accountfirstname);
		  	    System.out.println("Lastname: " + accountlastname);
		  	    System.out.println("Username: " + accountusername);
		  	    System.out.println("Phone: " + accountphonenum);
		  	    System.out.println("City: " + accountcity);
		  	    System.out.println("State: " + accountstate);
		  	    System.out.println("Street: " + accountstreet);
		  	    System.out.println("Postal Code: " + request.getParameter("postalcode"));
		  	    
	  		    String postalCodeStr = request.getParameter("postalcode");
	  		    if (postalCodeStr == null || postalCodeStr.isEmpty()) {
	  		    	request.setAttribute("postalcodeerror","Postal code is required");
	  		    	RequestDispatcher req = request.getRequestDispatcher("editprofile.jsp");
	  		        req.forward(request, response);
	  		        return;
	  		    }

	  		    try {
	  		        accountpostalcode = Integer.parseInt(postalCodeStr);
	  		    } catch (NumberFormatException e) {
	  		        response.sendRedirect("editprofile.jsp?error=Invalid postal code");
	  		        return;
	  		    }

	  		    Part filePart = request.getPart("profilepic");
	  		    if (filePart != null && filePart.getSize() > 0) {
	  		        try (InputStream fileContent = filePart.getInputStream()) {
	  		            accountpicture = fileContent.readAllBytes();
	  		        }
	  		    } else {
	  		        accountpicture = null;
	  		    }

	  		    try {
	  		        AccountDAO accountDAO = new AccountDAO();
	  		        accounts updatedAccount = accountDAO.editCustomerAccount(accountid, accountfirstname, accountlastname, accountusername, accountphonenum, accountstreet, accountstate, accountcity, accountpostalcode, accountpicture);

	  		        if (updatedAccount != null) {
	  		        	request.setAttribute("accounts", updatedAccount);
	  		            session.setAttribute("loggedinaccountid", loggedinaccountid);
	  		            session.setAttribute("accountusername", updatedAccount.getUsername());
	  		            session.setAttribute("accountfirstname", updatedAccount.getFirstname());
	  		            session.setAttribute("accountlastname", updatedAccount.getLastname());
	  		            session.setAttribute("accountphonenum", updatedAccount.getPhonenum());
	  		            session.setAttribute("accountstreet", updatedAccount.getStreet());
	  		            session.setAttribute("accountstate", updatedAccount.getState());
	  		            session.setAttribute("accountcity", updatedAccount.getCity());
	  		            session.setAttribute("accountpostalcode", updatedAccount.getPostalcode());
	  		            session.setAttribute("accountpicture", updatedAccount.getPicture());
	  		            
	  		          RequestDispatcher req = request.getRequestDispatcher("viewprofile.jsp");
	  		          req.forward(request, response);
	  		        } else { 
	  		          RequestDispatcher req = request.getRequestDispatcher("editprofile.jsp?error=Update failed");
	  		          req.forward(request, response);
	  		        }

	  		    } catch (Exception e) {
	  		        e.printStackTrace();
	  		      RequestDispatcher req = request.getRequestDispatcher("editprofile.jsp?error=Internal server error");
  		          req.forward(request, response); 
	  		    }
	  		} else {
	  		    session.setAttribute("errorMessage", "You are not allowed to go here!!!");
	  		    response.sendRedirect("error.jsp");
	  		}

	  	}
	  	else if(from.equals("dashboard"))
	  	{
	  		String accountrole = (String) session.getAttribute("accountrole");
	  		if(accountrole.equals("Staff"))
	  		{
	  			accounts accounts = AccountDAO.viewCustomerAccount(accountid);
		  		request.setAttribute("accounts", accounts);
		  		
		  		RequestDispatcher req = request.getRequestDispatcher("viewaccounts.jsp");
		  		req.forward(request, response);
		  		System.out.println("From dashboard");
	  		}
	  		else
	  		{
	  			session.setAttribute("errorMessage", "You are not allowed to go here!!!");
	  		    response.sendRedirect("error.jsp");
	  		}
	  		
	  	}
	  	else if(from.equals("dashboardupdate"))
	  	{
	  		String accountrole = (String) session.getAttribute("accountrole");
	  		if(accountrole.equals("Staff"))
	  		{
	  			accounts accounts = AccountDAO.viewCustomerAccount(accountid);
		  		request.setAttribute("accounts", accounts);
		  		
		  		RequestDispatcher req = request.getRequestDispatcher("updateaccounts.jsp");
		  		req.forward(request, response);
		  		System.out.println("From dashboardupdate");
	  		}
	  		else
	  		{
	  			session.setAttribute("errorMessage", "You are not allowed to go here!!!");
	  		    response.sendRedirect("error.jsp");
	  		}
	  		
	  	}
	  	else if(from.equals("index"))
	  	{
	  		if(loggedinaccountid == accountid)
		  	{
		  		accounts accounts = AccountDAO.viewCustomerAccount(accountid);
				
				System.out.println(accounts.getUsername());
				
				request.setAttribute("accounts", accounts);

		        RequestDispatcher req = request.getRequestDispatcher("viewprofile.jsp");
		        req.forward(request, response);
		  	}else
		  	{
		  		session.setAttribute("errorMessage", "You are not allowed to go here!!!"); 
				response.sendRedirect("error.jsp");
		  	}
	  	}
	  	 
    }
//    	else 
//    	{
//    		try {
//                con = ConnectionManager.getConnection();
//                ps = con.prepareStatement("SELECT * FROM accounts WHERE accountid=?");
//                ps.setInt(1, accountid);
//
//                rs = ps.executeQuery();
//
//                if (rs.next()) {
//                    accountusername = rs.getString("accountusername");
//                    accountfirstname = rs.getString("accountfirstname");
//                    accountlastname = rs.getString("accountlastname");
//                    accountphonenum = rs.getString("accountphonenum");
//                    accountstreet = rs.getString("accountstreet");
//                    accountstate = rs.getString("accountstate");
//                    accountcity = rs.getString("accountcity");
//                    accountpostalcode = rs.getInt("accountpostalcode");
//                    accountpicture = rs.getBytes("accountpicture");
//                }
//
//                con.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//    		request.setAttribute("loggedinaccountid", loggedinaccountid);
//            request.setAttribute("accountid", accountid);
//            request.setAttribute("accountusername", accountusername);
//            request.setAttribute("accountfirstname", accountfirstname);
//            request.setAttribute("accountlastname", accountlastname);
//            request.setAttribute("accountphonenum", accountphonenum);
//            request.setAttribute("accountstreet", accountstreet);
//            request.setAttribute("accountstate", accountstate);
//            request.setAttribute("accountcity", accountcity);
//            request.setAttribute("accountpostalcode", accountpostalcode);
//            request.setAttribute("accountpicture", accountpicture);
//
//            
//            RequestDispatcher req = request.getRequestDispatcher("editprofile.jsp");
//            req.forward(request, response);
//    	}
//	}

	private void listAllAccounts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession();
		int loggedinaccountid = (int) session.getAttribute("loggedinaccountid");
		
		String accountrole = (String) session.getAttribute("accountrole");
  		if(accountrole.equals("Staff"))
  		{
  			List<accounts> accounts = AccountDAO.selectAllUsers();
  			
  			request.setAttribute("accounts", accounts);
  			request.setAttribute("loggedinaccountid", loggedinaccountid); 
  			
  			RequestDispatcher req = request.getRequestDispatcher("accounts.jsp");
  			req.forward(request, response); 
  			
  	    	System.out.println("listallaccounts");
  		}
  		else
  		{
  			session.setAttribute("errorMessage", "You are not allowed to go here!!!");
  		    response.sendRedirect("error.jsp");
  		}
		
	}

	private void showDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession(); 
		int loggedinaccountid = (int) session.getAttribute("loggedinaccountid");
		int accountid = loggedinaccountid;
		
		String accountrole = (String) session.getAttribute("accountrole");
		
		if ("Staff".equals(accountrole)) { 
			session.setAttribute("accountrole", "Staff");
			session.setAttribute("loggedinaccountrole", "Staff");
			RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
	        dispatcher.forward(request, response);
	        System.out.println("showDashboard");
		} else {
            session.setAttribute("errorMessage", "You are not allowed to go here!!!"); 
			response.sendRedirect("error.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
        dispatcher.forward(request, response);
        System.out.println("showNewForm");
    }

    private void insertAccount(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String accountfirstname = request.getParameter("firstname");
        String accountlastname = request.getParameter("lastname");
        String accountusername = request.getParameter("username");
        String accountemail = request.getParameter("email");
        String accountpassword = request.getParameter("password");
        String accountphonenum = request.getParameter("phone");

        accounts newAccount = new accounts(accountfirstname, accountlastname, accountusername, accountemail, accountpassword, accountphonenum);

        try {
            if (AccountDAO.isEmailExists(accountemail)) {
                HttpSession session = request.getSession();
                session.setAttribute("emailerror", "Email already exists");
                response.sendRedirect("signup.jsp");
            } else {
                AccountDAO.insertAccount(newAccount);
                HttpSession session = request.getSession();
                session.setAttribute("accountusername", accountusername);
                session.setAttribute("accountfirstname", accountfirstname);
                session.setAttribute("accountlastname", accountlastname);
                session.setAttribute("accountphonenum", accountphonenum);
                session.setAttribute("accountemail", accountemail);
                session.setAttribute("accountrole", "Customer");
                response.sendRedirect("signinform");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
        System.out.println("insertaccount");
    }

    private void signinformAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("signin.jsp");
        dispatcher.forward(request, response);
        System.out.println("signinform");
    }
    
 // Implement the signinAccount method
    private void signinAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            accounts account = AccountDAO.authenticateAccount(email, password);
            request.setAttribute("accounts", account);
            if (account != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedinaccountid", account.getId());
                session.setAttribute("accountrole", account.getRole());
                session.setAttribute("accountusername", account.getUsername());
                session.setAttribute("accountfirstname", account.getFirstname());
                session.setAttribute("accountlastname", account.getLastname());
                session.setAttribute("accountpassword", account.getPassword());
                session.setAttribute("accountemail", account.getEmail());
                session.setAttribute("accountphonenum", account.getPhonenum());
                session.setAttribute("accountstreet", account.getStreet());
                session.setAttribute("accountstate", account.getState());
                session.setAttribute("accountcity", account.getCity());
                session.setAttribute("accountpostalcode", account.getPostalcode());
                session.setAttribute("accountpicture", account.getPicture());

                response.sendRedirect("index.jsp");
//                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//                dispatcher.forward(request, response);
            } else {
            	HttpSession session = request.getSession();
                session.setAttribute("signinerror", "Invalid email or password");
                RequestDispatcher dispatcher = request.getRequestDispatcher("signin.jsp");
                dispatcher.forward(request, response);
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
        System.out.println("showNewsigninaccount");
    }

}