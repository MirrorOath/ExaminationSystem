window.onload = function() {
    str = "";
    str += "<div class='container-fluid'><div class='row-fluid'>"
            + "<div class='span12'><div class='navbar navbar-inverse'>"
            + "<div class='navbar-inner'><div class='container-fluid'>"
            + "<a data-target='.navbar-responsive-collapse' "
            + "data-toggle='collapse' class='btn btn-navbar'>"
            + "<span class='icon-bar'></span> <span class='icon-bar'></span>"
            + "<span class='icon-bar'></span></a>"
            + "<a href='../index.html' class='brand'>餐饮业管理系统</a>"
            + "<div class='nav-collapse collapse navbar-responsive-collapse'>"
            + "<ul class='nav'>"
            + "<li class='active'><a href='../index.html'>主页</a></li>"
            + "<li class='dropdown'>"
            + "<a data-toggle='dropdown' class='dropdown-toggle' href='#'>前台管理"
            + "<strong class='caret'></strong></a>"
            + "<ul class='dropdown-menu'>"
            + "<li><a href='../frontOfficeMmt/mealMmt.html'>用餐管理</a></li>"
            + "<li><a href='../frontOfficeMmt/mealStsts.html'>用餐统计</a></li>"
            + "<li><a href='../frontOfficeMmt/mealStsts.html'>用餐账目查询</a></li>"
            + "<li><a href='../frontOfficeMmt/itemMmt.html'>物品管理</a></li>"
            + "</ul></li>"
            + "<li class='dropdown'>"
            + "<a data-toggle='dropdown' class='dropdown-toggle' href='#'>菜单管理"
            + "<strong class='caret'></strong></a>"
            + "<ul class='dropdown-menu'>"
            + "<li><a href='../menuMmt/recipeSettings.html'>菜谱设置</a></li>"
            + "</ul></li>"
            + "<li class='dropdown'>"
            + "<a data-toggle='dropdown' class='dropdown-toggle' href='#'>原料管理"
            + "<strong class='caret'></strong></a>"
            + "<ul class='dropdown-menu'>"
            + "<li><a href='../stapleMmt/stapleMmt.html'>采购/消耗登记</a></li>"
            + "<li><a href='../stapleMmt/stapleView.html'>原料查看</a></li>"
            + "</ul></li>"
            + "<li class='dropdown'>"
            + "<a data-toggle='dropdown' class='dropdown-toggle' href='#'>雇员管理"
            + "<strong class='caret'></strong></a>"
            + "<ul class='dropdown-menu'>"
            + "<li><a href='../employeeMmt/employeeAttendance.html'>人员登记</a></li>"
            + "<li><a href='../employeeMmt/employeeSettings.html'>雇员管理</a></li>"
            + "</ul></li>"
            + "</ul>"
            + "<ul class='nav pull-right'>"
            + "<li><a id='userName'></a></li>"
            + "<li class='dropdown'>"
            + "<a data-toggle='dropdown'"
            + "class='dropdown-toggle' href='#'>系统"
            + "<strong class='caret'></strong></a>"
            + "<ul class='dropdown-menu'>"
            + "<li><a href='../employeeMmt/employeeSettings.html'>用户添加</a></li>"
            + "<li><a href='../employeeMmt/employeeSettings.html'>用户修改删除</a></li>"
            + "<li><a href='../systemMmt/allCurdMmt.html'>超级权限查看表</a></li>"
            + "</ul></li></ul>" + "</div></div></div></div></div></div></div>";
    document.getElementById("navigationBar").innerHTML = str;

    $
            .ajax({
                url : "../system/getUser.action",
                type : "post",
                dateType : "json",
                success : function(data) {
                    if (data.success == true) {
                        document.getElementById("userName").innerHTML = "欢迎您："
                                + data.name;
                        str = "";
                        str += "<div class='container-fluid'><div class='row-fluid'><div class='span12'>"
                                + "<div class='carousel slide' id='carousel-302690'><ol class='carousel-indicators'>"
                                + "<li class='active' data-slide-to='0' data-target='#carousel-302690'></li>"
                                + "<li data-slide-to='1' data-target='#carousel-302690'></li>"
                                + "<li data-slide-to='2' data-target='#carousel-302690'></li></ol>"
                                + "<div class='carousel-inner'><div class='item active'>"
                                + "<img alt='' src='../img/1.jpg' /><div class='carousel-caption'>"
                                + "<h4>美食</h4><p>美食即刻享</p></div></div><div class='item'>"
                                + "<img alt='' src='../img/2.jpg' /><div class='carousel-caption'>"
                                + "<h4>美食</h4><p>美食即刻享</p></div></div><div class='item'>"
                                + "<img alt='' src='../img/3.jpg' /><div class='carousel-caption'>"
                                + "<h4>美食</h4><p>美食即刻享</p></div></div>"
                                + "</div> <a data-slide='prev' href='#carousel-302690' class='left carousel-control'>‹</a>"
                                + "<a data-slide='next' href='#carousel-302690' class='right carousel-control'>›</a>"
                                + "</div></div></div></div>";
                        document.getElementById("signInDiv").innerHTML = str;
                    } else {
                        str = "";
                        str += "<div class='container-fluid'><div class='row-fluid'>"
                                + "<div class='span12'><div class='row-fluid'><div class='span4'></div>"
                                + "<div class='span4'><div class='control-group'>"
                                + "<label class='control-label' for='inputName' >用户名</label>"
                                + "<div class='controls'><input id='inputName' type='text' /></div></div>"
                                + "<div class='control-group'><label class='control-label' for='inputPassword'>密码</label>"
                                + "<div class='controls'><input id='inputPassword' type='password' /></div></div>"
                                + "<div class='control-group'><div class='controls'>"
                                + "<button onclick='signIn()' type='submit' class='btn'>登陆</button></div></div></div>"
                                + "<div class='span4'></div></div></div></div></div>";
                        document.getElementById("signInDiv").innerHTML = str;
                    }
                }
            })

    $.ajax({
        url : "../special/conBase.action",
        data : {},
        type : "post",
        dateType : "json",
        success : function(data) {
        }
    })

}