
function signIn(){
    var name = document.getElementById("inputName").value;
    var password = document.getElementById("inputPassword").value;
    $.ajax({
        url : "../system/signIn.action",
        data : {
            name : name,
            password : password
        },
        type : "post",
        dateType : "json",
        success : function(data) {
            if(data == true)
                alert("登陆成功");
            else
                alert("登陆失败");
        }
    })
    
    
    $.ajax({
        url : "../system/getUser.action",
        type : "post",
        dateType : "json",
        success : function(data) {
            if (data.success) {
                document.getElementById(name).innerHTML = data.name;
            } else {

            }
        }
    })
}
