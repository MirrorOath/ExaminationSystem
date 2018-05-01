window.onload = function() {

    getStuInfo();

}

function getStuInfo() {
    $.ajax({
        url : "../user/getStu.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data.success) {
                document.getElementById("showName").value = data.name;
                document.getElementById("showEthnic").value = data.ethnic;
                document.getElementById("showClassName").value = data.className;
                document.getElementById("showAge").value = data.age;
                document.getElementById("showDepartment").value = data.department;
                document.getElementById("showAuthority").value = data.authority;
                document.getElementById("showNote").value = data.note;
                document.getElementById("name").value = data.name;
                document.getElementById("password").value = data.password;
                document.getElementById("ethnic").value = data.ethnic;
                document.getElementById("className").value = data.className;
                document.getElementById("age").value = data.age;
                document.getElementById("department").value = data.department;
                document.getElementById("authority").value = data.authority;
                document.getElementById("note").value = data.note;
            } else {
                // alert("请回首页登陆");
            }
        }
    })
}

function change() {
    name = document.getElementById("name").value;
    password = document.getElementById("password").value;
    ethnic = document.getElementById("ethnic").value;
    className = document.getElementById("className").value;
    age = document.getElementById("age").value;
    department = document.getElementById("department").value;
    authority = document.getElementById("authority").value;
    note = document.getElementById("note").value;
    $.ajax({
        url : "../user/change.action",
        data : {
            name : name,
            password : password,
            ethnic : ethnic,
            className : className,
            age : age,
            department : department,
            authority : authority,
            note : note
        },
        type : "post",
        dateType : "json",
        success : function(data) {
            getStuInfo();
        }
    })
}

function signOut() {

    $.ajax({
        url : "../user/signOut.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            self.location="../index.jsp";
        }
    })
}
