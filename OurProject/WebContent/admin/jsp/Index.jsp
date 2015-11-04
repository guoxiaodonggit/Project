<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="DataBaseFactory.DaoFactory" %>
 <%@ page import="ExportChart.Xian" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DNH管理系统 首页</title>
  <meta name="description" content="这是一个 table页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">   
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->


<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>DNH</strong> <small>后台管理</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
        <c:set var="staff" value="${DaoFactory.getStaffDaoInstance().findById(sessionScope.staff_id)}"/>
          <span class="am-icon-users"></span>${staff.staff_name} <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="admin-user.html"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="Exit.jsp"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>



<div class="am-cf admin-main">

 <input id="Page" type="hidden" name="menuURL" value="Index"/>
 
 
 
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="Index.jsp"><span class="am-icon-home"></span> 首页</a></li>
     	
     
     	 <li id="Order"><a href="Order.jsp" class="am-cf"><span class="am-icon-file"></span> 订单管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
      	<li id="Goods" ><a class="am-cf" data-am-collapse="{target: '#collapse-nav7'}"><span class="am-icon-shopping-cart"></span> 商品管理</a>
      	<ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav7">
          <li><a href="GoodsList.jsp" class="am-cf"><span class="am-icon-shopping-cart"></span>商品列表</a></li>
          <li><a href="GoodsCheck.jsp" class="am-cf"><span class="am-icon-check"></span>审核商品</a></li>
         </ul></li>
         <li id="Consumer" ><a href="ConsumerList.jsp" class="am-cf"><span class="am-icon-male"></span> 消费者列表</a></li>
          <li id="Supplier"><a href="SupplierList.jsp" class="am-cf"><span class="am-icon-truck"></span> 供应商列表</a></li>
  
  
      <li id="Need" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav8'}"><span class="am-icon-sign-out"></span> 需求管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav8">
          <li><a href="Supplier.jsp" class="am-cf"><span class="am-icon-check"></span>查看供应商需求</a></li>
          <li><a href="Staff_PublishNeed.jsp" class="am-cf"><span class="am-icon-check"></span> 发布需求</a></li>
          <li><a href="CheckBidding.jsp" class="am-cf"><span class="am-icon-check"></span> 查看需求竞价</a></li>
         </ul>
      </li>
      
      <li id="Task" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav9'}"><span class="am-icon-sign-out"></span> 任务管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav9">
          <li><a href="Connector_Task.jsp" class="am-cf"><span class="am-icon-tasks"></span> 任务列表</a></li>
          <li><a href="Staff_TaskInput.jsp" class="am-cf"><span class="am-icon-check"></span> 发布任务</a></li>
         </ul>
      </li>
      
      <li id="BackGoods" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav10'}"><span class="am-icon-sign-out"></span>售后管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav10">
          <li><a href="Staff_BkgoodsCount.jsp" class="am-cf"><span class="am-icon-check"></span>退货审核</a></li>
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 评价管理</a></li>
         </ul>
      </li>


      <li id="Station"><a href="StationList.jsp" class="am-cf"><span class="am-icon-map-marker"></span> 服务站管理</a></li>
      
      <li id="Camera"><a href="#"><span class="am-icon-camera"></span> 摄像头管理</a></li>
      <li id="Web"><a href="#"><span class="am-icon-camera"></span> 网站管理</a></li>
      <li id="Category"><a href="CategoryList.jsp"><span class="am-icon-archive"></span> 类别管理</a></li>
      <li id="Logistics"><a href="#"><span class="am-icon-car"></span> 物流管理</a></li>
      
            
        <li  class="admin-parent">
       <a id="Staff" class="am-cf" data-am-collapse="{target: '#collapse-nav11'}"><span class="am-icon-user"></span> 员工管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav11">
          <li><a href="StaffList.jsp" class="am-cf"><span class="am-icon-list"></span> 员工列表</a></li>
          <li><a href="StaffAdd.jsp"><span class="am-icon-plus"></span> 添加员工</a></li>
        </ul>
      </li>
      
    <li class="admin-parent">
       <a id="Role" class="am-cf" data-am-collapse="{target: '#collapse-nav12'}"><span class="am-icon-users"></span> 角色管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav12">
          <li><a href="RoleList.jsp" class="am-cf"><span class="am-icon-list"></span> 角色列表</a></li>
          <li id="RoleListCheck"><a href="RoleListCheck.jsp"><span class="am-icon-puzzle-piece"></span> 审核角色</a></li>
          </ul>
      </li>
   
    <li  class="admin-parent">
       <a id="Department" class="am-cf" data-am-collapse="{target: '#collapse-nav13'}"><span class="am-icon-bookmark-o"></span> 部门管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav13">
          <li id="DepartmentList"><a href="DepartmentList.jsp" class="am-cf"><span class="am-icon-list"></span> 部门列表</a></li>
          <li id="DepartmentListCheck"><a href="DepartmentListCheck.jsp" class="am-cf"><span class="am-icon-list"></span> 审核部门</a></li>
       </ul>
      </li>
      
   </ul>

    
  </div>
  <!-- sidebar end -->



  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>常用</small></div>
    </div>

    <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>成交订单<br/>308</a></li>
      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>昨日访问<br/>80082</a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>在线用户<br/>3000</a></li>
    </ul>

   

    <div class="am-g">
      <div class="am-u-md-12">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-1'}">昨天销量折线图<span class="am-icon-chevron-down am-fr" ></span></div>
          <div class="am-panel-bd am-collapse am-in" id="collapse-panel-1">
            <ul class="am-list admin-content-file">
              <li>
                <strong><span class="am-icon-upload"></span> 富士苹果30</strong>
                <p>订单完成 - 运输 - 交易完成</p>
                <div class="am-progress am-progress-striped am-progress-sm am-active">
                  <div class="am-progress-bar am-progress-bar-success" style="width: 82%">82%</div>
                </div>
              </li>
             
             
            </ul>
          </div>
        </div>
       </div>
       
        <div class="am-u-md-6">
       <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-2'}">在线员工统计<span class="am-icon-chevron-down am-fr" ></span></div>
          <div id="collapse-panel-2" class="am-in">
            <table class="am-table am-table-bd am-table-bdrs am-table-striped am-table-hover">
              <tbody>
              <tr>
                <th class="am-text-center">#</th>
                <th>员工姓名</th>
                <th>在线</th>
              </tr>
              <tr>
                <td class="am-text-center"></td>
                <td>Google Chrome</td>
                <td>3,005</td>
              </tr>
          
           
           
              </tbody>
            </table>
          </div>
        </div>
     
