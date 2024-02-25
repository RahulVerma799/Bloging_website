<%-- 
    Document   : profile
    Created on : Nov 1, 2023, 3:28:46 PM
    Author     : RAHUL
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="blog.entity.category"%>
<%@page import="blog.dao.postDao"%>
<%@page import="blog.helper.ConnectionProvider"%>
<%@page import="blog.entity.new_table"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorPage.jsp"%>
<%
new_table user=(new_table)session.getAttribute("currentUser");
if(user==null){
response.sendRedirect("Login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/newcss.css"/>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!-- comment -->
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%, 0 100%, 0 0, 20% 0);
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
      
     <!--MAin body of the page-->
     
     <main>
         <div class="container" >
             <div class="row mt-4">
                 
                 <div class="col-md-4">
                     <!-- Ctegory -->
                     
                     <div class="list-group">
  <a href="#" onclick="getposts(0,this)" class="c-link  list-group-item list-group-item-action active" aria-current="true">
    All Posts
  </a>
                         <%
                         postDao dao=new postDao(ConnectionProvider.getConnection());
                         ArrayList<category> list1=dao.getAllCategories();
                         for(category c:list1){
                         
                         
                         
                         %>  
                         <a href="#" onclick="getposts(<%= c.getCid()%>,this)" class="c-link list-group-item list-group-item-action"><%= c.getName()%></a>
  <%
          
      }
                         
                         %>
                         
                         
 
  
</div>
                     
                 </div>
                     
                 <div class="col-md-8" id="post-container">
                     <div class="container text-center" id="loader">
                         <i class="fa fa-refresh fa-4x fa-spin"></i>
                         <h3 class="mt-2">Loading.....</h3>
                         
                     </div>
                      <div class="container-fluid" id="post-container">
                     
                     
                     <!--Post-->
                 </div>
             </div>
             
         </div>
         
     </main>
     
     
     
     <!--main body of the page-->
     
     
     
     

<!-- Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">BLOG</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <img src="pics/<%= user.getProfile()%>" style="width:50px ;height:50px;  border-radius: 40%;">
              <h5 class="modal-title" id="exampleModalLabel"><%= user.getUserName()%></h5>
              
              <><!-- comment details -->
              
              <div id="profile-detail">
              <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">ID</th>
      <td><%= user.getId()%></td>
     
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td><%=user.getEmail()%></td>
     
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%=user.getGender()%></td>
     
    </tr>
  </tbody>
</table>
              </div>
      
      <!--profile edit-->
      <div id="profile-edit" style="display:none;">
      </div>
              
              
          </div>
      </div>
      <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile" type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
      
        
      
      <!--Add Post modal-->
      <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="addpost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provide the post details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="addpostform" action="Addpostservlet" method="POST">
            <div class="form-group">
            <select class="form-control" name="cid">
                <option selected disabled>--select category--</option>
                
                <%
                postDao postD=new postDao(ConnectionProvider.getConnection());
                ArrayList<category> list=postD.getAllCategories();
                for(category c:list){
                %>
                    
                
                <option value="<%= c.getCid()%>"> <%= c.getName()%></option>
               
                <%
                    }
                %>
            </select>
            </div>
            <div class="form-group">
                <input name="pTitle" type="text" placeholder="enter post title" class="form-control"/>
            </div>
            
            <div class="form-group">
                <textarea name="pContent" class="form-control" style="height:100px;" placeholder="Enter your content"></textarea>
            </div>
            <div class="form-group">
                <textarea name="pCode" class="form-control" style="height:100px;" placeholder="Enter your programm"></textarea>
            </div>
            <div class="form-group">
                <label>Select your pic</label>
                <br>
                <input type="file" name="pPic" placeholder="choose your pic">
            </div>
            <div class="container text-center">
                <button id="submit" type="submit" class="btn btn-outline-primary">Post</button>
                </div>
            
        </form>
            
      </div>
     
    </div>
  </div>
</div>

<!--end post modal-->
      
        
        
        
        <%= user.getUserName()%>
        <br>
        <%=user.getEmail()%>
        
         <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxy/1.6.1/scripts/jquery.ajaxy.min.js" integrity="sha512-bztGAvCE/3+a1Oh0gUro7BHukf6v7zpzrAb3ReWAVrt+bVNNphcl2tDTKCBr5zk7iEDmQ2Bv401fX3jeVXGIcA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<script>
    $(document).ready(function(e){
        $("#addpostform").on("submit",function(event){
            event.preventDefault();
            
            console.log("you have fire");
            
            let form=new FormData(this);
            
            $.ajax({
                url:"Addpostservlet",
                type:"Post",
                data:form,
                
                success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        if(data.trim()==='done'){
                            swal("Good job!", "successfully done", "success");
                        }else{
                            swal("good Job", "successfully done", "success")
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        swal("error!", "something went wrong!", "error");
                    },
                    processData:false,
                    contentType:false
            })
            
        })
    })
        
    
    
</script>
<script>
    function getposts(cid,temp){
        $(".c-link").removeClass('active')
        
       $.ajax({
    
         url:"Load_post.jsp",
         data:{cid:cid},
            success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").html(data)
                        $(temp).addClass('active')
                    }
        })
    }
    
    
    $(document).ready(function(e){
        let allpostref=$('.c-link')[0]
     
           getposts(0,allpostref)
    })
    </script>

    </body>
</html>
