<%-- 
    Document   : index
    Created on : Oct 29, 2023, 11:01:43 AM
    Author     : RAHUL
--%>

<%@page import="blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
     <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
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
        <%@include file="navbar.jsp"%>
        <!-- banner -->
        
        <div class="container-fluid">
            <div class="jumbotron banner-background">
                <div class="container">
                    
                    <h3 class="display-3">Welcome to Techlog</h3>
                    <p>A programming language is a way for programmers (developers) to communicate with computers. Programming languages consist of a set of rules that allows string values to be converted into various ways of generating machine code, or, in the case of visual programming languages, graphical elements.</p>
                    
                    <button class="btn btn-outline-dark">Start its free</button>
                    <a href="Login.jsp" class="btn btn-outline-dark"><span class="fa fa-user-circle fa-spin" &nbsp &nbsp></span>login</a>
                </div>
                
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
                
                 <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
                
                 <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
            </div>
            
             <div class="row mb-4">
                <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
                
                 <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
                
                 <div class="col-md-4"> 
                        <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>                    
                </div>
                
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
</html>
