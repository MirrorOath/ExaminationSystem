
<!DOCTYPE html>
<html>

<head>
<title>学生个人空间</title>
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
    $(function() {
        $('#Question').edatagrid({
            url : '../qst/GetQuestions.action',
            saveUrl : '../qst/SaveQuestion.action',
            updateUrl : '../qst/UpdateQuestion.action',
            destroyUrl : '../qst/DelQuestion.action'
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
                        <li class="nav-header">教师个人空间</li>
                        <li><a href="#panel-75676"
                            data-toggle="tab">成绩查询</a></li>
                        <li><a href="#panel-75376"
                            data-toggle="tab">试题添加</a></li>
                        <li><a href="#panel-75677"
                            data-toggle="tab">试题增删改查</a></li>
                        <li class="nav-header">功能列表</li>
                        <li class="active"><a href="#panel-75678"
                            data-toggle="tab">个人信息</a></li>
                        <li><a href="#panel-75679"
                            data-toggle="tab">修改个人信息</a></li>
                        <li class="divider"></li>
                        <li><a href="#">帮助</a></li>
                        <li><a href="javascript:signOut()">退出登录</a></li>
                    </ul>
                </div>
                <div class="span2"></div>
                <div class="span6">
                    <div class="tab-content">
                        <div class="tab-pane" id="panel-75676">1</div>
                        <div class="tab-pane" id="panel-75376">

                            <div class="span6">
                                <label>试题类型</label>
                                <div class="row-fluid">
                                    <div class="btn-group">
                                        <button class="btn"
                                            id="addQuestionType">请选择</button>
                                        <button data-toggle="dropdown"
                                            class="btn dropdown-toggle">
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a
                                                href="javascript:SetFirstStr('选择题', 'addQuestionType')">选择题</a>
                                            </li>
                                            <li><a
                                                href="javascript:SetFirstStr('计算题', 'addQuestionType')">计算题</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <label class="control-label"
                                    for="addProfession">专业</label>
                                <div class="controls">
                                    <input id="addProfession"
                                        type="text" />
                                </div>
                                <label class="control-label"
                                    for="addDegreeOfDifficulty">难易程度</label>
                                <div class="controls">
                                    <input id="addDegreeOfDifficulty"
                                        type="text" />
                                </div>
                                <label class="control-label"
                                    for="addQuestionScore">试题分数</label>
                                <div class="controls">
                                    <input id="addQuestionScore"
                                        type="text" />
                                </div>
                                <label class="control-label"
                                    for="addTeacherId">教师编号</label>
                                <div class="controls">
                                    <input id="addTeacherId" type="text" />
                                </div>
                                <label class="control-label"
                                    for="addNote">备注</label>
                                <div class="controls">
                                    <input id="addNote" type="text" />
                                </div>
                            </div>
                            <div class="span6">
                                <label class="control-label"
                                    for="questionContent">题目</label>
                                <div class="controls">
                                    <input id="questionContent"
                                        type="text" />
                                </div>
                                <label class="control-label"
                                    for="questionAnswer">答案</label>
                                <div class="controls">
                                    <input id="questionAnswer"
                                        type="text" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="panel-75677">
                            <div>
                                <table id="Question" title="试题库"
                                    style="width: 1500px; height: 500px"
                                    toolbar="#QuestionToolbar"
                                    pagination="true" idField="id"
                                    rownumbers="true" fitColumns="true"
                                    singleSelect="true">
                                    <thead>
                                        <tr>
                                            <th field="id" width="50"
                                                editor="{type:'validatebox',options:{readonly:true}}">试题Id</th>
                                            <th field="profession"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">专业</th>
                                            <th field="questionType"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">试题题型</th>
                                            <th
                                                field="degreeOfDifficulty"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">难易程度</th>
                                            <th field="questionContent"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">试题内容</th>
                                            <th field="questionScore"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">试题分数</th>
                                            <th field="questionAnswer"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">试题答案</th>
                                            <th field="teacherId"
                                                width="50"
                                                editor="{type:'validatebox',options:{required:true}}">教师编号</th>
                                            <th field="note" width="50"
                                                editor="{type:'validatebox',options:{required:true}}">备注</th>
                                        </tr>
                                    </thead>
                                </table>
                                <div id="QuestionToolbar">
                                    <a href="#Question"
                                        class="easyui-linkbutton"
                                        iconCls="icon-add" plain="true"
                                        onclick="javascript:$('#Question').edatagrid('addRow')">添加</a>
                                    <a href="#Question"
                                        class="easyui-linkbutton"
                                        iconCls="icon-remove"
                                        plain="true"
                                        onclick="javascript:$('#Question').edatagrid('destroyRow')">删除</a>
                                    <a href="#Question"
                                        class="easyui-linkbutton"
                                        iconCls="icon-save" plain="true"
                                        onclick="javascript:$('#Question').edatagrid('saveRow')">保存</a>
                                    <a href="#Question"
                                        class="easyui-linkbutton"
                                        iconCls="icon-undo" plain="true"
                                        onclick="javascript:$('#Question').edatagrid('cancelRow')">取消</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane active" id="panel-75678">
                            <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showName">姓名</label>
                                    <div class="controls">
                                        <input id="showName" type="text"
                                            disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showSex">性别</label>
                                    <div class="controls">
                                        <input id="showSex" type="text"
                                            disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showAge">年龄</label>
                                    <div class="controls">
                                        <input id="showAge" type="text"
                                            disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showDepartment">专业</label>
                                    <div class="controls">
                                        <input id="showDepartment"
                                            type="text" disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showProfession">系别</label>
                                    <div class="controls">
                                        <input id="showProfession"
                                            type="text" disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showAuthority">权限</label>
                                    <div class="controls">
                                        <input id="showAuthority"
                                            type="text" disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showNote">备注</label>
                                    <div class="controls">
                                        <input id="showNote" type="text"
                                            disabled="true" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="panel-75679">
                            <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label"
                                        for="name">姓名</label>
                                    <div class="controls">
                                        <input id="name" type="text"
                                            disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="password">密码</label>
                                    <div class="controls">
                                        <input id="password" type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="sex">性别</label>
                                    <div class="controls">
                                        <input id="sex" type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="age">年龄</label>
                                    <div class="controls">
                                        <input id="age" type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="department">专业</label>
                                    <div class="controls">
                                        <input id="department"
                                            type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="profession">系别</label>
                                    <div class="controls">
                                        <input id="profession"
                                            type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="authority">权限</label>
                                    <div class="controls">
                                        <input id="authority"
                                            type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="note">备注</label>
                                    <div class="controls">
                                        <input id="note" type="text" />
                                    </div>
                                </div>
                                <div>
                                    <button onclick="change()"
                                        class="btn">提交修改</button>
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