</div>
      
      <div class="am-u-md-6">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-4'}">最近任务<span class="am-icon-chevron-down am-fr" ></span></div>
          <div id="collapse-panel-4" class="am-panel-bd am-collapse am-in">
            <ul class="am-list admin-content-task">
              <li>
                <div class="admin-task-meta"> 日期 2015/01/15 by ONE</div>
                <div class="admin-task-bd">
                   修改管理员日志，密码
                </div>
                <div class="am-cf">
                  <div class="am-btn-toolbar am-fl">
                    <div class="am-btn-group am-btn-group-xs">
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-check"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
                    </div>
                  </div>
                  <div class="am-fr">
                    <button type="button" class="am-btn am-btn-default am-btn-xs">删除</button>
                  </div>
                </div>
              </li>
              <li>
                <div class="admin-task-meta"> 日期 2015/01/15 by TWO</div>
                <div class="admin-task-bd">
                  修改最近订单
                </div>
                <div class="am-cf">
                  <div class="am-btn-toolbar am-fl">
                    <div class="am-btn-group am-btn-group-xs">
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-check"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
                    </div>
                  </div>
                  <div class="am-fr">
                    <button type="button" class="am-btn am-btn-default am-btn-xs">删除</button>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>

       
      
      
      
    </div>
  </div>
  <!-- content end -->

</div>



<footer>
  <hr>
  <p class="am-padding-left">© 2015 DNH后台管理 <a href="＃" target="_blank">大农合</a></p>
</footer>
</div>
<!--[if lt IE 9]>
<script src="assets/js/jquery1.11.1.min.js"></script>
<script src="assets/js/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="assets/js/app.js"></script>

</body>
</html>
