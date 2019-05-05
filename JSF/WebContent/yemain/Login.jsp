<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>九九健身房管理系统</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<style>
    .title{
        margin-bottom: 30px;
    }
</style>
<body>

     <div class="container-fluid">
     
         <div class="container">
             <div class="title">九九健身房管理系统</div>
             <!--登陆的表单-->
             <form class="form-horizontal" action="<%=request.getContextPath()%>/Login.do">
                 <div class="form-group">
                     <label class="col-sm-2 control-label">用户名</label>
                     <div class="col-sm-10">
                         <input type="text" class="form-control" id="inputEmail3" placeholder="请输入用户名" name="uname">
                     </div>
                 </div>
                 <div class="form-group">
                     <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                     <div class="col-sm-10">
                         <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码" name="upwd">
                     </div>
                 </div>
                 <div class="form-group">
                     <div class="col-sm-offset-2 col-sm-10">
                         <div class="checkbox">
                             <label>
                                 <input type="checkbox"> Remember me
                             </label>
                         </div>
                     </div>
                 </div>
                 <div class="form-group">
                     <div class="col-sm-offset-2 col-sm-10">
                         <button type="submit" class="btn btn-default">登陆</button>
                         <button  class="btn btn-default" onclick="window.open('register.html')">注册</button>
                     </div>
                 </div>
             </form>
         </div>
    
     </div>
</body>
<script>

</script>
</html>