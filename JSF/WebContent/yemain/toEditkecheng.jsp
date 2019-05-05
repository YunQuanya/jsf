<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>九九健身房课程修改</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script src="../js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
	<div class="container">
        <div class="title">九九健身房管理系统</div>
        <form class="form-horizontal" action="<%=basePath%>kecheng/edit.do" class="form-horizontal kecheng"  method="POST">
            <div class="form-group"  >
                <label class="col-sm-2 control-label">课程名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control"  name="Kname" value="${kecheng.getKname() }">
                    	<input  type="hidden"   name="Kid"   value="${kecheng.getKid()}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">课程所在日</label>
                <div class="col-sm-10">
                    <select name="Kweek" class="form-control" >
                                        <option  value="周一" selected>周一</option>
                                        <option  value="周二">周二</option>
                                        <option  value="周三">周三</option>
                                        <option  value="周四">周四</option>
                                        <option  value="周五">周五</option>
                                        <option  value="周六">周六</option>
                                        <option  value="周日">周日</option>
                      </select>
                </div>
            </div>
           <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">课程时间</label>
                <div class="col-sm-10">
                                <select name="Ktime" class="form-control" >
                                    <option value="9:00-11:00"  selected>9:00-11:00</option>
                                    <option value="13:00-15:00">13:00-15:00</option>
                                    <option value="15:00-17:00">15:00-17:00</option>
                                    <option value="18:00-20:00">18:00-20:00</option>
                                </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">课程介绍</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                       <input type="text" value="${kecheng.getKJieShao()}"  name="KJieShao"> 
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">教练</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${kecheng.getKlaoshi()}" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">人数</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                        <input type="text" value="${kecheng.getKnum()}"  name="Knum"> 
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-default"  >提交</button>
                </div>
            </div>
        </form>
</div>
</body>
</html>