

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
            } else {
                alert("登录已失效，请重新登录");
                self.location = "../index.jsp";
            }
        }
    })
    setTimeout('getStuInfo()', 1000);
}

function getStuForChangeMessage() {
    $.ajax({
        url : "../user/getStu.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data.success) {
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
}

function reTest(scoreId){
    $.ajax({
        url : "../jnTest/setReTest.action",
        data : {
            scoreId : scoreId
        },
        type : "post",
        dateType : "json",
        success : function(data) {
            self.location = "test.jsp";
        }
    })
}

function getScore(){
    $.ajax({
        url : "../user/getScore.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            str = "";
            str += "<table class='table table-hover'><thead><tr>"
                    + "<th>专业</th>" + "<th>总分</th>" + "<th>得分</th>"
                    + "<th>考试开始时间</th>" + "<th>考试结束时间</th>"
                    + "<th>是否及格</th>" + "<th>是否重考</th>" 
                    + "<th>重考得分</th></tr></thead><tbody>";
            $.each(data, function(n, index){
                str += "<tr class='" + ((n%2) == 1 ? "success" : "info") + "'>"
                    + "<td>" + index.courseName + "</td>"
                    + "<td>" + index.totalScore + "</td>"
                    + "<td>" + index.score + "</td>"
                    + "<td>" + index.startTime + "</td>"
                    + "<td>" + index.endTime + "</td>"
                    + "<td>" + (index.pass == true ? "是" 
                            : "<a href='javascript:reTest(" + index.id + ")'>否</a>") + "</td>"
                    + "<td>" + (index.reTest == true ? "是" : "否") + "</td>"
                    + "<td>" + index.reTestMark + "</td>"
                    + "</tr>";
            });
            str += "</tbody></table>";
            document.getElementById("stuScoreDiv").innerHTML = str;
        }
    })
    setTimeout('getScore()', 1000);
}


function testPageGetStuInfo() {
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
            } else {
                alert("登录已失效，请重新登录");
                self.location = "../index.jsp";
            }
        }
    })
    setTimeout('testPageGetStuInfo()', 1000);
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
            getStuForChangeMessage();
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


function getTestPaper(hard){
    if(hard == 0)
        document.getElementById("qstHard").innerHTML = "任意";
    else
        document.getElementById("qstHard").innerHTML = hard;
    document.getElementById("questionContent").innerHTML = "";
    $.ajax({
        url : "../jnTest/getTestPaper.action",
        data : {
            hard : hard
        },
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data == null)
                alert("该专业无试题，请老师添加");
            str = "";
            $.each(data, function(n, index){
                document.getElementById("startTime").value = index.startTime;
                
                str += "题型: " + index.questionType + "。"
                    + "分数: " + index.questionScore
                    + index.questionContent
                    + "<button class='btn' value='" + index.id
                    +"' id='qstId" + n
                    + "' >请输入答案</button>"
                    + "<div class='controls'><input id='questionAnswer" + n 
                    + "' type='text' /></div><hr/><br/><hr/>";
            })
            document.getElementById("questionContent").innerHTML = str;
            document.getElementById("subBtn").innerHTML 
                = "<button onclick='postTestPaper()' class='btn' >提交试卷</button>";
        }
    })
}

function postTestPaper(){
    startTime = document.getElementById("startTime").value;
    qstA0 = document.getElementById("questionAnswer0").value;
    qstA1 = document.getElementById("questionAnswer1").value;
    qstA2 = document.getElementById("questionAnswer2").value;
    qstId0 = document.getElementById("qstId0").value;
    qstId1 = document.getElementById("qstId1").value;
    qstId2 = document.getElementById("qstId2").value;
    stuName = document.getElementById("showName").value;
    testName = document.getElementById("TestName").value;
    department = document.getElementById("showDepartment").value;

            

    if (startTime == null || startTime == "") {
        alert("开始时间不存在，请继续答卷");
        return;
    } else if (qstA0 == null || qstA0 == "") {
        alert("答案1不存在，请继续答卷");
        return;
    } else if (qstA1 == null || qstA1 == "") {
        alert("答案2不存在，请继续答卷");
        return;
    } else if (qstA2 == null || qstA2 == "") {
        alert("答案3不存在，请继续答卷");
        return;
    } else if (qstId0 == null || qstId0 == ""){
        alert("题目1的ID不存在，请继续答卷");
        return;
    } else if(qstId1 == null || qstId1 == ""){
        alert("题目2的ID不存在，请继续答卷");
        return;
    } else if(qstId2 == null || qstId2 == ""){
        alert("题目3的ID不存在，请继续答卷");
        return;
    } else if(stuName == null || stuName == ""){
        alert("学生名不存在，请继续答卷");
        return;
    } else if(testName == null || testName == ""){
        alert("试卷名不存在，请继续答卷");
        return;
    } else if(department == null || department == "") {
        alert("学生专业不存在，请继续答卷");
        return;
    }
    
    $.ajax({
        url : "../jnTest/postTestPaper.action",
        data : {
            startTime : startTime, 
            qstA0 : qstA0,
            qstA1 : qstA1,
            qstA2 : qstA2,
            qstId0 : qstId0,
            qstId1 : qstId1,
            qstId2 : qstId2,
            stuName : stuName,
            testName : testName,
            department : department
        },
        type : "post",
        dateType : "json",
        success : function(data) {
            if(data == true){
                alert("提交试卷成功，请返回个人空间查看分数");
                self.location="userArea.jsp";
            }
            else{
                alert("提交试卷失败");
            }
        }
    })
    
}

