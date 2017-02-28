<%--
  Created by IntelliJ IDEA.
  User: wl
  Date: 2016/5/30
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员注册</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header"><a class="navbar-brand" href="#">管理员注册界面</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_nickname_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;昵&nbsp;&nbsp; 称&nbsp;&nbsp;</span>
                    <input id="adm_nickname" type="text" class="form-control" placeholder="请输入您的昵称">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_nickname" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_email_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;邮&nbsp;&nbsp; 箱&nbsp;&nbsp;</span>
                    <input id="adm_email" type="text" class="form-control" placeholder="请输入您的邮箱">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_email" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_name_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;姓&nbsp;&nbsp; 名&nbsp;&nbsp;</span>
                    <input id="adm_name" type="text" class="form-control" placeholder="请输入您的姓名">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_name" hidden>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_pwd_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;密&nbsp;&nbsp; 码&nbsp;&nbsp;</span>
                    <input id="adm_pwd" type="password" class="form-control" placeholder="请输入您的密码">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_pwd" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_secpwd_div" class="input-group"><span class="input-group-addon">确认密码</span>
                    <input id="adm_secpwd" type="password" class="form-control" placeholder="请再次输入您的密码">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_secpwd" hidden>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="adm_phone_div" class="input-group"><span class="input-group-addon">手机号码</span>
                    <input id="adm_phone" type="text" class="form-control" placeholder="请输入您的手机号码">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_phone" hidden>
                </div>
            </div>
        </div>

        <div class="form-group">
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <button id="adm_reg_btn" type="button" class="btn btn-success btn-block"  >注册</button>
            </div>
        </div>
    </div>
    <div class="modal fade" id="success" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="reg_success">
                        注册成功！
                    </h4>
                </div>
                <div class="modal-body">
                    点击确定跳转至登录页面
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="btn_success">
                        确定
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="row">
        <div class="text-center col-md-6 col-md-offset-3 ">
            <h4>图书管理系统</h4>
            <p>版权所有 &copy; 2015 &middot; 第六组 保留所有权利 </p>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../../js/lib/jquery-1.12.4.min.js"></script>
<script src="../../js/lib/bootstrap.min.js"></script>

<script src="../../js/adminregister.js"></script>
</body>
</html>
