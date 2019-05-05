<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>九九健身房管理员界面</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css">
</head>
<body>
<style>
    #tab-container{
        height: 800px;
    }
    .tab-r{
        position: absolute;
        margin-top: 0px;
        margin-left: 0px;
        width: 100%;
        height:100%;
        background-color: silver;
    }
    .show {
        display: block;
    }
    .hidden {
        display:none;
    }
    .show2{
        background-color: white;
    }
    .hidden2{
        background-color:#eeeeee;
    }
    #tab-container{
        margin-top: 50px;
    }
    #tab-container ul {
        width: 20%;
        margin: 0 0;
        float: left;
    }
    #tab-container .list > li {
          width: 100%;
          text-align: center;
          line-height: 30px;
      }
    #tab-container .list > li:hover{
          background-color: white;
          border-radius: 3%;
    }
    #tab-container .list > div{
        width: 100%;
        height:30px ;
        text-align: center;
        font-size: 18px;
        line-height: 30px;
        background-color: #999999;
    }
    .title1{
        float: right;
        margin-top: 15px;
        margin-right: 30px;
    }
    .tab-R{
        width: 73%;
        height: 450px;
        float: right;
        position: relative;
    }
    h3{
        text-align: center;
        margin-top: 80px;
        color: #003366;

    }
    .container{
        background-color: #eeeeee;
    }
    .add{
        width: 90%;
        margin: 0 auto;
        margin-top: 50px;
    }
    .add2{
        width: 150px;
    }
    tr,td{
        text-align: center;
    }
    .kecheng{
        width: 70%;
        margin-left: 10%;
        margin-top: 80px;
    }
    .chakan{
        margin-top: 40px;
    }
    /*.table1{*/
        /*margin-top: 60px;*/
    /*}*/
