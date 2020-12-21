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
					<h1>添加试题</h1>
				</div>
				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">
							<form:form name="form" method="post" class="form-horizontal"
								role="form" action="add${suffix}" id="form"
								modelAttribute="question">
								<div class="form-group" id="question">
									<label class="col-sm-3 control-label no-padding-right">试卷：</label>
									<div class="col-sm-5 input-group">
										<select class="chosen-select" name="paperId"
											data-placeholder="请选择一个试卷">
											<option />
											<c:forEach items="${papers}" var="paper">
												<option
													<c:if test="${paper.id==question.paperId}">selected='selected'</c:if>
													value="${paper.id}">${paper.name}</option>
											</c:forEach>
										</select>
										<form:errors path="paperId"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">题目：</label>
									<div class="col-sm-5 input-group">
										<form:input path="title" id="title" placeholder="题目"
											class="form-control" />
									</div>
									<form:errors path="title"
										cssClass="label label-xlg label-danger">
									</form:errors>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">是否多选：</label>
									<div class="col-sm-5 input-group">
										<label> <input type="checkbox" name="selectType"
											id="practice" class="ace ace-switch ace-switch-4 btn-flat"
											<c:if test="${question.multiSelect==1}">checked="checked"</c:if>>
											<span class="lbl"></span></label>
									</div>
									<form:errors path="multiSelect"
										cssClass="label label-xlg label-danger">
									</form:errors>
								</div>

								<%-- <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">试题顺序：</label>
									<div class="col-sm-5 input-group">
										<form:input path="questionOrder" id="questionOrder"
											placeholder="试题顺序" class="form-control" />
									</div>
									<form:errors path="questionOrder"
										cssClass="label label-xlg label-danger">
									</form:errors>
								</div>
 --%>

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
