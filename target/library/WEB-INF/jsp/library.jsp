<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>图书管理-LM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="${pageContext.request.contextPath }/css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="${pageContext.request.contextPath }/css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="${pageContext.request.contextPath }/css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath }/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/list.action">图书馆管理系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-manager fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-manager">
				<li><a href="#"><i class="fa fa-manager fa-fw"></i>
				               管理员：${MANAGER_SESSION.managerName}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 所有图书
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">图书管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<!--搜索栏-->
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/list.action">
					<!--根据书名查-->
					<div class="form-group">
						<label for="bookName">书籍名称</label>
						<input type="text" class="form-control" id="bookName"
						                   value="${title }" name="title" />
					</div>
					<!--根据编号查-->
					<div class="form-group">
						<label for="bookId">书籍编号</label>
						<input type="text" class="form-control" id="bookId"
							   value="${id }" name="id" />
					</div>
					<!--根据类别查-->
					<div class="form-group">
						<label for="bookCategory">书籍类别</label>
						<select	class="form-control" id="bookCategory" name="categoryName">
							<option value="">--请选择--</option>
							<c:forEach items="${categories }" var="item">
								<option value="${item }"
								       <c:if test="${item == categoryName }">selected</c:if>>
								    ${item }
								</option>
							</c:forEach>
						</select>
					</div>
					<!--每页条数-->
					<div class="form-group">
						<strong>每页显示</strong>
						<select class="form-control" name="pageSize">
							<option value="">--请选择--</option>
							<option value="5">
								<c:if test="${pageInfo.pageSize == 5}">selected</c:if>>
								5
							</option>
							<option value="10">
								<c:if test="${pageInfo.pageSize == 10}">selected</c:if>>
								10
							</option>
							<option value="15">
								<c:if test="${pageInfo.pageSize == 15}">selected</c:if>>
								15
							</option>
						</select>
						<strong>个条目</strong>&nbsp;&nbsp;
						<strong>到第</strong>&nbsp;
						<input type="text" size="3" id="page" name="pageCode" class="form-control input-sm">&nbsp;
						<strong>页</strong>&nbsp;
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
				<div class="panel-footer">
					<strong>共<b>${pageInfo.totalCount }</b>条记录，共<b>${pageInfo.totalPage }</b>页</strong>&nbsp;&nbsp;
				</div>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#addBookDialog" onclick="clearBook()">添加</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">图书列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th><input type="checkbox" id="chbAll"></th>
								<th>书名</th>
								<th>价格(元)</th>
								<th>作者</th>
								<th>出版社</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pageInfo.beanList }" var="book">
								<tr>
									<th><input type="checkbox" name="ids" value="${book.id }"/></th>
									<td>${book.title }</td>
									<td>${book.price }</td>
									<td>${book.author }</td>
									<td>${book.press }</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editBookDialog" onclick= "editBook(${book.id })">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteBook(${book.id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
                    <div class="panel-body">
                        <form class="form-inline" method="post"
                              action="${pageContext.request.contextPath }/list.action">
                            <div class="row">
                                <div class="form-inline">
                                    <!--右下角页码链接-->
                                    <ul class="pagination" style="margin: 0 auto">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/list.action?pageCode=1"><strong>首页</strong></a>
                                        </li>
                                        <li>
                                            <c:if test="${pageInfo.pageCode >= 2}">
                                                <a href="${pageContext.request.contextPath }/list.action?pageCode=${pageInfo.pageCode - 1}"><<</a>
                                            </c:if>
                                        </li>
                                        <!--写关于分页页码的逻辑-->
                                        <c:choose>
                                            <c:when test="${pageInfo.totalPage <= 5}">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="${pageInfo.totalPage}"/>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="begin" value="${pageInfo.pageCode - 1}"/>
                                                <c:set var="end" value="${pageInfo.pageCode + 3}"/>
                                                <!--头溢出-->
                                                <c:if test="${begin < 1}">
                                                    <c:set var="begin" value="1"/>
                                                    <c:set var="end" value="5"/>
                                                </c:if>
                                                <!--尾溢出-->
                                                <c:if test="${end > pageInfo.totalPage}">
                                                    <c:set var="begin" value="${pageInfo.totalPage - 4}"/>
                                                    <c:set var="end" value="${pageInfo.totalPage}"/>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <!--显示页码-->
                                        <c:forEach var="i" begin="${begin}" end="${end}">
                                            <!--判断是否是当前页-->
                                            <c:if test="${i == pageInfo.pageCode}">
                                                <li class="active"><a href="javascript:void(0);">${i}</a></li>
                                            </c:if>
                                            <c:if test="${i != pageInfo.pageCode}">
                                                <li>
													<a href="${pageContext.request.contextPath}/list.action?pageCode=${i}">${i}</a>
												</li>
                                            </c:if>
                                        </c:forEach>
                                        <li>
                                            <c:if test="${pageInfo.pageCode < pageInfo.totalPage }">
                                                <a href="${pageContext.request.contextPath }/list.action?pageCode=${pageInfo.pageCode + 1}">>></a>
                                            </c:if>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/list.action?pageCode=${pageInfo.totalPage }"><strong>尾页</strong></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>
