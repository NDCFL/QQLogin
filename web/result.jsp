<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-10-31
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="javascript:void(0);" onclick="getOpenId();">获取openid</a>
<a href="javascript:void(0);" onclick="getInfo();">获取用户信息</a>
</body>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101433623" data-redirecturi="http://localhost:8080/result.jsp" charset="utf-8"></script>
<script>
    function getOpenId() {
        QC.Login.getMe(function(openId, accessToken){
            alert(openId);
            alert(accessToken);
        })
    }
    function  getInfo() {
        QC.api("get_user_info", {})
            .success(function(s){
                alert("获取用户信息成功！当前用户昵称为："+s.data.nickname);
            })
            .error(function(f){
                alert("获取用户信息失败！");
            })
            .complete(function(c){
                alert("获取用户信息完成！");
            });
    }
</script>
</html>
