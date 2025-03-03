package jdbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCDelete1 {

	public static void main(String[] args) {
		try {
			//1.Register the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root","admin");
			System.out.println(con);
			//3.create statement
			PreparedStatement ps=con.prepareStatement("delete from person where person_id=?");
			ps.setInt(1, 3);



			int i=ps.executeUpdate();
			System.out.println(i+"record deleted successfully");
		}catch(Exception e){
			System.out.println(e);
		}

	}

}

/*Output:
  com.mysql.cj.jdbc.ConnectionImpl@43c1b556
  1record deleted successfully
 */
