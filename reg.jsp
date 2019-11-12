	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Take your heart</title>
<script type="text/javascript">
	function fun1() {
		var name = document.forms["fro"][0].value;
		var pwd = document.forms["fro"][1].value;
		var tel = document.forms["fro"][2].value;
		var address = document.forms["fro"][3].value;
		var pic = document.forms["fro"][4].value;
		var way = "/^1(3|4|5|6|7|8|9)\d{9}$/";
		if (name == null|| name == "" || pwd == null || pwd == ""|| tel == null || tel == ""|| pic == null || pic == ""|| address == null || address == "") {
			alert("请正确输入信息");
			return false;
		} if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(tel))){ 
	        alert("手机号码有误，请重填");  
	        return false; 
	    } 
		return true;
	}
	
	

</script>
<%
	String str = (String)request.getAttribute("erro");
	if(str == null){
		str = "";
		
	}
%>
<style type="text/css">
	div {

      -moz-user-select:none;
	  -webkit-user-select:none;
	  user-select:none;    
	}
	#big{
		width: 500px;
		height: 600px;
		border: 30px gray solid;	
		background-color:transparent;
		transform: rotate(5deg);  
		position: absolute;
		left: 500px;
		top: 50px;
	}
	#fro{
		width: 500px;
		height: 600px;
		border: 30px red solid;	
		background-color:transparent;
		transform: rotate(-5deg);  
		position: absolute;
		left: -20px;
		top: -25px;
		font-size: 40px;
		font-weight: bold;
	}
	#InputName{
		width: 220px;
		height: 50px;
		transform: rotate(-4deg);  
		position:absolute;
		font-size: 50px;
		font-weight: bold;
		color:white;
		background-color: black;
		
	}
	
	#InputPwd{
		width: 220px;
		height: 50px; 
		position:absolute;
		font-size: 50px;
		font-weight: bold;
		transform: rotate(4deg);
		background-color:gray;
		color: black;
	}
	
	#InputTel{
		height: 50px; 
		position:absolute;
		font-size: 50px;
		font-weight: bold;
		transform: rotate(4deg);
		color: black;
		width: 480px;
		background-color: white;
	}
	
	#InputAddress{
		height: 50px; 
		position:absolute;
		font-size: 50px;
		font-weight: bold;
		transform: rotate(-4deg);
		color: white;
		width: 480px;
		background-color: black;
	}
	#InputPic{
		height: 50px; 
		position:absolute;
		font-size: 50px;
		font-weight: bold;
		transform: rotate(0deg);
		color: red;
		width: 300px;
		background-color: black;
	}
	#toPut{
		width: 400px;
		height: 60px;
		background-color: white; 
		position:absolute;
		top:5px;
		left:5px;
		color: red;
		font-size: 40px;
		font-weight: bold;
	
	}
	
	.withwhi{
		width: 200px;
		height: 70px;
		background-color: white;
		transform: rotate(6deg);  
		position:absolute;
		top:15px;
		left:120px;
		font-size: 40px;
		font-weight: bold;
	}
	.labelred{ 
		width: 200px;
		height: 70px;
		background-color: black;
		color: red;
		font-size: 43px;
		transform: rotate(-4deg);  
		position:absolute;
		top: 2px;
	}
	.inputGr{
		width: 230px;
		height: 60px;
		background-color: gray;
		transform: rotate(4deg);  
		position:absolute;
		top:100px;
		left:10px;
		
	}
	#ret{
		width: 100px;
		height: 100px;
		position: absolute;
		top: 20px;
		left: 50px;
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
		color:white;
		background-color:gray;
	}
	#erro{
		width: 350px;
		height: 100px;
		position: absolute;
		top:530px;
		left:40px;
		font-size:30px;
		transform: rotate(3deg); 
		font-weight: bold;
		color:white;
	}
	
	

</style>
</head>
<body style="background: url('Images/reg.jpg');background-size: 100%;margin: 0;">
	<div id = "ret"  onclick="window.open('http://localhost:8080/userLogin.jsp','_self')">
		<div id = "ret1">&nbsp;返</div>
	</div>
	<div id = "big">
		<form action="UserReg" method="post" id = "fro" onsubmit="return fun1()" enctype="multipart/form-data">
			<div class = "withwhi"> 
				<label class = "labelred"> JOIN US!</label>
			</div>
			
			<div class = "inputGr"  > 
				<input type="text" id = "InputName" name = "user_name" placeholder="汝名" >
			</div>
			
			<div class = "inputGr" style="background-color: red;left: 250px;transform: rotate(-4deg);" > 
				<input type="password" id = "InputPwd" name = "user_pwd" placeholder="KEY" >
			</div>
			
			<div class = "inputGr" style="width:480px ; background-color:red;top: 180px;transform: rotate(-2deg);" > 
				<input type="text" id = "InputTel" name = "user_contact" placeholder="Tel" >
			</div>
			
			<div class = "inputGr" style="width:480px ;top: 280px;transform: rotate(4deg);" > 
				<input type="text" id = "InputAddress" name = "user_address" placeholder="Address" >
			</div>
			
		
			<div class = "inputGr" style="width:400px ;left:40px;top: 380px;transform: rotate(2deg);background-color: white;" > 
				<label class = "labelred" style="width: 400px; color: white;top: -5px">最后，点击选择面具</label>
				<input type="file" id = "InputPic" name = "meFile" accept=".jpg"  style="opacity: 0;" >
			</div>
			
			<div class="inputGr"style=" width:400px;top: 470px;left: 45px;background-color: black;transform: rotate(4deg);  ">
				<input type="submit" value="Let's play!" id = "toPut">	
			</div>
			
			<div id = "erro">
				<%=str %>
			</div>
		</form>
	</div>
</body>
</html>
