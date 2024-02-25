

<%@page import="blog.entity.post"%>
<%@page import="blog.dao.postDao"%>
<%@page import="blog.helper.ConnectionProvider"%>
<%@page import="blog.entity.new_table"%>
<%@page errorPage="ErrorPage.jsp"%>
<%
new_table user=(new_table)session.getAttribute("currentUser");
if(user==null){
response.sendRedirect("Login.jsp");
    }
%>

<%
int postId=Integer.parseInt(request.getParameter("post_id"));
postDao dao= new postDao(ConnectionProvider.getConnection());
post p=dao.getPostBypostId(postId);


%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            
            <%= p.getpTitle()%>      
        </title>
          <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/newcss.css"/>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!-- comment -->
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%, 0 100%, 0 0, 20% 0);
            }
            .post-title{
                font-weight:100;
                font-size:30px;
            }
            .post-content{
                font-weight:100;
                font-size:25px;
            }
            .post-code{
                
            }
            body{
                background:url(pics/bgpic.jpg);
                background-size:cover;
                background-attachment: fixed;
            }
            
        </style>
        
    </head>
    <body>
               
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-cubes" ></span>Project</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-lightbulb-o" &nbsp &nbsp ></span>  LearnCode with Rahul <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="fa fa-group"></span>Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <!--  <a class="nav-link" href="Login.jsp"><span class="fa fa-user-circle"></span>Login</a>-->
      </li>
      
       <li class="nav-item">
         <a class="nav-link" href="#" data-toggle="modal" data-target="#addpost"><span class="fa fa-asterisk"></span>Add Post</a>
      </li>
      
       
    </ul>
      <ul class="navbar-nav mr-right">
           <li class="nav-item">
          <a class="nav-link" href="#!" data-toggle="modal" data-target="#profileModal"><span class="fa fa-user-circle"></span><%= user.getUserName()%></a>
      </li>
      
       <li class="nav-item">
         <a class="nav-link" href="logoutservlet"><span class="fa fa-user-circle"></span>logout</a>
          
      </ul>
  </div>
</nav>
      <!--Main content of body-->
      
      <div class="coniainer">
          <div class="row">
              <div class="col-md-6 offset-md-3">
                  <div class="card">
                      <div class="card-header bg-dark text-center text-white">
                          <h4 class="post-title"><%= p.getpTitle()%></h4>
                      </div>
                      <div class="card-body">
                            <img class="card-img-top" src="pics/<%= p.getpPic()%>" alt="Card image cap">
                            <div class="col-md-4">
                                <p><%= p.getpDate().toLocaleString()%></p>
                            </div>
                       
                            <p class="post-content"><%= p.getpContent()%></p>
                          
                          <div class="post-code">
                          <pre><%= p.getpCode()%></pre>
                          </div>>
                          
                      </div>
                          
                          <div class="card-footer">
                              
                              </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      <!--end of main cntent of body-->
    </body>
</html>