</style>
<div class="container">
        <h3>九九健身房管理系统</h3>
        <div id="tab-container">
            <ul id='tab' class="list">
              
                <div class="title">
                    <a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>会员信息管理</a>
                </div>
                <li class="hidden2">
                    <a href="#">查看会员信息</a>
                </li>
                <li class="hidden2">
                    <a href="#">修改会员信息</a>
                </li>
                <div class="title">
                    <a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>体测信息管理</a>
                </div>
       
                <li class="hidden2">
                    <a href="#">查看体测信息</a>
                </li>
                <li class="hidden2">
                    <a href="#">修改体测信息</a>
                </li>
                <div class="title">
                    <a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>课程信息管理</a>
                </div>
                <li class="hidden2">
                    <a href="#">查看课程信息</a>
                </li>
                <li class="hidden2">
                    <a href="#">添加课程信息</a>
                </li>
                <div class="title">
                    <a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>教练信息管理</a>
                </div>
                <li class="hidden2">
                    <a href="#">查看教练信息</a>
                </li>
                <li class="hidden2">
                    <a href="#">添加教练信息</a>
                </li>
            </ul>
            <div class="tab-R">
               
                <div class="tab-r show">
                    <div class="title1" ></div>
                    <div class="input-group col-md-10" style="margin: 0 auto;margin-top: 80px;">
            
                        <table class="table table-hover">
                        	<tr>
                        		<td>账号</td>
                        		<td>性别</td>
                        		<td>手机号</td>
                        		<td>办卡类型</td>
                        		<td>办卡时间</td>
                        		<td>查看我的课程</td>
                        	</tr>
                        	<c:forEach items="${userlist}" var="user" varStatus="s">
							<tr>
							 <td> ${user.uname}</td>
							 <td> ${user.usex}</td>
							 <td> ${user.utel}</td>
							 <td> ${user.ucard}</td>
							 <td> ${user.udate}</td>
							<td><a href="<%=basePath%>/kecheng/UserDeKecheng.do?uid=${user.uid}">查看我的课程</td>
							</tr>
					       </c:forEach>
					   </table>
                    </div>
                </div>
                
                <div class="tab-r hidden">
                    <div class="title1">会员信息修改</div>
                    
                    <c:forEach items="${userlist}" var="user" varStatus="s">
                    <form class="form-horizontal add" action="<%=request.getContextPath()%>/xiugai.do" method="POST">
      
             
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别</label>
                            <div class="col-sm-10">
                            <c:if test="${user.usex=='男'}">
                                <div class="checkbox">
                                    <input type="radio" value="男"  checked="checked" name="usex"> 男
                                    <input type="radio" value="女" name="usex"> 女
                                </div>
                            </c:if>
                            <c:if test="${user.usex=='女'}">
                                <div class="checkbox">
                                    <input type="radio" value="男"   name="usex"> 男
                                    <input type="radio" value="女"checked="checked" name="usex"> 女
                                </div>
                            </c:if>
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">手机号</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" placeholder="${user.utel}"name="utel" value="${user.utel}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">会员卡</label>
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
                            <label class="col-sm-2 control-label">开始时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="${user.udate}" name="udate">
                                <input type="hidden"   name="uid" value="${user.uid}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" style="float: right">确认修改</button>
                            </div>
                        </div>
                    </form>
                    </c:forEach>
                </div>

 
                <div class="tab-r hidden">
                    <div class="title1">查看体测信息</div>
                    <div class="input-group col-md-10" style="margin: 0 auto;margin-top: 80px;">
                       <div>

                             <button class="btn btn-info btn-search" >查找</button>
                             <input type="text" class="form-control shuru" style="width: 88%" placeholder="请输入会员手机号">

                       </div>
                        <form action="" style="margin-top: 30px">
                            <table class="table table-hover" style="">
                               <tr>
                                   
                                   <td>身高</td>
                                   <td>体重</td>
                                   <td>体脂率</td>
                               </tr>
                             <c:forEach items="${userlist}" var="user" varStatus="s">
							<tr>
							 <td> ${user.getBtell()}cm</td>
							 <td> ${user.getBweight()}kg</td>
							 <td> ${user.getBfat()}%</td>
							</tr>
					       </c:forEach>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="tab-r hidden">
                    <div class="title1">添加体测信息</div>
                    <form action="<%=request.getContextPath()%>/xiugaiti.do">
                        <table class="table table-hover table1">
                            <tr>
                                <td>身高</td>
                                <td>体重</td>
                                <td>体脂率</td>
                            </tr>
                            
                             <c:forEach items="${userlist}" var="user" varStatus="s">
							<tr>
                                <td><input type="text" class="add2" value="${user.btell}" name = "btell">cm</td>
                                <td><input type="text" class="add2" value="${user.bweight}" name = "bweight">kg</td>
                                <td><input type="text" class="add2" value=" ${user.bfat}" name = "bfat">%</td>
                                <input type="hidden"   name="uid" value="${user.uid}">
                            </tr>
					       </c:forEach>
                            

                        </table>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" style="float: right">添加</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-r hidden">
                    <div class="title1">查看课程信息</div>
                    <div class="panel-group chakan" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                      课程
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <form action="">
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
                                            <c:forEach   items="${kechengList}"  var="kecheng">
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
													<c:forEach items="${userlist}" var="user">
													<td><a href="<%=basePath%>kecheng/addKeToUser.do?uid=${user.uid}&&Kid=${kecheng.getKid()}">添加</a></td>
													</c:forEach>
												</tr>
											</c:forEach>
                                        </table>
                                    </form>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-r hidden">
                    <div class="title1">添加课程信息</div>
                    <form action="<%=basePath%>kecheng/add.do" class="form-horizontal kecheng"  method="POST">
                        <div class="form-group">
                            <label for="week" class="col-sm-2 control-label">星期</label>
                                <div class="col-sm-10" id="week">
                                    <select name="Kweek" class="form-control" >
                                        <option  value="周一">周一</option>
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
                            <label for="time" class="col-sm-2 control-label">时间段</label>
                            <div class="col-sm-10" id="time">
                                <select name="Ktime" class="form-control" >
                                    <option value="9:00-11:00">9:00-11:00</option>
                                    <option value="13:00-15:00">13:00-15:00</option>
                                    <option value="15:00-17:00">15:00-17:00</option>
                                    <option value="18:00-20:00">18:00-20:00</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="kecheng" class="col-sm-2 control-label">课程名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="课程名称" id="kecheng" name="Kname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jiaolian" class="col-sm-2 control-label">课程介绍</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="jiaolian" placeholder="请输入教练姓名" name="KJieShao">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jiaolian" class="col-sm-2 control-label">教练姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="jiaolian" placeholder="请输入教练姓名" name="Klaoshi">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn btn-default" style="float: right">添加</input>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-r hidden">
                    <div class="title1"  >查看教练信息</div>
                    <table class="table table-hover table1">
                        <tr>
                        	<td>教练编号</td>
                            <td>姓名</td>
                            <td>性别</td>
                            <td>年龄</td>
                            <td>介绍</td>
                            <td>收费(一节课)</td>
                            <td>手机号</td>
                            <td>
                                操作
                            </td>
                            <td><a href="<%=basePath%>/jiaolian/list.do">刷新</td>
                        </tr>
                        
                        <c:forEach   items="${kechengList}"  var="jiaolian">
												<tr>
													<td>
														${jiaolian.getJid()}
													</td>
													<td>
														${jiaolian.getJname()}
													</td>
													<td>
														${jiaolian.getJsex()}
													</td>
													<td>
														${jiaolian.getJage()}
													</td>
													<td>
														${jiaolian.getJJieShao()} 
													</td>
													<td>
														${jiaolian.getJmoney()}
													</td>
													<td>
														${jiaolian.getJphone()}
													</td>
								
												</tr>
							</c:forEach>
                    </table>
                </div>
                <div class="tab-r hidden">
                    <div class="title1">添加教练信息</div>
                     <form action="<%=basePath%>jiaolian/add.do" class="form-horizontal kecheng"  method="POST">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="请输入教练名称" name="Jname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别</label>
                            <div class="col-sm-10">
                                <div class="checkbox">
                                    <input type="radio" value="男"  checked="checked" name="Jsex"> 男
                                    <input type="radio" value="女" name="sex" name="Jsex"> 女
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-2 control-label">年龄</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="请输入教练年龄"  name="Jage">
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-2 control-label">教练简介</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="请输入教练简介"  name="JJieShao">
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-2 control-label">课费</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="请输入教练课费"  name="Jmoney">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">手机号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="请输入手机号"  name="Jphone">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn btn-default" style="float: right">添加</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <script>
        var List = document.getElementById("tab");
        var m = document.getElementById("tab-container");
        var Li = List.getElementsByTagName("li");
        var div = m.getElementsByClassName('tab-r');
        console.log(div)
        console.log(Li)
        for (let i = 0; i < Li.length; i++) {
            Li[i].onclick = function () {
                for (let j = 0; j < div.length; j++) {
                    if (i == j) {
                        Li[j].className='show2';
                        div[j].className = "tab-r show";
                    } else {
                        Li[j].className='hidden2';
                        div[j].className ="tab-r hidden";
                    }
                }
            }
        }



        var search=document.getElementById('search');

        search.onclick=function () {

        }
    </script>
</div>
</body>
</html>
