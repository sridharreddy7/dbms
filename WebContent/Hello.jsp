<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- Hello World, <s:property value="name"/> --%>
	<%-- here<s:property value="nameList"/> --%> 
	<%--        <s:iterator var="i" value="nameList">
	         here<s:property value="i"></s:property>
	    </s:iterator> --%>
	    
    <s:iterator value="nameList">
  		<s:property/>
	</s:iterator>
   
</body>
</html>