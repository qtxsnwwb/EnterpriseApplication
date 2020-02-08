<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	if(session.getAttribute("user") == null){
		response.sendRedirect("login.jsp");
	}
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>简历</title>
	<link href="http://js.51jobcdn.com/in/css/2016/base2016.css?20161025" rel="stylesheet" type="text/css" />
	<link href="http://js.51jobcdn.com/in/css/2016/form.css?20170314" rel="stylesheet" type="text/css" />
	<link href="http://js.51jobcdn.com/in/css/2016/panel-pop.css?20161025" rel="stylesheet" type="text/css" />
	<link href="http://js.51jobcdn.com/in/css/2016/imgareaselect.css" rel="stylesheet" type="text/css" />
	<link href="http://js.51jobcdn.com/in/css/2016/step.css?20161025" rel="stylesheet" type="text/css" />
	<link href="css/style2.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript" > /****添加新条目***/ /******点击添加input输入框JS******/
	function update(){
		var shpra = document.getElementById("shpra");
		shpra.submit();
	}
	
	var test;
	function judge1(input)
    {
	test = input;
	var message = input.nextElementSibling;
	message.innerHTML = "";
	var x = input.value;  
	try{
		if(x.replace(/\s/g, '') === "") throw "为空!";
		
	    }
	catch(err){
		message.innerHTML ="输入的内容" +err;
        message.style.color = "red";
	    }
    }

</script>
</head>
	<body class="declare">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid"> 
		    <div class="navbar-header">
				<img src="images/images/logo.png" style="height:50px;">
		    </div>
		    <div>
		        <!--向左对齐-->
				<p class="navbar-text navbar-left">个人基本信息</p>
				<p class="navbar-text navbar-left">头像</p>
				<p class="navbar-text navbar-left">教育背景</p>
				<p class="navbar-text navbar-left">实习经历</p>
		        <form class="navbar-form navbar-left" role="search">
		            <button type="submit" class="btn btn-default" style="width:100%;">
		               	校内实践
		            </button>
		        </form>
		        <p class="navbar-text navbar-left">技能证书</p>
		        <p class="navbar-text navbar-left">自我评价</p>
		        <!--向右对齐-->
		
		        <form class="navbar-form navbar-right" role="search">
		            <button type="submit" class="btn btn-default" style="width:100%;">
		               <a href="userIndex.jsp">首页</a>
		            </button>
		        </form>
		
		   		 </div>
			</div>
		</nav>
		<div class="wp Fm">

		<div class="sin">
			<div class="e">
			<p class="title t3"><strong>校内实践</strong> ( 请填写你最近的一次经历 ) </p>
			<form action="shpra.action" method="post" id="shpra">
					<div class="form-group col-sm-11">
						<label for="award">时间</label>
						<input type="text" class="form-control" name="sTime" onblur="judge1(this)"
						placeholder="请输入">
						<p id="16message"></p>
					</div>
					<div class="form-group col-sm-11">
						<label for="leader">实践单位</label>
						<input type="text" class="form-control" name="sorgan" onblur="judge1(this)"
						placeholder="请输入">
						<p id="17message"></p>
					</div>
					<div class="form-group col-sm-11">
						<label for="commity">实践职务</label>
						<input type="text" class="form-control" name="sduty" onblur="judge1(this)"
						placeholder="请输入">
						<p id="18message"></p>
					</div>
					<div class="form-group col-sm-11">
						<label for="commity">实践内容</label>
						<input type="text" class="form-control" name="scontent" onblur="judge1(this)"
						placeholder="请输入">
						<p id="19message"></p>
					</div>
			</form>
			<div class="clear"></div>
		</div>
			
			<div class="btm">
				<span class="but" onclick="update()">提交</span>
			</div>
		</div>
		</div>
	</body>
</html>
