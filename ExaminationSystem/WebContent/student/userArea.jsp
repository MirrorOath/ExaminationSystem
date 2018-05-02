
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" charset="UTF-8" name="viewport"
    content="width=device-width, initial-scale=1.0">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
    media="screen">
<title>学生个人空间</title>

<script charset="Shift_JIS"
    src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_tr.js"></script>
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
    getStuInfo();
    getScore();
    getStuForChangeMessage();
}
</script>

</head>
<body>
    <script src="../jquery/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="ajax.js"></script>

    <div class="tabbable tabs-right" id="tabs-890639">
        <div class="container-fluid parent">
            <div class="row-fluid">
                <div class="span2">
                    <ul class="nav nav-list well">
                        <li class="nav-header">学生个人空间</li>
                        <li><a href="#panel-75676"
                            data-toggle="tab">查询成绩</a></li>
                        <li><a href="test.jsp">考试</a></li>
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
                        <div class="tab-pane" id="panel-75676">
                            <div id="stuScoreDiv">
                            </div>
                        </div>
                        <div class="tab-pane" id="panel-75677">2</div>
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
                                        for="showEthnic">民族</label>
                                    <div class="controls">
                                        <input id="showEthnic"
                                            type="text" disabled="true" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="showClassName">班级</label>
                                    <div class="controls">
                                        <input id="showClassName"
                                            type="text" disabled="true" />
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
                                        for="showAuthority">系别</label>
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
                                        for="ethnic">民族</label>
                                    <div class="controls">
                                        <input id="ethnic" type="text" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"
                                        for="className">班级</label>
                                    <div class="controls">
                                        <input id="className"
                                            type="text" />
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
                                        for="authority">系别</label>
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
