
function SetFirstStr(str, name) {
    document.getElementById(name).innerHTML = str;
    document.getElementById(name).value = str;
}

function YorN(type, name) {
    if (type == "yes") {
        document.getElementById(name).innerHTML = "是";
        document.getElementById(name).value = "0";
    } else if (type == "no") {
        document.getElementById(name).innerHTML = "否";
        document.getElementById(name).value = "-1";
    }
}
