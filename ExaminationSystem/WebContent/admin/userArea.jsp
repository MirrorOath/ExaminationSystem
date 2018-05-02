
<!DOCTYPE html>
<html>

<head>
<title>管理员个人空间</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui/demo/demo.css">
<script type="text/javascript" src="../jquery-easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../jquery-easyui/plugins/jquery.datagrid.js"></script>
<script type="text/javascript" src="../jquery/datagrid-detailview.js"></script>
<script type="text/javascript" src="../jquery/jquery.edatagrid.js"></script>
<script charset="Shift_JIS"
	src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_tr.js"></script>
<style type="text/css">
form {
	margin: 0;
	padding: 0;
}

.dv-table td {
	border: 0;
}

.dv-table input {
	border: 1px solid #ccc;
}
</style>
<style>
.parent {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
	height: 600px;
}
</style>

<script type="text/javascript">
    window.onload = function() {
        getAdmInfo();
    }
</script>

<script type="text/javascript">
    $(function() {
        $('#Student').edatagrid({
            url : '../admin/GetStudents.action',
            saveUrl : '../admin/SaveStudent.action',
            updateUrl : '../admin/UpdateStudent.action',
            destroyUrl : '../admin/DelStudent.action'
        });
    });
    $(function() {
        $('#Teacher').edatagrid({
            url : '../admin/GetTeachers.action',
            saveUrl : '../admin/SaveTeacher.action',
            updateUrl : '../admin/UpdateTeacher.action',
            destroyUrl : '../admin/DelTeacher.action'
        });
    });
    $(function() {
        $('#Question').edatagrid({
            url : '../qst/GetQuestions.action',
            saveUrl : '../qst/SaveQuestion.action',
            updateUrl : '../qst/UpdateQuestion.action',
            destroyUrl : '../qst/DelQuestion.action'
        });
    });
    $(function() {
        $('#Score').edatagrid({
            url : '../score/GetScores.action',
            saveUrl : '../score/SaveScore.action',
            updateUrl : '../score/UpdateScore.action',
            destroyUrl : '../score/DelScore.action'
        });
    });
</script>

