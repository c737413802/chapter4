<%@page import="com.chinasei.lwframework.user.dao.Users"%>
<%@page import="com.chinasei.lwframework.user.dao.UsersDAO"%>
<%@ page language="java" import="java.util.*,java.util.List" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import="com.chinasei.lwframework.user.*"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is my JSP page. <br>
    <% 
    UsersDAO dao=new UsersDAO();
    Users user=new Users();
    List list = dao.findByExample(user);
    for(int i=0;i<list.size();i++){
    	Users users=(Users)list.get(i);
        out.print("ID:"+users.getId()+"<br/>");
        out.print("用户名:"+users.getUserName()+"<br/>");
        out.print("密码:"+users.getUserPassword()+"<br/>");
        out.print("email:"+users.getUserEmail()+"<br/>");
    }
    %>

  </body>
</html>
