

package blog.dao;
import blog.entity.category;
import blog.entity.post;
import java.sql.*;
import java.util.*;
public class postDao {
    Connection con;
    
    public postDao(Connection con){
        this.con=con;
    }
        public ArrayList<category> getAllCategories(){
            ArrayList<category> list=new ArrayList<>();
            try{
                String q="select * from categories";
                Statement st=this.con.createStatement();
                ResultSet set=st.executeQuery(q);
                while(set.next()){
                    int cid=set.getInt("cid");
                    String name=set.getString("name");
                    String descriptiom=set.getString("descriptiom");
                    category c=new category(cid,name,descriptiom);
                    list.add(c);
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
            
            return list;
        }  
        
      
        public boolean savePost(post p){
            boolean f=false;
            try{
                String q="insert into posts(pTitle,pContent,pCode,pPic,cid,id) values(?,?,?,?,?,?)";
                PreparedStatement ps=con.prepareStatement(q);
                ps.setString(1,p.getpTitle());
                ps.setString(2,p.getpContent());
                ps.setString(3,p.getpCode());
                ps.setString(4,p.getpPic());
                ps.setInt(5, p.getCid());
                ps.setInt(6,p.getId());
                
                ps.executeUpdate();
                f=true;
            }catch(Exception e){
                e.printStackTrace();
            }
            
            return f;
        }
        
        //get all posts
        public List<post> getAllPosts(){
    
        List<post> list=new ArrayList<>();
        
            try {
                PreparedStatement p=con.prepareStatement("select * from posts order by pid desc");
                ResultSet set=p.executeQuery();
                while(set.next()){
                    int pid=set.getInt("pid");
                    String pTitle=set.getString("pTitle");
                    String pContent=set.getString("pContent");
                    String pCode=set.getString("pCode");
                    String pPic=set.getString("pPic");
                    Timestamp pDate=set.getTimestamp("pDate");
                    int cid=set.getInt("cid");
                    int id=set.getInt("id");
                    
                    post post=new post(pid,pTitle, pContent, pCode, pPic, pDate, cid, id);
                    
                    list.add(post);
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
        
        return list;
            
        }
        
        //category post one
        public List<post> getPostbycatId(int cid)
        {
            List<post> list=new ArrayList<>();
             try {
                PreparedStatement p=con.prepareStatement("select * from posts where cid=?");
                p.setInt(1,cid);
                ResultSet set=p.executeQuery();
                while(set.next()){
                    int pid=set.getInt("pid");
                    String pTitle=set.getString("pTitle");
                    String pContent=set.getString("pContent");
                    String pCode=set.getString("pCode");
                    String pPic=set.getString("pPic");
                    Timestamp pDate=set.getTimestamp("pDate");
                    //int cid=set.getInt("cid");
                    int id=set.getInt("id");
                    
                    post post=new post(pid,pTitle, pContent, pCode, pPic, pDate, cid, id);
                    
                    list.add(post);
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
             return list;
        }
        
        public post getPostBypostId(int postId){
            post post=null;
            String q="select * from posts where pid=?";
            try{
            PreparedStatement ps=this.con.prepareStatement(q);
            ps.setInt(1,postId);
            
            ResultSet set=ps.executeQuery();
            if(set.next()){
                
                int pid=set.getInt("pid");
                    String pTitle=set.getString("pTitle");
                    String pContent=set.getString("pContent");
                    String pCode=set.getString("pCode");
                    String pPic=set.getString("pPic");
                    Timestamp pDate=set.getTimestamp("pDate");
                    int cid=set.getInt("cid");
                    int id=set.getInt("id");
                    
                     post=new post(pid,pTitle, pContent, pCode, pPic, pDate, cid, id);
                    
                
                
            
                
            }
            }
            catch(Exception e){
                e.printStackTrace();
            }
            return post;
        }
        
        
    }
    

