<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>            //这是为了显示中文编码的
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>
Hello World!<br/>
<%
out.println("你的 IP 地址 " + request.getRemoteAddr());
%>
</body>
</html>

jsp表达式：
<%= 表达式 %>

不同情况下使用注释的语法规则：
语法	          描述
<%-- 注释 --%>	JSP注释，注释内容不会被发送至浏览器甚至不会被编译
<!-- 注释 -->	  HTML注释，通过浏览器查看网页源代码时可以看见注释内容
<\%	           代表静态 <%常量
%\>	           代表静态 %> 常量
\'	           在属性中使用的单引号
\"             在属性中使用的双引号


JSP指令：<%@ directive attribute="value" %>
这里有三种指令标签：
指令	               描述
<%@ page ... %>	    定义页面的依赖属性，比如脚本语言、error页面、缓存需求等等
<%@ include ... %>	包含其他文件
<%@ taglib ... %> 	引入标签库的定义，可以是自定义标签


JSP行为：
JSP行为标签使用XML语法结构来控制servlet引擎。它能够动态插入一个文件，重用JavaBean组件，引导用户去另一个页面，为Java插件产生相关的HTML等等。
行为标签只有一种语法格式，它严格遵守XML标准：
<jsp:action_name attribute="value" />
jsp:forward	   从一个JSP文件向另一个文件传递一个包含用户请求的request对象


<h3>For 循环实例</h3>
<%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
   <font color="green" size="<%= fontSize %>">
    菜鸟教程
   </font><br />
<%}%>

<%while ( fontSize <= 3){ %>
   <font color="green" size="<%= fontSize %>">
    菜鸟教程
   </font><br />
<%fontSize++;%>
<%}%>
