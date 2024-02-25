
package blog.entity;


public class category {
    private int cid;
    private String name;
    private String descriptiom;
    
    public category(int cid,String name,String descriptiom){
        this.cid=cid;
        this.name=name;
        this.descriptiom=descriptiom;
    }
    public category(){
        
    }
    public category(String name,String descriptiom){
        this.name=name;
        this.descriptiom=descriptiom;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptiom() {
        return descriptiom;
    }

    public void setDescriptiom(String descriptiom) {
        this.descriptiom = descriptiom;
    }
    
}


