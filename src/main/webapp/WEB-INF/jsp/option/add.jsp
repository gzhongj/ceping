<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../commons/header.jsp"%>
<%@include file="../commons/select-css.jsp"%>
<%@include file="../top.jsp"%>
</head>
<body class="no-skin">
	<%@include file="../header.jsp"%>
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
					<h1>添加选项</h1>
				</div>
				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">
							<form:form name="form" method="post" class="form-horizontal"
								role="form" action="add${suffix}" id="form"
								modelAttribute="option">
								<div class="form-group" id="feature">
									<label class="col-sm-3 control-label no-padding-right">试题：</label>
									<div class="col-sm-5 input-group">
										<select class="chosen-select" name="questionId"
											data-placeholder="请选择一个试题">
											<option />
											<c:forEach items="${questions}" var="question">
												<option
													<c:if test="${question.id==option.questionId}">selected='selected'</c:if>
													value="${question.id}">${question.title}</option>
											</c:forEach>
										</select>
										<form:errors path="questionId"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">内容：</label>
									<div class="col-sm-5 input-group">
										<form:input path="content" id="content" placeholder="选项内容"
											class="form-control" />
									</div>
									<form:errors path="content"
										cssClass="label label-xlg label-danger">
									</form:errors>
								</div>
								<div class="form-group" id="question">
									<label class="col-sm-3 control-label no-padding-right">大维度：</label>
									<div class="col-sm-5 input-group">
										<select class="chosen-select" name="bigDimension"
											data-placeholder="请选择该选项代表的大维度">
											<option />
											<c:forEach items="${dimensions}" var="dimension">
											<c:if test="${dimension.level==1}">
												<option
													<c:if test="${dimension.id==option.bigDimension}">selected='selected'</c:if>
													value="${dimension.id}">${dimension.name}</option>
											</c:if>
											</c:forEach>
										</select>
										<form:errors path="bigDimension"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group" id="question">
									<label class="col-sm-3 control-label no-padding-right">小维度：</label>
									<div class="col-sm-5 input-group">
										<select class="chosen-select" name="smallDimension"
											data-placeholder="请选择该选项代表的大维度">
											<option />
											<c:forEach items="${dimensions}" var="dimension">
											<c:if test="${dimension.level==2}">
												<option
													<c:if test="${dimension.id==option.smallDimension}">selected='selected'</c:if>
													value="${dimension.id}">${dimension.name}</option>
											</c:if>
											</c:forEach>
										</select>
										<form:errors path="smallDimension"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button class="btn btn-info" type="submit">
											<i class="ace-icon fa fa-check bigger-110"></i> 提交
										</button>
										<form:hidden path="id" />
										&nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 重置
										</button>
									</div>
									<form:hidden path="id" />
								</div>
							</form:form>
						</div>
					</div>
					<!-- /.col -->
					<!-- /.row -->

				</div>
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /.main-container -->

	<%@include file="../bottom.jsp"%>
	<%@include file="../commons/select-js.jsp"%>

	<script type="text/javascript">
		jQuery(function($) {
			$('.chosen-select').chosen({
				allow_single_deselect : true
			});

			$(window).off('resize.chosen').on('resize.chosen', function() {
				$('.chosen-select').each(function() {
					var $this = $(this);
					$this.next().css({
						'width' : $this.parent().width()
					});
				})
			}).trigger('resize.chosen');

			$("#root").bind("click", function(e) {
				checkBoxSetvalue();
			});

			function checkBoxSetvalue() {
				if ($("#root")[0].checked) {
					$("#roles").hide();
				} else {
					$("#roles").show();
				}
			}
			checkBoxSetvalue();

		});
	</script>

</body>
</html>
