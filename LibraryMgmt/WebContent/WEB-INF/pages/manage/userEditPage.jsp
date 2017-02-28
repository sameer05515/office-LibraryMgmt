<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读者信息修改</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header"> <a class="navbar-brand" href="#">图书馆管管理系统</a></div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/BookManagement">图书管理</a></li>
                <li><a href="/orderManagement">借阅记录</a></li>
                <li class="active"><a href="/userManagement">读者管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="form-horizontal">
        <div class="form-group">
            <input id="useID" value="<%=request.getParameter("id")%>" hidden>
            <div class="col-md-4 col-md-offset-4">
                <div id="usr_name_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;名&nbsp;&nbsp; 字&nbsp;&nbsp;</span>
                    <input id="usr_name" type="text" class="form-control" placeholder="请输入您的名字">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_name" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="usr_pwd_div" class="input-group"><span class="input-group-addon">&nbsp;&nbsp;密&nbsp;&nbsp; 码&nbsp;&nbsp;</span>
                    <input id="usr_pwd" type="password" class="form-control" placeholder="新密码(不修改就留空)">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_pwd" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="usr_secpwd_div" class="input-group"><span class="input-group-addon">确认密码</span>
                    <input id="usr_secpwd" type="password" class="form-control" placeholder="请再次输入您的新密码">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_secpwd" hidden>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="usr_idNum_div" class="input-group"><span class="input-group-addon">身份证号</span>
                    <input id="usr_idNum" type="text" class="form-control" placeholder="请输入您的新身份证号">
                </div>
            </div>
            <div class="col-md-4">
                <div class="alert-small alert-warning" id="wrn_idNum" hidden>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <div id="usr_phone_div" class="input-group"><span class="input-group-addon">手机号码</span>
                    <input id="usr_phone" type="text" class="form-control" placeholder="请输入您的手机号码">
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
                <button id="reg_btn" type="button" class="btn btn-success btn-block"  >修改</button>
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
                        修改成功！
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
<script src="../../../js/lib/jquery-1.12.4.min.js"></script>
<script src="../../../js/lib/bootstrap.min.js"></script>

<script src="../../../js/userEditPage.js"></script>
</body>
</html>
