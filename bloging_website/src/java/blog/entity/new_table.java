
package blog.entity;

public class new_table {
    private int id;
    private String userName;
    private String email;
    private String password;
    private String gender;
    private String Profile;

   
    

    public new_table() {
    }

    public new_table(int id, String userName, String email, String password, String gender) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.gender = gender;
       
    }
    
     public new_table( String userName, String email, String password, String gender) {
       
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.gender = gender;
       
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
     public String getProfile() {
        return Profile;
    }

    public void setProfile(String Profile) {
        this.Profile = Profile;
    }
    
    
    
}
