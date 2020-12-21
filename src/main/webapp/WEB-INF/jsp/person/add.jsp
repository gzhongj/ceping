<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
					<h1>添加人物类型</h1>
				</div>
				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">
							<form:form name="form" method="post" class="form-horizontal"
								role="form" action="add${suffix}" id="form"
								modelAttribute="person" enctype="multipart/form-data">

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1">类型标识：</label>
									<div class="col-sm-5 input-group">
										<select class="chosen-select" name="tags"
											data-placeholder="请选择人物类型标签" size="10">
											<option />
													<c:forEach items="${ dimensions}" var="dimension">
														<c:if test="${ dimension.level ==1}">
															<option value="${ dimension.tag}"
																<c:if test="${ dimension.tag eq tags[0]}"> selected="selected"</c:if>>${ dimension.tag}：${ dimension.name}</option>
														</c:if>
													</c:forEach>
										</select> <select class="chosen-select" name="tags"
											data-placeholder="请选择人物类型标签" size="10">
											<option />
												<c:forEach items="${ dimensions}" var="dimension">
													<c:if test="${ dimension.level ==1}">
														<option value="${ dimension.tag}"
															<c:if test="${ dimension.tag eq tags[1]}"> selected="selected"</c:if>>${ dimension.tag}：${ dimension.name}</option>
													</c:if>
												</c:forEach>
										</select>
										<form:errors path="tag"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">类型名称：</label>
									<div class="col-sm-5 input-group">
										<form:input path="name" id="name" placeholder="人格类型名称"
											class="form-control" />
										<form:errors path="name"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">C端描述：</label>
									<div class="col-sm-5 input-group">
										<form:textarea path="descc" id="description"
											placeholder="展现给求职者的人物类型描述"
											class="autosize-transition form-control" />
										<form:errors path="descc"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">B端描述：</label>
									<div class="col-sm-5 input-group">
										<form:textarea path="descb" id="description"
											placeholder="展现给企业的人物类型描述"
											class="autosize-transition form-control " />
										<form:errors path="descb"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">典型人物：</label>
									<div class="col-sm-5 input-group">
										<form:input path="typicalPerson" id="typicalPerson"
											placeholder="典型人物" class="form-control" />
										<form:errors path="typicalPerson"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1">人物照片：</label>
									<div class="col-sm-5 input-group">
										<label class="ace-file-input ace-file-multiple"><input
											type="file" id="pic" name="pic"></label>
										<form:errors path="photograph"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">人物描述：</label>
									<div class="col-sm-5 input-group">
										<form:textarea path="personDesc" id="personDesc"
											placeholder="典型人物描述" class=" form-control" />
										<form:errors path="personDesc"
											cssClass="label label-xlg label-danger">
										</form:errors>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">关键字：</label>
									<div class="col-sm-5 input-group">
										<form:input path="keyword" id="keyword" placeholder="类型关键字"
											class=" form-control" />
										<form:errors path="keyword"
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
		var upload_status = [ "你还没有选择文件", "只能上传jpg格式文件", "文件 不能大于50k" ];
		var upload_up = [ "上传", "修改" ];

		jQuery(function($) {

			//图片选择框
			$('#pic').ace_file_input({
				style : 'well',
				btn_choose : '选择文件或者将文件拖放到此处',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'large',//large | fit
				maxSize : 102400,//bytes
				allowExt : [ "jpg" ],
				allowMime : [ "image/jpg", "image/jpeg" ],

			}).on('file.error.ace', function(e, info) {
				if (info.error_count['ext'] || info.error_count['mime'])
					alert(upload_status[1]);
				if (info.error_count['size'])
					alert(upload_status[2]);
			});

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
