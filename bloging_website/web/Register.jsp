<%-- 
    Document   : Register
    Created on : Oct 29, 2023, 8:52:19 PM
    Author     : RAHUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/newcss.css"/>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!-- comment -->
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%, 0 100%, 0 0, 20% 0);
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <main style="background-color: blue;" class="banner-background p-5">
            <div class="container">
                <div class="col-md-5 offset-md-3">
                    <div class="card" style="border-color:red;border-width:2px  ">
                        <div class="card-header text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                            Register Here
                        </div>
                        
                        <div class="card-body">
                            
                            <form id="reg" action="registerServlet" method="post">
                                <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <input name="userName" type="text" class="form-control" id="userName" aria-describedby="emailHelp" placeholder="Enter User Name">
      </div>
                                
                                
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="userEmail" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="userPassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
                                
                                 <div class="form-group">
    <label for="exampleInputPassword1">Gender</label>
    <br>
    <input type="radio"  id="Gender" name="gender" value="Male">Male
    <input type="radio"  id="Gender" name="gender" value="Female">Female
    
  </div>
                                
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree term and condition</label>
  </div>
  <button id="submit" type="submit" class="btn btn-primary">Submit</button>
</form>
                            
                        </div>
                        
                       
                        <div class>
                    </div>
                </div>
            </div>
        </main>
          
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    $(document).ready(function(){
        console.log("loaded")
        $('#reg').on('submit',function(event){
            event.preventDefault();
            let form=new FormData(this);
            
           $("#submit").show();
           
            
            
            $.ajax({
                url:"registerServlet",
                type:'post',
                data:form,
                success:function (data,textStatus,jqXHR){
                    console.log(data)
                    $("#submit").show();
                    if(data.trim()==='done')
                    {
                    swal("Successfully register.").then((value) => {
                    window.location="Login.jsp";
                        });
                    }
                    else{
                        swal(data);
                    }
                    
                },
                error:function(jqXHR,textStatus,errorThrown){
                    console.log(jqXHR)
                    
                    swal("something went worng");
                },
                processData:false,
                contentType:false
            });
            
            
        });
        
    });
</script>

    </body>
</html>
