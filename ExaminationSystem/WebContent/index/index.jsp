
<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" charset="UTF-8" name="viewport"
    content="width=device-width, initial-scale=1.0">
<title>欢迎光临</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
    media="screen">

<script type="text/javascript">
    function conBase() {
        $.ajax({
            url : "../special/conBase.action",
            data : {},
            type : "post",
            dateType : "json",
            success : function(data) {
            }
        })
    }
</script>
<style>
.parent {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    height: 240px;
    width: 70%;
}
</style>

</head>

<body onload="conBase()">
    <script src="../jquery/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../util/js/index.js"></script>
    <script src="../util/js/util.js"></script>

    <div class="parent">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span4"></div>
                <div class="span4">
                    <div class="tabbable tabs-right" id="tabs-890639">
                        <ul class="nav nav-tabs">
                            <li><a href="#panel-75677"
                                data-toggle="tab">注册</a></li>
                            <li class="active"><a
                                href="#panel-442927" data-toggle="tab">登陆</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" id="panel-75677">
                                <div class="row-fluid">
                                    <div class="control-group">
                                        <label class="control-label"
                                            for="signUpName">用户名</label>
                                        <div class="controls">
                                            <input id="signUpName"
                                                type="text" />
                                        </div>
                                        <label class="control-label"
                                            for="signUpPassword">密码</label>
                                        <div class="password">
                                            <input id="signUpPassword"
                                                type="text" />
                                        </div>
                                        <label>注册类型</label>
                                        <div class="row-fluid">
                                            <div class="span6">
                                                <div
                                                    class="btn-group dropup">
                                                    <button class="btn"
                                                        id="typeOfSignUp">请选择</button>
                                                    <button
                                                        data-toggle="dropdown"
                                                        class="btn dropdown-toggle">
                                                        <span
                                                            class="caret"></span>
                                                    </button>
                                                    <ul
                                                        class="dropdown-menu">
                                                        <li><a
                                                            href="javascript:SetFirstStr('学生', 'typeOfSignUp')">学生</a>
                                                        </li>
                                                        <li><a
                                                            href="javascript:SetFirstStr('教师', 'typeOfSignUp')">教师</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="span6">
                                                <button
                                                    onclick="signUp()"
                                                    class="btn">现在注册</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane active"
                                id="panel-442927">
                                <div class="row-fluid">
                                    <div class="control-group">
                                        <label class="control-label"
                                            for="signInName">用户名</label>
                                        <div class="controls">
                                            <input id="signInName"
                                                type="text" />
                                        </div>
                                        <label class="control-label"
                                            for="signInPassword">密码</label>
                                        <div class="password">
                                            <input id="signInPassword"
                                                type="text" />
                                        </div>
                                        <label>登陆类型</label>
                                        <div class="row-fluid">
                                            <div class="span6">
                                                <div
                                                    class="btn-group dropup">
                                                    <button class="btn"
                                                        id="typeOfSignIn">请选择</button>
                                                    <button
                                                        data-toggle="dropdown"
                                                        class="btn dropdown-toggle">
                                                        <span
                                                            class="caret"></span>
                                                    </button>
                                                    <ul
                                                        class="dropdown-menu">
                                                        <li><a
                                                            href="javascript:SetFirstStr('学生', 'typeOfSignIn')">学生</a>
                                                        </li>
                                                        <li><a
                                                            href="javascript:SetFirstStr('教师', 'typeOfSignIn')">教师</a>
                                                        </li>
                                                        <li><a
                                                            href="javascript:SetFirstStr('管理员', 'typeOfSignIn')">管理员</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="span6">
                                                <button
                                                    onclick="signIn()"
                                                    class="btn">现在登陆</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="span4"></div>
        </div>
    </div>
</body>

</html>