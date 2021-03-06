<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../commons/header.jsp"%>
<%@include file="../top.jsp"%>
</head>
<body class="no-skin">
	<%@include file="../header.jsp"%>
	<%@include file="../commons/detail.jsp"%>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<%@include file="../left.jsp"%>
		<div class="main-content">
			<%@include file="../breadcrumb.jsp"%>
			<div class="page-content">
				<div class="page-header">
					<h1>试卷列表</h1>
				</div>
				<div class="page-content-area">
					<div class="row">

						<div class="col-xs-11">
							<div class="table-header">试卷列表</div>
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr role="row">
										<th>试卷id</th>
										<th>名称</th>
										<th>练习</th>
										<th>当前试卷</th>
										<th rowspan="1" colspan="1">操作</th>
										<th class="hide"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${data}" var="entity">
										<tr role="row" class="data_model">
											<td>${entity.id}</td>
											<td>${entity.name}</td>
											<td>${entity.isPractice==1?"是":"否"}</td>
											<td>${entity.currentPaper==1?"是":"否"}</td>
											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="green" href="edit${suffix}?id=${entity.id}">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a> <a class="red deleteWarn"
														href="delete${suffix}?id=${entity.id}"> <i
														class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- /.page-content-area -->
			</div>

			<font color="red">${msg}</font>

			<!-- /.main-content -->
			<%@include file="../footer.jsp"%>
		</div>
		<!-- /.main-container -->
		<%@include file="../bottom.jsp"%>
		<script type="text/javascript">
			$(".data_model").dblclick(function(e) {
				$(".modal-body").html($(this).find(".hide").html());
				$('#myModal').modal('show');
			})
		</script>
	</div>
</body>
</html>
