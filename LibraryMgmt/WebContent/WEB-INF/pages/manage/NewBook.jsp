<%--
  Created by IntelliJ IDEA.
  User: Dalenew
  Date: 5/30/2016
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>用户注册</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header"> <a class="navbar-brand" href="#">图书馆管管理系统</a></div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/BookManagement">图书管理</a></li>
                <li><a href="/orderManagement">借阅记录</a></li>
                <li><a href="/userManagement">读者管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">书籍分类</label>
            <div class="col-md-8">
                <select id="select_c0" class="form-control">
                    <option value="0">请选择</option>
                </select>
            </div>
        </div>
        <div class="form-group col-md-3">
            <div class="col-md-8">
                <select id="select_c1" class="form-control">
                    <option value="0">请选择</option>
                </select>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">书名</label>
            <div class="col-md-8">
                <input id="name" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
        <div class="form-group col-md-4">
            <label class="control-label col-md-6">isbn</label>
            <div class="col-md-6">
                <input id="isbn" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">出版社</label>
            <div class="col-md-8">
                <select id="select_press" class="form-control">
                    <option value="0">请选择</option>
                </select>
            </div>
        </div>
        <div class="form-group col-md-4">
            <label class="control-label col-md-6">作者</label>
            <div class="col-md-6">
                <input id="author" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
        <div class="form-group col-md-4">
            <label class="control-label col-md-6">价格</label>
            <div class="col-md-6">
                <input id="price" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">图书馆存量</label>
            <div class="col-md-8">
                <input id="count" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
        <div class="form-group col-md-4">
            <label class="control-label col-md-6">馆藏位置</label>
            <div class="col-md-6">
                <input id="storage" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
        <div class="form-group col-md-4">
            <label class="control-label col-md-6">图书级别</label>
            <div class="col-md-6">
                <select id="select_auth" class="form-control">
                    <option value="2">普通图书</option>
                    <option value="1">库本图书</option>
                    <option value="0">珍藏图书</option>
                </select>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="form-group col-md-1"> </div>
        <div class="form-group col-md-3">
            <label class="control-label col-md-4">介绍</label>
            <div class="col-md-8">
                <input id="info" class="form-control" type="text" placeholder="请输入"/>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid ">
    <div class="form-horizontal">
        <div class="row col-md-4 col-md-offset-4">
            <button id="add_btn" type="button" class="btn btn-primary btn-block">添加</button>
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

<script src="../../../js/NewBook.js"></script>
</body>
</html>
