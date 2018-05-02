

function getAdmInfo() {
    $.ajax({
        url: "../admin/getAdmInfo.action",
        type: "post",
        dateType: "json",
        success: function (data) {
            if (data.success) {
                document.getElementById("showName").value = data.name;
                document.getElementById("showAuthority").value = data.authority;
            } else {
                alert("登录已失效，请重新登录");
                self.location = "../index.jsp";
            }
        }
    })
    setTimeout('getAdmInfo()', 1000);
}


function getAdmInfoForChange() {
    $.ajax({
        url: "../admin/getAdmInfo.action",
        type: "post",
        dateType: "json",
        success: function (data) {
            if (data.success) {
                document.getElementById("name").value = data.name;
                document.getElementById("password").value = data.password;
                document.getElementById("authority").value = data.authority;
            } else {
                alert("登录已失效，请重新登录");
                self.location = "../index.jsp";
            }
        }
    })
}

function change() {
    name = document.getElementById("name").value;
    password = document.getElementById("password").value;
    authority = document.getElementById("authority").value;
    $.ajax({
        url: "../admin/change.action",
        data: {
            name: name,
            password: password,
            authority: authority
        },
        type: "post",
        dateType: "json",
        success: function (data) {
            alert("修改成功，请刷新查看");
            getAdmInfoForChange();
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



