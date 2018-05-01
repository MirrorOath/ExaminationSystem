<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" charset="UTF-8" name="viewport"
    content="width=device-width, initial-scale=1.0">
<title>欢迎光临</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
    media="screen">

<script type="text/javascript">
    function conBase() {
        $.ajax({
            url : "special/conBase.action",
            data : {},
            type : "post",
            dateType : "json",
            success : function(data) {
            }
        })
    }
</script>

</head>

<body onload="conBase()">
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</body>

</html>