</head>
<body>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="ajax.js"></script>

	<div class="tabbable tabs-right" id="tabs-890639">
		<div class="container-fluid parent">
			<div class="row-fluid">
				<div class="span2">
					<ul class="nav nav-list well">
						<li class="nav-header">管理员</li>
						<li><a href="#panel-73276" data-toggle="tab">学生管理</a></li>
						<li><a href="#panel-75376" data-toggle="tab">教师管理</a></li>
						<li><a href="#panel-75677" data-toggle="tab">试题管理</a></li>
						<li><a href="#panel-75676" data-toggle="tab">成绩单管理</a></li>
						<li class="nav-header">功能列表</li>
						<li class="active"><a href="#panel-75678" data-toggle="tab">个人信息</a></li>
						<li><a href="#panel-75679" data-toggle="tab">修改个人信息</a></li>
						<li class="divider"></li>
						<li><a href="#">帮助</a></li>
						<li><a href="javascript:signOut()">退出登录</a></li>
					</ul>
				</div>
				<div class="span2"></div>
				<div class="span6">
					<div class="tab-content">
						<div class="tab-pane" id="panel-75676">
							<div>
								<table id="Score" title="成绩单库"
									style="width: 750px; height: 250px" toolbar="#ScoreToolbar"
									pagination="true" idField="id" rownumbers="true"
									fitColumns="true" singleSelect="true">
									<thead>
										<tr>
											<th field="id" width="5"
												editor="{type:'validatebox',options:{readonly:true}}">得分记录ID</th>
											<th field="stuId" width="5"
												editor="{type:'validatebox',options:{required:true}}">学生ID</th>
											<th field="jsTestId" width="5"
												editor="{type:'validatebox',options:{required:true}}">临时试卷ID</th>
											<th field="courseName" width="10"
												editor="{type:'validatebox',options:{required:true}}">专业</th>
											<th field="totalScore" width="5"
												editor="{type:'validatebox',options:{required:true}}">总分</th>
											<th field="score" width="5"
												editor="{type:'validatebox',options:{required:true}}">得分</th>
											<th field="pass" width="5"
												editor="{type:'validatebox',options:{required:true}}">是否及格</th>
											<th field="reTest" width="5"
												editor="{type:'validatebox',options:{required:true}}">是否重考</th>
											<th field="reTestMark" width="10"
												editor="{type:'validatebox',options:{required:true}}">重考得分</th>
										</tr>
									</thead>
								</table>
								<div id="ScoreToolbar">
									<a href="#Score" class="easyui-linkbutton" iconCls="icon-add"
										plain="true"
										onclick="javascript:$('#Score').edatagrid('addRow')">添加</a> <a
										href="#Score" class="easyui-linkbutton" iconCls="icon-remove"
										plain="true"
										onclick="javascript:$('#Score').edatagrid('destroyRow')">删除</a>
									<a href="#Score" class="easyui-linkbutton" iconCls="icon-save"
										plain="true"
										onclick="javascript:$('#Score').edatagrid('saveRow')">保存</a> <a
										href="#Score" class="easyui-linkbutton" iconCls="icon-undo"
										plain="true"
										onclick="javascript:$('#Score').edatagrid('cancelRow')">取消</a>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="panel-75376">
							<div>
								<table id="Teacher" title="教师库"
									style="width: 700px; height: 250px" toolbar="#TeacherToolbar"
									pagination="true" idField="id" rownumbers="true"
									fitColumns="true" singleSelect="true">
									<thead>
										<tr>
											<th field="name" width="50"
												editor="{type:'validatebox',options:{required:true}}">用户名</th>
											<th field="password" width="50"
												editor="{type:'validatebox',options:{required:true}}">密码</th>
											<th field="sex" width="50"
												editor="{type:'validatebox',options:{required:true}}">性别</th>
											<th field="age" width="50"
												editor="{type:'validatebox',options:{required:true}}">年龄</th>
											<th field="department" width="50"
												editor="{type:'validatebox',options:{required:true}}">专业</th>
											<th field="profession" width="50"
												editor="{type:'validatebox',options:{required:true}}">系别</th>
											<th field="authority" width="50"
												editor="{type:'validatebox',options:{required:true}}">权限</th>
											<th field="note" width="50"
												editor="{type:'validatebox',options:{required:true}}">备注</th>
										</tr>
									</thead>
								</table>
								<div id="TeacherToolbar">
									<a href="#Teacher" class="easyui-linkbutton" iconCls="icon-add"
										plain="true"
										onclick="javascript:$('#Teacher').edatagrid('addRow')">添加</a>
									<a href="#Teacher" class="easyui-linkbutton"
										iconCls="icon-remove" plain="true"
										onclick="javascript:$('#Teacher').edatagrid('destroyRow')">删除</a>
									<a href="#Teacher" class="easyui-linkbutton"
										iconCls="icon-save" plain="true"
										onclick="javascript:$('#Teacher').edatagrid('saveRow')">保存</a>
									<a href="#Teacher" class="easyui-linkbutton"
										iconCls="icon-undo" plain="true"
										onclick="javascript:$('#Teacher').edatagrid('cancelRow')">取消</a>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="panel-73276">
							<div>
								<table id="Student" title="学生库"
									style="width: 700px; height: 250px"
									toolbar="#StudentToolbar" pagination="true" idField="id"
									rownumbers="true" fitColumns="true" singleSelect="true">
									<thead>
										<tr>
											<th field="name" width="50"
												editor="{type:'validatebox',options:{required:true}}">用户名</th>
											<th field="password" width="50"
												editor="{type:'validatebox',options:{required:true}}">密码</th>
											<th field="ethnic" width="50"
												editor="{type:'validatebox',options:{required:true}}">民族</th>
											<th field="className" width="50"
												editor="{type:'validatebox',options:{required:true}}">班级</th>
											<th field="age" width="50"
												editor="{type:'validatebox',options:{required:true}}">年龄</th>
											<th field="department" width="50"
												editor="{type:'validatebox',options:{required:true}}">专业</th>
											<th field="authority" width="50"
												editor="{type:'validatebox',options:{required:true}}">系别</th>
											<th field="note" width="50"
												editor="{type:'validatebox',options:{required:true}}">备注</th>
										</tr>
									</thead>
								</table>
								<div id="StudentToolbar">
									<a href="#Student" class="easyui-linkbutton"
										iconCls="icon-add" plain="true"
										onclick="javascript:$('#Student').edatagrid('addRow')">添加</a>
									<a href="#Student" class="easyui-linkbutton"
										iconCls="icon-remove" plain="true"
										onclick="javascript:$('#Student').edatagrid('destroyRow')">删除</a>
									<a href="#Student" class="easyui-linkbutton"
										iconCls="icon-save" plain="true"
										onclick="javascript:$('#Student').edatagrid('saveRow')">保存</a>
									<a href="#Student" class="easyui-linkbutton"
										iconCls="icon-undo" plain="true"
										onclick="javascript:$('#Student').edatagrid('cancelRow')">取消</a>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="panel-75677">
							<div>
								<table id="Question" title="试题库"
									style="width: 1500px; height: 500px" toolbar="#QuestionToolbar"
									pagination="true" idField="id" rownumbers="true"
									fitColumns="true" singleSelect="true">
									<thead>
										<tr>
											<th field="id" width="50"
												editor="{type:'validatebox',options:{readonly:true}}">试题Id</th>
											<th field="profession" width="50"
												editor="{type:'validatebox',options:{required:true}}">专业</th>
											<th field="questionType" width="50"
												editor="{type:'validatebox',options:{required:true}}">试题题型</th>
											<th field="degreeOfDifficulty" width="50"
												editor="{type:'validatebox',options:{required:true}}">难易程度</th>
											<th field="questionContent" width="50"
												editor="{type:'validatebox',options:{readonly:true}}">试题内容</th>
											<th field="questionScore" width="50"
												editor="{type:'validatebox',options:{required:true}}">试题分数</th>
											<th field="questionAnswer" width="50"
												editor="{type:'validatebox',options:{required:true}}">试题答案</th>
											<th field="teacherId" width="50"
												editor="{type:'validatebox',options:{required:true}}">教师编号</th>
											<th field="note" width="50"
												editor="{type:'validatebox',options:{required:true}}">备注</th>
										</tr>
									</thead>
								</table>
								<div id="QuestionToolbar">
									<a href="#Question" class="easyui-linkbutton"
										iconCls="icon-add" plain="true"
										onclick="javascript:$('#Question').edatagrid('addRow')">添加</a>
									<a href="#Question" class="easyui-linkbutton"
										iconCls="icon-remove" plain="true"
										onclick="javascript:$('#Question').edatagrid('destroyRow')">删除</a>
									<a href="#Question" class="easyui-linkbutton"
										iconCls="icon-save" plain="true"
										onclick="javascript:$('#Question').edatagrid('saveRow')">保存</a>
									<a href="#Question" class="easyui-linkbutton"
										iconCls="icon-undo" plain="true"
										onclick="javascript:$('#Question').edatagrid('cancelRow')">取消</a>
								</div>
							</div>
						</div>
						<div class="tab-pane active" id="panel-75678">
							<div class="row-fluid">
								<div class="control-group">
									<label class="control-label" for="showName">用户名</label>
									<div class="controls">
										<input id="showName" type="text" disabled="true" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="showAuthority">权限</label>
									<div class="controls">
										<input id="showAuthority" type="text" disabled="true" />
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="panel-75679">
							<div class="row-fluid">
								<div class="control-group">
									<label class="control-label" for="name">姓名</label>
									<div class="controls">
										<input id="name" type="text" disabled="true" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="password">密码</label>
									<div class="controls">
										<input id="password" type="text" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="authority">权限</label>
									<div class="controls">
										<input id="authority" type="text" />
									</div>
								</div>
								<div>
									<button onclick="change()" class="btn">提交修改</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="span2"></div>
	</div>
	</div>
	</div>

</body>
</html>
