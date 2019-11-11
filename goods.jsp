<%@page import="com.company.entity.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	List<Goods> list = (List<Goods> )request.getAttribute("goods");
	int cPage =(Integer) session.getAttribute("cPage");
	String str = (String)request.getAttribute("msg");
	String err = (String) request.getAttribute("yn");
	if(str == null){
		str = "";
	}
	if(err == null){
		err = "";
	}
	//当前页面名
	String uri=request.getRequestURI();   
	uri=uri.substring(uri.lastIndexOf("/")+1); 
	session.setAttribute("pageName", uri);
%>
<head>
<script type="text/javascript">
	function fun1() {
		var namex = document.forms["fro"][0].value;
		var namey = document.forms["fro"][1].value;
		var namez = document.forms["fro"][2].value;
		if (namex == null|| namex == "" || namey == null || namey == ""||namez == null || namez == "") {
			alert("请正确输入消息");
			return false;
		}
		return true;
	}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		-moz-user-select:none;
	 	-webkit-user-select:none;
		user-select:none;    
	}
	#title{
		width: 600px;
		height: 90px;
		/* border:5px white solid; */
		position: absolute;
		top: 50px;
		left: 20%;
	}
	
	
	#big{
    	width:  800px;
    	height: 350px;
    	border:15px white solid;
    	position: absolute;
    	left: 250px;
    	top: 150px;
    	transform: rotate(-2deg); 
    }
    #tab1{
    	position:absolute;
    	top: 90px;
    	left: 10px;
    	width: auto;
    	height: auto;
    	border:20px;
    	transform: rotate(-2deg); 
    
    }
   .tr1{
    	height: 50px;
    	width: auto;
    	background-color: white;
    	border:5px white solid;
    	/* border-collapse:collapse; */
    } 
    .td1{
    	height: 50px;
    	width: 150px;
    	/* border:5px white solid; */
    	background-color:black;
    	transform: rotate(6deg); 
    	color: white;
    	font-size: 35px;
    	
    }
    
    .withWhite{
    	width: 70px;
    	height: 70px;
    	background-color: white;
    	transform: rotate(3deg); 
    	position: absolute;
    	top: 5px;
    	left: 10px;
    	font-size: 50px;
    	font-weight: bold;
    	color: black;
    }
    .withBlack{
    	width: 70px;
    	height: 70px;
    	background-color:black;
    	transform: rotate(3deg); 
    	position: absolute;
    	top: 5px;
    	left: 10px;
    	font-size: 50px;
    	font-weight: bold;
    	color: white;
    	transform: rotate(-3deg); 
    }
    .withGray{
    	width: 70px;
    	height: 70px;
    	background-color:gray;
    	transform: rotate(3deg); 
    	position: absolute;
    	top: 5px;
    	left: 10px;
    	font-size: 50px;
    	font-weight: bold;
    	color: white;
    	transform: rotate(9deg);
    }
	 .withRed{
    	width: 70px;
    	height: 70px;
    	background-color:red;
    	transform: rotate(3deg); 
    	position: absolute;
    	top: 5px;
    	left: 10px;
    	font-size: 50px;
    	font-weight: bold;
    	color: black;
    	transform: rotate(-3deg); 
    }
    #erro{
    	position: absolute;
    	top: 600px;
    	left: 200px;
    	transform: rotate(4deg); 
    	background-color:black;
    	color:white;
    	font-weight: bold;
    	font-size: 40px;
    
    }
    #ret{
		width: 100px;
		height: 100px;
		position: absolute;
		top: 20px;
		left:20px;
		transform: rotate(3deg); 
		background-color:white;
	}
	#ret1{
		width: 100px;
		height: 100px;
		position: absolute;
		font-size:70px;
		transform: rotate(6deg); 
		font-weight: bold;
		color:black;
		background-color:gray;
	}
	#fro{
		width: 200px;
		height: 600px;
		border: 10px gray solid;
		transform: rotate(-2deg);
		position: absolute;
		top: 50px;
		left: 1200px;
	}
	.inputW{
		width: 180px;
		height: 60px;
		position: absolute;
		background-color: white;
		transform: rotate(3deg);
		top: 200px;
		left: 10px;
		font-size: 50px;
		font-weight: bold;
		color: black;
	}
	.inputB{
		width: 180px;
		height: 60px;
		position: absolute;
		background-color: black;
		transform: rotate(6deg);
		top:0px;
		left: 0px;
		font-size: 50px;
		font-weight: bold;
		color: white;
		border: 0px;
	}
	.inputG{
		width: 180px;
		height: 60px;
		position: absolute;
		background-color: gray;
		transform: rotate(-6deg);
		top:300px;
		left: 10px;
		font-size: 50px;
		font-weight: bold;
		color: white;
		border: 0px;
	}
	
	.inputR{
		width: 180px;
		height: 60px;
		position: absolute;
		background-color: red;
		transform: rotate(6deg);
		top:0px;
		left: 0px;
		font-size: 50px;
		font-weight: bold;
		color: black;
		border: 0px;
	}
	 #erro1{
	 	position: absolute;
		background-color: black;
		color: white;		
		top: 300px;
		left: 1450px;
		transform: rotate(4deg); 
  		font-weight: bold;
    	font-size: 40px;
	
	} 
	/* 
	 #erro1{
    	position: absolute;
    	top: 500px;
		left: 1450px;
    	transform: rotate(4deg); 
    	background-color:black;
    	color:white;
    	font-weight: bold;
    	font-size: 40px;
    
    } */
	


