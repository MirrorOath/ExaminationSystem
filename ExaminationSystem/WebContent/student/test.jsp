
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
    getTestPaper(0);
    testPageGetStuInfo();
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
				<label>试卷难度</label>
				<div class="btn-group">
					<button class="btn" id="qstHard">任意</button>
					<button data-toggle="dropdown" class="btn dropdown-toggle">
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
                        <li><a href="javascript:getTestPaper(0)">任意</a>
                        </li>
						<li><a href="javascript:getTestPaper(1)">1</a>
						</li>
						<li><a href="javascript:getTestPaper(2)">2</a>
						</li>
						<li><a href="javascript:getTestPaper(3)">3</a>
						</li>
						<li><a href="javascript:getTestPaper(4)">4</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="startTime">试卷生成时间</label>
				<div class="controls">
					<input id="startTime" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showName">姓名</label>
				<div class="controls">
					<input id="showName" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showEthnic">民族</label>
				<div class="controls">
					<input id="showEthnic" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showClassName">班级</label>
				<div class="controls">
					<input id="showClassName" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showAge">年龄</label>
				<div class="controls">
					<input id="showAge" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showDepartment">专业</label>
				<div class="controls">
					<input id="showDepartment" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showAuthority">系别</label>
				<div class="controls">
					<input id="showAuthority" type="text" disabled="true" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="showNote">备注</label>
				<div class="controls">
					<input id="showNote" type="text" disabled="true" />
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