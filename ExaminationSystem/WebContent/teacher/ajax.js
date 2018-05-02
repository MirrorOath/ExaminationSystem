window.onload = function () {

    getStuInfo();

}

function getStuInfo() {
    $.ajax({
        url: "../user/getTea.action",
        type: "post",
        dateType: "json",
        success: function (data) {
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
                document.getElementById("addProfession").value = data.profession;
                document.getElementById("addTeacherId").value = data.id;
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
    sex = document.getElementById("sex").value;
    age = document.getElementById("age").value;
    department = document.getElementById("department").value;
    profession = document.getElementById("profession").value;
    authority = document.getElementById("authority").value;
    note = document.getElementById("note").value;
    $.ajax({
        url: "../user/TeaChange.action",
        data: {
            name: name,
            password: password,
            sex: sex,
            age: age,
            department: department,
            profession: profession,
            authority: authority,
            note: note
        },
        type: "post",
        dateType: "json",
        success: function (data) {
            alert("修改成功，请刷新查看");
        }
    })
}

function signOut() {

    $.ajax({
        url: "../user/signOut.action",
        type: "post",
        dateType: "json",
        success: function (data) {
            self.location = "../index.jsp";
        }
    })
}


function SetQstCont(str, name) {
    document.getElementById(name).innerHTML = str;
    document.getElementById(name).value = str;
    if ("选择题" == str) {
        var qstCont = "";
        qstCont += "<label class='control-label' for='qstContent'>请输入题干</label>"
            + "<div class='controls'><input id='qstContent' type='text' /></div>"
            + "<label class='control-label' for='questionAnswerA'>A</label>"
            + "<div class='controls'><input id='questionAnswerA' type='text' /></div>"
            + "<label class='control-label' for='questionAnswerB'>B</label>"
            + "<div class='controls'><input id='questionAnswerB' type='text' /></div>"
            + "<label class='control-label' for='questionAnswerC'>C</label>"
            + "<div class='controls'><input id='questionAnswerC' type='text' /></div>"
            + "<label class='control-label' for='questionAnswerD'>D</label>"
            + "<div class='controls'><input id='questionAnswerD' type='text' /></div>"
            + "<label class='control-label' for='questionAnswer'>答案</label>"
            + "<div class='controls'><input id='questionAnswer' type='text' /></div>";
        document.getElementById("questionContent").innerHTML = qstCont;
    } else if ("计算题" == str) {
        var qstCont = "";
        qstCont += "<label class='control-label' for='qstContent'>请输入题干</label>"
            + "<div class='controls'><input id='qstContent' type='text' /></div>"
            + "<label class='control-label' for='questionAnswer'>答案</label>"
            + "<div class='controls'><input id='questionAnswer' type='text' /></div>";
        document.getElementById("questionContent").innerHTML = qstCont;
    }
}

function addQst(){
    questionType = document.getElementById("addQuestionType").value;
    if(questionType != "选择题" && questionType != "计算题") {
        alert("请选择试题类型");
    }
    profession = document.getElementById("addProfession").value;
    if(profession == null || profession == "") {
        alert("专业未填充，请补充");
    }
    degreeOfDifficulty = document.getElementById("addDegreeOfDifficulty").value;
    if(profession == null || profession == "") {
        alert("难易程度未填充，请补充");
    }
    questionScore = document.getElementById("addQuestionScore").value;
    if(profession == null || profession == "") {
        alert("分数未填充，请补充");
    }
    teacherId = document.getElementById("addTeacherId").value;
    if(profession == null || profession == "") {
        alert("教师ID未填充，请补充");
    }
    note = document.getElementById("addNote").value;
    if(profession == null || profession == "") {
        alert("备注未填充，请补充");
    }
    questionAnswer = document.getElementById("questionAnswer").value;
    if(profession == null || profession == "") {
        alert("答案未填充，请补充");
    }
    var questionContent = "";
    if ("选择题" == questionType) {
        questionContent += "<h3>题干</h3><h4>"
            + document.getElementById("qstContent").value + "</h4>选项↓<hr/><p>A."
            + document.getElementById("questionAnswerA").value + "</p><p>B."
            + document.getElementById("questionAnswerB").value + "</p><p>C."
            + document.getElementById("questionAnswerC").value + "</p><p>D."
            + document.getElementById("questionAnswerD").value + "</p>"
    } else if ("计算题" == questionType) {
        questionContent += "<label class='control-label' for='qstContent'>题干</label>"
            + "<div class='controls'><input id='qstContent' type='text' value='"
            + document.getElementById("qstContent").value + "' /></div>";
    }

    $.ajax({
        url: "../qst/SaveQuestion.action",
        data : {
            profession : profession,
            questionType : questionType,
            degreeOfDifficulty : degreeOfDifficulty,
            questionContent : questionContent,
            questionScore : questionScore,
            questionAnswer : questionAnswer,
            teacherId : teacherId,
            note : note
        },
        type: "post",
        dateType: "json",
        success: function (data) {
            if(data.id > 0)
                alert("添加成功" );
        }
    })
}