</style>




</head>
<body style="background: url('Images/addgood.jpg') no-repeat;background-size: 100%;">

	<form action="AddGoods" id="fro" onsubmit="return fun1()" method="post">
		<div class="withWhite" ></div>
		<div class="withBlack" >增</div>
		
		<div class="withWhite" style="left: 100px;"></div>
		<div class="withGray" style="left: 100px; ">加</div>
		
		<div class="withGray" style="top: 100px;"></div>
		<div class="withRed" style="top: 100px;">商</div>
		
		<div class="withWhite" style="top: 100px;left: 100px;"></div>
		<div class="withBlack" style="top: 100px;left: 100px;">品</div>
	
		<div class="inputW">
			<input type="text" placeholder="名称"  class = "inputB" name = "good_name">
		</div>
		<div class="inputG">
			<input type="text" placeholder="价格"  class = "inputR" name = "good_price" oninput="value=value.replace(/[^\d]/g,'')">
		</div>
		<div class="inputW" style="top: 400px;">
			<input type="text" placeholder="类别"  class = "inputG" style="top: 0px;left: 0px;" name = "good_kind">
		</div>
		<div class="inputB" style="top: 500px;left: 10px;">
			<input type="submit" class="inputW" style="color: red;top: 5px;left: 5px;transform: rotate(0deg);" value="OVER">
		</div>
	</form>

	<form id = "ret" action="JumpToAMenu" method="post" style="top: 600px;">
		<input type="submit" value="返" id = "ret1" style="color: white;background-color: black;">
	</form>
	
	<form id = "ret" action="AdminerLoginOut" method="post" >
		<input type="submit" value="退" id = "ret1">
	</form>
	
	<div id = "erro"><%=str %></div>
	<div id = "title">
		<div class="withWhite" style="left: 100px;"></div>
		<div class="withBlack" style="left: 100px;">可</div>
		
		<div class="withWhite" style="left: 190px;"></div>
		<div class="withGray" style="left: 190px; ">公</div>
		
		<div class="withGray" style="left: 280px;"></div>
		<div class="withRed" style="left: 280px;">开</div>
		
		<div class="withWhite" style="left: 370px;"></div>
		<div class="withBlack" style="left: 370px;">情</div>
		
		<div class="withRed" style="left: 460px;transform: rotate(-12deg); ">报</div>
	
	</div>
	
	<div id = "big">
	
		
		<div class="withWhite" style="left: 10px;"></div>
		<div class="withBlack" style="left: 10px;">编</div>
		
		<div class="withWhite" style="left: 85px;"></div>
		<div class="withGray" style="left: 85px; ">号</div>
		
		
		<div class="withGray" style="left: 165px;"></div>
		<div class="withRed" style="left: 165px;">名</div>
		
		<div class="withWhite" style="left: 240px;"></div>
		<div class="withBlack" style="left: 240px;">称</div>
	
		<div class="withRed" style="left: 320px;transform: rotate(-12deg); ">价</div>
		
		<div class="withWhite" style="left: 400px;"></div>
		<div class="withBlack" style="left: 400px;">格</div>
		
		<div class="withWhite" style="left: 480px;"></div>
		<div class="withGray" style="left: 480px; ">类</div>
		
		<div class="withGray" style="left: 550px;"></div>
		<div class="withRed" style="left: 550px;">别</div>
	
		<table id = "tab1">
		<% for(int i = 0; i<list.size();i++){%>
			<tr class="tr1">
	          <td class = "td1">NO.<%=list.get(i).getGood_id()%></td>
	          <td class = "td1"><%=list.get(i).getGood_name()%></td>
	          <td class = "td1"><%=list.get(i).getGood_price()%></td>
	          <td class = "td1"><%=list.get(i).getGood_kind()%></td>
	        </tr>
	       <%}%> 
	</table>
	<div class="withWhite" style="left: 650px;width: 120px;height: 120px;" ></div>
		<form action="upGoods" method="post">
			<input type="submit" value="上"class="withBlack" style="left: 650px;width: 120px;height: 120px;font-size: 90px;">
		</form>
	
	<label class="withRed" style="height: 50px;;left:655px;top: 140px;width: 130px;font-size: 35px;">Page.<%=cPage %></label>
	
	<div class="withWhite" style="left: 650px;width: 120px;height: 120px;top: 210px;"></div>
		<form action="downGoods" method="post">
			<input type="submit" class="withGray" style="left: 650px;width: 120px;height: 120px;font-size: 90px;top: 210px;" value="下">
		</form>
	</div>
			
	<div id="erro1"><%=err %></div>
	

</body>
</html>
