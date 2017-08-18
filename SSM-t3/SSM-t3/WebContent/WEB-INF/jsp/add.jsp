<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center"><h1>增加评论</h1>
<p><a href="list.do">返回首页</a></p></div>
	<div align="center">
     <form action="doAdd.do" method="post">
        <p>评论内容:<textarea rows="3" cols="24" name="content" ></textarea></p>
     	<p>评论人:<input name="author" value=""/></p>
     	<%@ page language="java"%> 
		<%@ page contentType="text/html; charset=UTF-8"%> 
		<%@ page import="java.util.*"%><!--  //获取系统时间必须导入的  -->
		<%@ page import="java.text.*"%><!--  //获取系统时间必须导入的  -->
     	<% 
		String datetime=new SimpleDateFormat("yyyy-MM-dd").
		format(Calendar.getInstance().getTime()); //获取系统时间 
		%>
		<!-- 初始回答数: -->
		<input type="hidden" name="newsid" value="${newsid}"/>
		<!-- 最后修改时间: -->
     	<input type="hidden" name="createdate" value=
     	"<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss")
     			.format(new Date())); %>"/>
        <p><input  type="submit"  value="提交"/></p>
     </form>
   </div>
</body>
</html>