
package blog.helper;
import java.sql.*;

public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection(){
        try{
           if(con==null){
                //class load
            
            Class.forName("com.mysql.jdbc.Driver");
            
            //connection driver
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectblog","root","rahul");
            
           }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
