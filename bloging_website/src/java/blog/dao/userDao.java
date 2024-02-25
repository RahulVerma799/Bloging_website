package blog.dao;
import blog.entity.new_table;
import java.sql.*;
public class userDao {
    private Connection con;
    
    public userDao(Connection con){
        this.con=con;
    } 
    public boolean saveUser(new_table user){
        boolean f=false;
        try{
            
            String query="insert into new_table(userName,email,password,gender) values(?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,user.getUserName());
            ps.setString(2,user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getGender());
            
            ps.executeUpdate();
            f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public new_table getUserbyemailandpassword(String email,String password){
        new_table user=null;
        try{
            String query="select * from new_table where email =? and password =?";
            PreparedStatement ps= con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2, password);
            
            ResultSet set= ps.executeQuery();
            if(set.next()){
                user=new new_table();
             String name=set.getString("userName");   
            user.setUserName(name);
            user.setId(set.getInt("id"));
            user.setEmail(set.getString("email"));
            user.setPassword(set.getString("password"));
            user.setProfile(set.getString("Profile"));
            
            
                
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return user;
    } 
    
}
