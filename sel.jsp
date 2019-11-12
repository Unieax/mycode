<%@page import="com.company.entity.Operator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	List<Operator> list = (List<Operator>)request.getAttribute("operators");
	String me = "未注册";
%>
</head>
<style>
	#tab1{
		position: absolute;
		left: 500px;
		border:1px;
		cellspacing :1px; 
		border-collapse:collapse;
		
	}
	.td1{
		border:1px solid
	}

</style>
<script type="text/javascript">
	function fun1() {
		var name = document.forms["form1"][0].value;
		if (name == null|| name == "" ) {
			alert("请正确输入消息");
			return false;
		}
		return true;
	}
</script>
<body>

<form action="sel" method="post" id="form1" onsubmit="return fun1()">
	<input type="text" name="name" placeholder="姓名">
	<select name="state">
		<option value="1">已注册</option>
		<option value="1">未注册</option>
	</select>
	<input type="submit" value="查询">
</form>
<table id = "tab1">
		<tr >  
			<td class="td1">编号</td>  
			<td class="td1">姓名</td>  
			<td class="td1">密码</td>  
			<td class="td1">状态</td>  
		</tr>
		<% for(int i = 0; i<list.size();i++){
				if(list.get(i).getStatus()==1){
		        	 me = "已注册";
		          }%>
			<tr >
	          <td class="td1"><%=list.get(i).getOperator_id()%></td>
	          <td class="td1"><%=list.get(i).getName()%></td>
	          <td class="td1"><%=list.get(i).getPassword()%></td>
	          <td class="td1"><%=me%></td>
	        </tr>
	       <%}%> 
	</table>
</body>
</html>
