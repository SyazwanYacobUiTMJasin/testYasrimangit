package yasriman.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionManager {
    private static final String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "admin";

//	private static final String DB_CONNECTION = "jdbc:postgresql://c8lj070d5ubs83.cluster-czrs8kj4isg7.us-east-1.rds.amazonaws.com:5432/d2aphrmb1ou4cb";
//	private static final String DB_USER = "u3pt0qharbf9dh";
//	private static final String DB_PASSWORD = "p1d6c57bad24154551572e177fe4e09c7725b9a8956bff5b07faf296a505077ab";

    public static void main(String[] args) {
        try {
            Connection con = getConnection();
            if (con != null) {
                System.out.println("Connected to the PostgreSQL Server.");

//                // Retrieve all accounts and print them out
//                printAllAccounts(con);

                con.close();
            }
        } catch (SQLException e) {
            System.out.println("ERROR: Connection to PostgreSQL Server failed.");
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        Connection con = null;
        try {
            // Create connection
        	Class.forName("org.postgresql.Driver");

            con = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
        } catch (SQLException e) {
            System.out.println("ERROR connecting PostgreSQL Server.");
            throw e;
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return con;
    }

    public static void printAllAccounts(Connection con) throws SQLException {
        String query = "SELECT * FROM accounts";
        try (PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int accountId = rs.getInt("accountid");
                String firstname = rs.getString("accountFirstName");
                String lastname = rs.getString("accountLastName");
                String username = rs.getString("accountUsername");
                String email = rs.getString("accountEmail");
                String password = rs.getString("accountPassword");
                String phone = rs.getString("accountPhoneNum");

                System.out.println("Account ID: " + accountId);
                System.out.println("First Name: " + firstname);
                System.out.println("Last Name: " + lastname);
                System.out.println("Username: " + username);
                System.out.println("Email: " + email);
                System.out.println("Password: " + password);
                System.out.println("Phone: " + phone);
                System.out.println("--------------------");
            }
        } catch (SQLException e) {
            System.out.println("ERROR executing query.");
            throw e;
        }
    }
}
