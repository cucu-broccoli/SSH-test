<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){
	  $('.base:even').css("background-color","green"); 
 });
</script>
</head>
<body>
<div align="center">
</div>
   <table align="center" border="1" cellpadding="0" cellspacing="0" width="75%">
    	<tr>
          <th colspan="4"><h1>评论列表</h1><a href="list.do"><input value="返回新闻列表" type="submit"/></a></th>
        </tr>
       <tr>
          <th><b>评论编号</b></th>
          <th><b>评论内容</b></th>
          <th><b>评论人</b></th>
          <th><b>评论时间</b></th>
       </tr>
       <c:forEach items="${list}" var="s">
	        <tr class="base">
	          <th>${s.id}</th>	     
	          <th>${s.content}</th>
	          <th>${s.author}</th>
	          <th>${s.createdate}</th>
       </tr>
       </c:forEach>
   </table>

   <p align="center"><span style="color:red">${msg}</span></p>
</body>
</html>