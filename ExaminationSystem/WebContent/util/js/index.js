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

function sendAjax() {
    $.ajax({
        url : "../test/test.action",
        data : {
            "id" : 1
        },
        type : "post",
        dataType : "json",
        success : function(data) {
            alert(data.id);
            alert(data.name);
            alert(data.thing);
            alert(data.date);
        }
    });
}

function signUp() {
    name = document.getElementById("signUpName").value;
    if(name == null || name == ""){
        alert("请输入用户名");
        return;
    }
    password = document.getElementById("signUpPassword").value;
    if(password == null || password == ""){
        alert("请输入密码");
        return;
    }
    type = document.getElementById("typeOfSignUp").value;
    if(type == null || type == ""){
        alert("请选择注册类型");
        return;
    }
    $.ajax({
        url : "../user/signUp.action",
        data : {
            name : name,
            password : password,
            type : type
        },
        type : "post",
        dataType : "json",
        success : function(data) {
            switch (data) {
            case -1:
                alert("注册失败:用户名已存在");
                break;
            case 0:
                alert("注册成功:请返回登陆");
                break;
            }
        }
    });
}


function signIn() {
    var name = document.getElementById("signInName").value;
    if(name == null || name == ""){
        alert("请输入用户名");
        return;
    }
    var password = document.getElementById("signInPassword").value;
    if(password == null || password == ""){
        alert("请输入密码");
        return;
    }
    var type = document.getElementById("typeOfSignIn").value;
    if(type == null || type == ""){
        alert("请选择登陆类型");
        return;
    }
    $.ajax({
        url : "../user/signIn.action",
        data : {
            name : name,
            password : password,
            type : type
        },
        type : "post",
        dataType : "json",
        success : function(data) {
            switch (data) {
            case -2:
                alert("登陆失败:用户名或密码错误");
                break;
            case -1:
                alert("登陆失败:用户名不存在");
                break;
            case 0:
                alert("登陆成功:管理员");
                self.location="../admin/userArea.jsp";
                break;
            case 1:
                alert("登陆成功:教师");
                self.location="../teacher/userArea.jsp";
                break;
            case 2:
                alert("登陆成功:学生");
                self.location="../student/userArea.jsp";
                break;
            }
        }
    });
}

