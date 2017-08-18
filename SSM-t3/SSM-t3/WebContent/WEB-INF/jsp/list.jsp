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
<form action="doSearch.do?${title}" method="post" id="search">
	<p>新闻标题：<input name="title" value=""/><input type="submit" value="查询"/></p>
</form>
</div>
   <table align="center" border="1" cellpadding="0" cellspacing="0" width="75%">
    	<tr>
          <th colspan="6"><h1>新闻列表</h1></th>
        </tr>
       <tr>
          <th><b>新闻编号</b></th>
          <th><b>新闻标题</b></th>
          <th><b>新闻摘要</b></th>
          <th><b>作者</b></th>
          <th><b>创建时间</b></th>
          <th><b>操作</b></th>
       </tr>
       <c:forEach items="${list}" var="s">
	        <tr class="base">
	          <th>${s.id}</th>	     
	          <th>${s.title}</th>
	          <th>${s.summary}</th>
	          <th>${s.author}</th>
	          <th>${s.createdate}</th>
	          <th><a href="tosercom.do?id=${s.id}">查看评论</a>|<a href="toAdd.do?id=${s.id}">评论</a>|<a href="doDel.do?id=${s.id}">删除</a></th>
       </tr>
       </c:forEach>
   </table>

   <p align="center"><span style="color:red">${msg}</span></p>
</body>
</html>