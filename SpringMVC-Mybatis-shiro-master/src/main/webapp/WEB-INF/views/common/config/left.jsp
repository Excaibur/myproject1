 <%@ page pageEncoding="utf-8"%>
shiro 标签
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- <#macro user index> -->
<shiro:guest>请先登录或注册</shiro:guest>
<shiro:user>
<div id="one" class="col-md-2">
	<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
	  <li class=active>
	      <a href="${path }/user/index.shtml">
	    	 <i class="glyphicon glyphicon-chevron-right"></i>个人资料
	      </a>
	       <ul class="dropdown-menu" aria-labelledby="dLabel" style="margin-left: 160px; margin-top: -40px;">
              <li><a href="${path }/user/updateSelf.shtml">资料修改</a></li>
              <li><a href="${path }/user/updatePswd.shtml">密码修改</a></li>
          </ul>
	  </li>
	  <li class="dropdown">
	      <a href="${path }/role/mypermission.shtml">
	    	 <i class="glyphicon glyphicon-chevron-right"></i>我的权限
	      </a>
	  </li>
	</ul>
</div>
</shiro:user>
<!-- </#macro> -->
<!-- <#macro member index> -->

	<shiro.hasAnyRoles name='888888,100002'>          
		<div  id="one" class="col-md-2">
			<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
			  <li class="active">
			      <a href="${path }/member/list.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>用户列表
			      </a>
			  </li>
			  <li class="dropdown">
			      <a href="${path }/member/online.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>在线用户
			      </a>
			  </li>
			</ul>
		</div>
	</shiro.hasAnyRoles>         
<!-- </#macro>
<#macro role index> -->
	<shiro.hasAnyRoles name='888888,100003'>  
		<div id="one" class="col-md-2">
			<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
			 
			 <shiro.hasPermission name="/role/index.shtml">
			  <li class="active">
			      <a href="${path }/role/index.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>角色列表
			      </a>
			  </li>
			  </shiro.hasPermission>
			 <shiro.hasPermission name="/role/allocation.shtml">
			  <li class="dropdown">
			      <a href="${path }/role/allocation.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>角色分配
			      </a>
			  </li>
			  </shiro.hasPermission>
			  <shiro.hasPermission name="/permission/index.shtml">
			  <li class="dropdown">
			      <a href="${path }/permission/index.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>权限列表
			      </a>
			  </li>
			  </shiro.hasPermission>
			  <shiro.hasPermission name="/permission/allocation.shtml">
			  <li class="dropdown">
			      <a href="${path }/permission/allocation.shtml">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>权限分配
			      </a>
			  </li>
			  </shiro.hasPermission>
			</ul>
		</div>
	</shiro.hasAnyRoles>   
<!-- </#macro> -->
