<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>九九健身房用户注册</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
<div class="container">
        <div class="title">九九健身房管理系统</div>
        <form class="form-horizontal"  action="<%=request.getContextPath()%>/Register.do" method="post">
            <div class="form-group">
                <label class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control"  placeholder="请输入用户名" name="uname">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码" name=upwd>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">性别</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                       <input type="radio" value="男"  checked="checked" name="usex"> 男
                       <input type="radio" value="女" name="usex"> 女
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">手机号</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" placeholder="请输入手机号" name="utel"> 
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">请选择办卡类型</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                        <input type="radio" value="年卡"  checked="checked" name="ucard"> 年卡
                        <input type="radio" value="半年卡" name="ucard"> 半年卡
                        <input type="radio" value="季卡"  name="ucard"> 季卡
                        <input type="radio" value="月卡" name="ucard"> 月卡
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">办卡开始时间</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" name="udate">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">性别</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                       <input type="radio" value="1"  checked="checked" name="u_qx"> 普通用户
                       <input type="radio" value="2" name="u_qx"> 管理员
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">注册</button>
                </div>
            </div>
        </form>
</div>
</body>
</html>