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
                <li class="active"><a href="#">图书管理</a></li>
                <li><a href="/orderManagement">借阅记录</a></li>
                <li><a href="/userManagement">读者管理</a></li>
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
            <label class="control-label col-md-4">图书级别</label>
            <div class="col-md-8">
                <select id="select_auth" class="form-control">
                    <option value="-1">全部</option>
                    <option value="0">珍藏图书</option>
                    <option value="1">库本图书</option>
                    <option value="2">普通图书</option>
                </select>
            </div>
        </div>
        <div class="form-group col-md-offset-1 col-md-3">
            <label class="control-label col-md-4">ISBN</label>
            <div class="col-md-8">
                <input id="book_isbn" class="form-control" type="text" placeholder="全部"/>
            </div>
        </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">书名</label>
            <div class="col-md-8">
                <input id="book_name" class="form-control" type="text" placeholder="全部"/>
            </div>
        </div>
        <div class="form-group col-md-1">
            <button id="search_btn" type="button" class="btn btn-default btn-block">查询</button>
        </div>
        <div class="col-md-1"></div>
        <div class="form-group col-md-1">
            <button id="new_btn" type="button" class="btn btn-success btn-block"
                    onclick="javascript:window.location.href='NewBook'">新建</button>
        </div>
    </div>
</div>
<hr/>
<div class="container-fluid">
    <div class="col-md-12">
        <table id="book_table" class="table table-bordered table-striped table-hover">
            <thead>
            <tr>
                <th class="text-right">ISBN</th>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>馆藏位置</th>
                <th>馆藏数量</th>
                <th>现存数量</th>
                <th>图书级别</th>
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
<script src="../../../js/lib/jquery-1.12.4.min.js"></script>
<script src="../../../js/lib/bootstrap.min.js"></script>
<script src="../../../js/bookManagement.js"></script>
</body>
</html>
