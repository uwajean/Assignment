<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%
    String usernameOrEmail = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("usernameOrEmail".equals(cookie.getName())) {
                usernameOrEmail = cookie.getValue();
                break;
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Username/Email Form</title>
    <style>
    *{
      margin:0;
      padding:0;
     
    }
    div{
    width:900px;
    height:400px;
    border:none;
    background:black;
    text-agin:center;
    margin-left:200px;
    color:white;
    }
    h1{
    color:blue;
    font-family:monospace;
     margin-left:200px;
    
    }
    label{
    font-size:40px;
    margin-left:200px;
    color:green;
    font-family:monospace;
     font-weight:800;
    
    }
    input{
    width:400px;
    height:60px;
    border:none;
    outline:none;
    margin-left:200px;
    text-align:center;
    
    
    
    }
    button{
    width:400px;
    height:60px;
    border:none;
    text-align:center;
     margin-left:200px;
     color:white;
     font-eight:bold;
     font-size:30px;
     background-color:blue;
     
    }
     button:hover{
       color:white;
     background-color:lightgreen;
     }
    
    </style>
</head>
<body>
    <form action="classe" method="POST">
      <div>
    <h1>ENTER AN EN EMAIL HERE</h1><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr>
    <hr>
       
      <h2>Name: UWAYEZU Jeanpaul</h2>
       <h2>Class: L<sub>6</sub> Year 2</h2>
        <h2>Reg:22RP04774</h2>
    <h2>JAVA</h2>
    <br><br><br><br><br><br>

        <label for="userInput">Enter An Email:</label><br>
        <input type="text" id="userInput" placeholder="Enter here your email!" name="userInput" value="<%= usernameOrEmail %>"><br>
        <button type="submit">Submit</button>
      
      </div>
    </form>
</body>
</html>
