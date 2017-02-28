<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>图书馆管管理系统</title>
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="margin-top: 80px;margin-bottom: 80px;">
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header"> <a class="navbar-brand" href="#">图书馆管管理系统</a></div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/BookManagement">图书管理</a></li>
                <li><a href="/orderManagement">借阅记录</a></li>
                <li class="active"><a href="#">读者管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/adminregpage">添加管理员</a></li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">读者级别</label>
            <div class="col-md-8">
                <select id="select_vip" class="form-control">
                    <option value="-1">全部</option>
                    <option value="0">超级读者</option>
                    <option value="1">高级读者</option>
                    <option value="2">普通读者</option>
                </select>
            </div>
        </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">读者号</label>
            <div class="col-md-8">
                <input id="reader_id" class="form-control" type="text" placeholder="全部"/>
            </div>
        </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">姓名</label>
            <div class="col-md-8">
                <input id="reader_name" class="form-control" type="text" placeholder="全部"/>
            </div>
        </div>
        <div class="form-group col-md-1 col-md-offset-11">
            <button id="search_btn" type="button" class="btn btn-success btn-block">查询</button>
        </div>
    </div>
</div>
<hr/>
<div class="container-fluid">
    <div class="col-md-12">
        <table id="reader_table" class="table table-bordered table-striped table-hover">
            <thead>
            <tr>
                <th class="text-right">读者号</th>
                <th>姓名</th>
                <th>电话</th>
                <th>身份证号</th>
                <th>读者级别</th>
                <th>借阅次数</th>
                <th>失信次数</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>
<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="row">
        <div class="text-center col-md-6 col-md-offset-3">
            <h4>图书馆管管理系统</h4>
            <p>版权所有 &copy; 2015 &middot; 第六组 保留所有权利</p>
        </div>
    </div>
</div>
<div class="modal fade" id="delete_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">删除确认</h4>
            </div>
            <div class="modal-body">
                <p id="delete_msg">确认删除读者 <strong id="del_num"></strong>:<strong id="del_name"></strong> 吗?</p>
            </div>
            <div class="modal-footer">
                <button id="delete_dismiss" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="delete_confirm" type="button" class="btn btn-danger">删除</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script src="../../../js/lib/jquery-1.12.4.min.js"></script>
<script src="../../../js/lib/bootstrap.min.js"></script>
<script src="../../../js/userManagement.js"></script>
</body>
</html>
