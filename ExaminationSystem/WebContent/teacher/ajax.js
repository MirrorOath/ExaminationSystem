window.onload = function() {

    getStuInfo();

}

function getStuInfo() {
    $.ajax({
        url : "../user/getTea.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data.success) {
                document.getElementById("showName").value = data.name;
                document.getElementById("showSex").value = data.sex;
                document.getElementById("showAge").value = data.age;
                document.getElementById("showDepartment").value = data.department;
                document.getElementById("showProfession").value = data.profession;
                document.getElementById("showAuthority").value = data.authority;
                document.getElementById("showNote").value = data.note;
                document.getElementById("name").value = data.name;
                document.getElementById("password").value = data.password;
                document.getElementById("sex").value = data.sex;
                document.getElementById("age").value = data.age;
                document.getElementById("department").value = data.department;
                document.getElementById("profession").value = data.profession;
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
    sex = document.getElementById("sex").value;
    age = document.getElementById("age").value;
    department = document.getElementById("department").value;
    profession = document.getElementById("profession").value;
    authority = document.getElementById("authority").value;
    note = document.getElementById("note").value;
    $.ajax({
        url : "../user/TeaChange.action",
        data : {
            name : name,
            password : password,
            sex : sex,
            age : age,
            department : department,
            profession : profession,
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
