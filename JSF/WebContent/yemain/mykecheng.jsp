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
    <title>九九健身房课程我的课程</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script src="../js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
	<div class="container">
        <div class="title">九九健身房管理系统</div>
        	  <table class="table table-hover">
                        	                <tr>
                                            	<td>课程编号</td>
                                                <td>课程名称</td>
                                                <td>课程介绍</td>
                                                <td>课程日</td>
                                                <td>课程时间</td>
                                                <td>教练</td>
                                                <td>参加人数</td>
                                                <td>操作</td>
                                            </tr>
                                            <c:forEach   items="${Userkechenglist}"  var="kecheng">
												<tr>
													<td>
														${kecheng.getKid()}
													</td>
													<td>
														${kecheng.getKname()}
													</td>
													<td>
														${kecheng.getKJieShao()}
													</td>
													<td>
														${kecheng.getKweek()}
													</td>
													<td>
														${kecheng.getKtime()} 
													</td>
													<td>
														${kecheng.getKlaoshi()}
													</td>
													<td>
														${kecheng.getKnum()}
													</td>
					       </c:forEach>
					   </table>
        </form>
</div>
</body>
</html>