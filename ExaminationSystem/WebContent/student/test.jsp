
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1.0">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<title>在线考试</title>
<script charset="Shift_JIS"
	src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_tr.js"></script>
<script type="text/javascript">
window.onload = function() {
    getTestPaper();
}
</script>


</head>
<body>
	<script src="../jquery/jquery.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="ajax.js"></script>

	<div class="row-fluid">
		<div class="span4">
			<div class="control-group">
				<label class="control-label" for="TestName">试卷名称</label>
				<div class="controls">
					<input id="TestName" type="text" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="startTime">试卷生成时间</label>
				<div class="controls">
					<input id="startTime" type="text" disabled="true" />
				</div>
			</div>
		</div>
		<div class="span6">
			<div id="questionContent"></div>
		</div>
		<div class="span2">
			<div id="subBtn"></div>
		</div>
	</div>

</body>
</html>