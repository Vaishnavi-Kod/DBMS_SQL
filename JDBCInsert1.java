package jdbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCInsert1 {

	public static void main(String[] args) {
		try {
			//1.Register the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root","admin");
			System.out.println(con);
			//3.create statement
			PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?)");
			ps.setInt(1, 3);
			ps.setString(2, "Akash");
			ps.setInt(3, 21);
			int i=ps.executeUpdate();
			System.out.println(i+"record inserted successfully");
		}catch(Exception e){
			System.out.println(e);
		}

	}
}

/*Output:
 com.mysql.cj.jdbc.ConnectionImpl@43c1b556
 1record inserted successfully
 */
