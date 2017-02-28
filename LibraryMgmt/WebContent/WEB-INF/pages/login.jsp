<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>图书管理系统</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">用 户 登 录<span class="sr-only">(current)</span></a></li>
        <li><a href="adminLogin">管 理 员 登 录</a></li>
      </ul>
</nav>
<div class="container-fluid">
	<div class="row">
    	<div class="col-md-6 col-md-offset-3">
        <br>
        	<h1 class="text-center">图 书 管 理 系 统</h1>
        </div>
     </div>
</div>
<div class="container container-table">
    <div class="form-horizontal center-cell">
        <form>
        <br><br><br><br><br>
            <div class="form-group">
                <div class="col-md-4 col-md-offset-4">
                    <div id="usr_ipt_div" class="input-group"><span class="input-group-addon">账号</span>
                      <input id="usr_ipt" type="text" class="form-control" placeholder="在此输入您的账号">
                    </div>
                </div>
                <div id="usr_wrn" class="col-md-2" hidden>
                    <div class="alert-small alert-warning"> <span id="usr_wrn_txt">Warning!</span> </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4 col-md-offset-4">
                    <div id="pwd_ipt_div" class="input-group"> <span class="input-group-addon">密码</span>
                        <input id="pwd_ipt" type="password" class="form-control" placeholder="在此输入您的密码">
                    </div>
                </div>
                <div id="pwd_wrn" class="col-md-2" hidden>
                    <div class="alert-small alert-danger"> <span id="pwd_wrn_txt">Error!</span> </div>
                </div>
            </div>
            <div class="form-group">
<div id="abcd_wrn" class="col-md-2" hidden>
          <div class="alert-small alert-danger"> <span id="abcd_wrn_txt">Error!</span> </div>
                </div>
            </div>
            <br>
            <div class="form-group">
                <div class="col-md-4 col-md-offset-4">
                    <button id="reg_btn" type="button" class="btn btn-default btn-block">注册</button>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4 col-md-offset-4">
                    <button id="login_btn" type="button" class="btn btn-primary btn-block">登录</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="row">
        <div class="text-center col-md-6 col-md-offset-3">
          <h4>图书管理系统</h4>
          <p>版权所有 &copy; 2016 &middot; 第六组 保留所有权利 &middot; </p>
        </div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../../js/lib/jquery-1.12.4.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../js/lib/bootstrap.min.js"></script>
<script src="../../js/login.js"></script>
</body>
</html>