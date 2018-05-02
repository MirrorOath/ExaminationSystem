

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
                alert("登录已失效，请重新登录");
                self.location = "../index.jsp";
            }
        }
    })
    setTimeout('getStuInfo()', 1000);
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

function getTestPaper(){
    $.ajax({
        url : "../jnTest/getTestPaper.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data == null)
                alert("该专业无试题，请老师添加");
            $.each(data, function(n, index){
                document.getElementById("startTime").value = index.startTime;
                document.getElementById("questionContent").innerHTML 
                    += "题型: " + index.questionType + "。";
                document.getElementById("questionContent").innerHTML 
                    += "分数: " + index.questionScore;
                document.getElementById("questionContent").innerHTML += index.questionContent;
                document.getElementById("questionContent").innerHTML 
                    += "<label class='control-label' for='questionAnswer" + n + 
                    		"' value='" + index.id +
                    		"' id='answer" + n +
                    		"' >请输入答案</label>"
                    + "<div class='controls'><input id='questionAnswer" + n + 
                    		"' type='text' /></div><hr/><br/><hr/>";
            })
            document.getElementById("subBtn").innerHTML 
                += "<button onclick='postTestPaper()' class='btn' >提交试卷</button>";
        }
    })
}

function postTestPaper(){
    startTime = document.getElementById("startTime").value;
    
}

