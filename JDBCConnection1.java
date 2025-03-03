package jdbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCConnection1 {

	public static void main(String[] args) {
		try {
			//1.Register the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root","admin");
			System.out.println(con);
			//3.create statement
			Statement stmt=con.createStatement();
			//4.execute queries
			ResultSet rs=stmt.executeQuery("select* from Person");
			while(rs.next()) {
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
			}
			//5.close connection
			con.close();

		}catch(Exception e){
			System.out.println(e);
		}
	}
}

/*Output
  com.mysql.cj.jdbc.ConnectionImpl@43c1b556
  1 Raj 22
  2 Shubham 33
  3 Akash 21
 */