<!-- 添加书籍模态框 -->
<div class="modal fade" id="addBookDialog" tabindex="-1" role="dialog"
	aria-labelledby="newModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="newModalLabel">添加图书</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_book_form">
					<div class="form-group">
						<label for="new_bookName" class="col-sm-2 control-label">
						    书名
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookName" placeholder="书名" name="title" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookCategory" class="col-sm-2 control-label">
							书籍种类
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookCategory" placeholder="书籍种类" name="cName" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookPrice" class="col-sm-2 control-label">
							价格
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookPrice" placeholder="价格" name="price" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookAuthor" class="col-sm-2 control-label">
							作者
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookAuthor" placeholder="作者" name="author" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookPress" class="col-sm-2 control-label">
							出版社
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookPress" placeholder="出版社" name="press" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookPublishDate" class="col-sm-2 control-label">
							出版日期
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookPublishDate" placeholder="出版日期" name="publishDate" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="addBook()">添加图书</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改书籍信息模态框 -->
<div class="modal fade" id="editBookDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改书籍信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_book_form">
					<input type="hidden" id="edit_book_id" name="id"/>
					<div class="form-group">
						<label for="edit_bookName" class="col-sm-2 control-label">书名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookName" placeholder="书名" name="title" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookCategory" class="col-sm-2 control-label">书籍种类</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookCategory" placeholder="书籍种类" name="cName" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookPrice" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookPrice" placeholder="价格" name="price" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookAuthor" class="col-sm-2 control-label">作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookAuthor" placeholder="作者" name="author" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookPress" class="col-sm-2 control-label">出版社</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookPress" placeholder="出版社" name="press" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_bookPublishDate" class="col-sm-2 control-label">出版日期</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_bookPublishDate" placeholder="出版日期" name="publishDate" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateBook()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
	//清空添加书籍窗口中的数据
	function clearBook() {
	    $("#new_bookName").val("");
	    $("#new_bookCategory").val("");
	    $("#new_bookPrice").val("");
	    $("#new_bookAuthor").val("");
	    $("#new_bookPress").val("");
	    $("#new_bookPublishDate").val("");
	}

	//添加书籍
	function addBook(){
		var title = $("#new_bookName").val();
		var cName = $("#new_bookCategory").val();
		var price = $("#new_bookPrice").val();
		var author = $("#new_bookAuthor").val();
        var press = $("#new_bookPress").val();
        var publishDate = $("#new_bookPublishDate").val();
		$.ajax({
			url :"${pageContext.request.contextPath }/add.action",
			data : JSON.stringify({
                title: title,
                cName: cName,
                price: price,
                author: author,
                press: press,
                publishDate: publishDate}),
			type :"POST",
			contentType : "application/json;charset=UTF-8",
			success:function(data){
				if(data == "OK"){
					alert("新建成功！");
					window.location.reload();
				}else{
					alert("新建失败！");
					window.location.reload();
				}
			}
		});
	}

	// 通过id获取编辑的书籍信息
	function editBook(id) {
	    $.ajax({
	        type:"get",
	        url:"${pageContext.request.contextPath}/edit.action",
	        data:{"id":id},
	        success:function(data) {
	        	$("#edit_book_id").val(data.id);
	            $("#edit_bookName").val(data.title);
	            $("#edit_bookCategory").val(data.cName);
	            $("#edit_bookPrice").val(data.price);
	            $("#edit_bookAuthor").val(data.author);
	            $("#edit_bookPress").val(data.press);
	            $("#edit_bookPublishDate").val(data.publishDate);
	        }
	    });
	}
    // 执行编辑书籍操作
	function updateBook() {
		var id = $("#edit_book_id").val()
		var title = $("#edit_bookName").val();
		var cName = $("#edit_bookCategory").val();
		var price = $("#edit_bookPrice").val();
		var author = $("#edit_bookAuthor").val();
		var press = $("#edit_bookPress").val();
		var publishDate = $("#edit_bookPublishDate").val();
		$.ajax({
			url :"${pageContext.request.contextPath }/update.action",
			data : JSON.stringify({
				id: id,
				title: title,
				cName: cName,
				price: price,
				author: author,
				press: press,
				publishDate: publishDate}),
			type :"POST",
			contentType : "application/json;charset=UTF-8",
			success:function(data){
				if(data == "OK"){
					alert("修改成功！");
					window.location.reload();
				}else{
					alert("修改失败！");
					window.location.reload();
				}
			}
		});
	}
	// 删除客户
	function deleteBook(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("${pageContext.request.contextPath}/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	            }
	        });
	    }
	}
</script>
</body>
</html>