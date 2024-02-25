<%@page import="java.util.List"%>
<%@page import="blog.entity.post"%>
<%@page import="blog.dao.postDao"%>
<%@page import="blog.helper.ConnectionProvider"%>
<!--Load post appslication-->
<div class="row">

<%
    Thread.sleep(1000);
postDao dao=new postDao(ConnectionProvider.getConnection());


int cid=Integer.parseInt(request.getParameter("cid"));


List<post> posts=null;
if(cid==0){
 posts    =dao.getAllPosts();
    }else{
    posts=dao.getPostbycatId(cid);
    }
      if(posts.size()==0){
      out.println("<h3 class='display-3 text-center'>No posts in category</h3>");
      return;
    }  
       
for(post p:posts)
{
%>
<div class="col-md-6 mt-2">
    <div class="card">
        <img class="card-img-top" src="pics/<%= p.getpPic()%>" alt="Card image cap">
        <div class="card-body">
            <b><%= p.getpTitle()%></b>
            <p><%= p.getpContent() %></p>
        </div>
        <div class="card-footer bg-dark text-center">
            <a href="showblog.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-light btn-sm">READ MORE</a>
            <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><span>10</span></a>
        </div>
        
    </div>
</div>

<%
}
    

%>
</div>