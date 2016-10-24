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



下表摘要出了HTTP1.1响应头中最有用的部分，在网络编程中您将会经常见到它们：
响应头	描述
Allow	指定服务器支持的request方法（GET，POST等等）
Cache-Control	指定响应文档能够被安全缓存的情况。通常取值为 public，private 或no-cache 等等。 Public意味着文档可缓存，Private意味着文档只为单用户服务并且只能使用私有缓存。No-cache 意味着文档不被缓存。
Connection	命令浏览器是否要使用持久的HTTP连接。close值 命令浏览器不使用持久HTTP连接，而keep-alive 意味着使用持久化连接。
Content-Disposition	让浏览器要求用户将响应以给定的名称存储在磁盘中
Content-Encoding	指定传输时页面的编码规则
Content-Language	表述文档所使用的语言，比如en， en-us,，ru等等
Content-Length	表明响应的字节数。只有在浏览器使用持久化 (keep-alive) HTTP 连接时才有用
Content-Type	表明文档使用的MIME类型
Expires	指明啥时候过期并从缓存中移除
Last-Modified	指明文档最后修改时间。客户端可以 缓存文档并且在后续的请求中提供一个 If-Modified-Since请求头
Location	在300秒内，包含所有的有一个状态码的响应地址，浏览器会自动重连然后检索新文档
Refresh	指明浏览器每隔多久请求更新一次页面。
Retry-After	与503 (Service Unavailable)一起使用来告诉用户多久后请求将会得到响应
Set-Cookie	指明当前页面对
