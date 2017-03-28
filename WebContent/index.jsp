<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Hello World</title>
</head>
<body>
   <h1>Hello IPL</h1>
<!--    <form action="hello">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="text" name="number"/>
      <input type="submit" value="Say Hello"/>
   </form> -->
   
   
<!--     <form action="getsomethingelse">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="text" name="number"/>
      click to get getSomethingElse file
      <input type="submit" value="Say Hello"/>
   </form> -->
   
   
   <h3>Login</h3>
   
   <form action="login">
      <label for="name">Enter your username and password</label><br/>
      User name <input type="text" name="username"/><br/>
      Password <input type="password" name="password"/><br/>
      <input type="submit" value="Login"/><br/>
   </form>
   
   <br/>
   
   <h3>Sign Up</h3>
   <form action="signup">
      <label for="name">Enter your username and password</label><br/>
      User name <input type="text" name="username"/><br/>
      Password <input type="password" name="password"/><br/>
      <input type="submit" value="Sign Up"/><br/>
   </form>
   
   
   
</body>
</html>