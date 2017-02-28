var isName =/^[0-9a-zA-Z \u4E00-\u9FA5]+$/;
var isIdNum =/^[0-9]+$/;
var isPhone =/^[0-9]{11}$/;
$("#reg_btn").click(function(){
    "use stirct";
    $("#usr_name_div").attr("class","input-group");
    $("#usr_pwd_div").attr("class","input-group");
    $("#usr_secpwd_div").attr("class","input-group");
    $("#usr_idNum_div").attr("class","input-group");
    $("#usr_phone_div").attr("class","input-group");
    $("#wrn_name").hide();
    $("#wrn_pwd").hide();
    $("#wrn_secpwd").hide();
    $("#wrn_idNum").hide();
    $("#wrn_phone").hide();

    var usr_name = $("#usr_name").val() ;
    var usr_idNum = $("#usr_idNum").val() ;
    var usr_phone = $("#usr_phone").val() ;

    if($("#usr_name").val() === ""){
        $("#usr_name_div").attr("class","input-group has-warning");
        $("#wrn_name").text("输入姓名不能为空");
        $("#wrn_name").show();
    }
    else if(!usr_name.match(isName)){
        $("#usr_name_div").attr("class","input-group has-warning");
        $("#wrn_name").text("输入姓名含有非法字符");
        $("#wrn_name").show();
    }
    else if($("#usr_pwd").val() !== $("#usr_secpwd").val()){
        $("#usr_secpwd_div").attr("class","input-group has-warning");
        $("#wrn_secpwd").text("两次密码输入不一致");
        $("#wrn_secpwd").show();
    }
    else if($("#usr_idNum").val() === ""){
        $("#usr_idNum_div").attr("class","input-group has-warning");
        $("#wrn_idNum").text("输入身份证号不能为空");
        $("#wrn_idNum").show();
    }
    else if(!usr_idNum.match(isIdNum)){
        $("#usr_idNum_div").attr("class","input-group has-warning");
        $("#wrn_idNum").text("输入身份证有非法字符");
        $("#wrn_idNum").show();
    }
    else if($("#usr_phone").val() === ""){
        $("#usr_phone_div").attr("class","input-group has-warning");
        $("#wrn_phone").text("输入手机号码不能为空");
        $("#wrn_phone").show();
    }
    else if(!usr_phone.match(isPhone)){
        $("#usr_phone_div").attr("class","input-group has-warning");
        $("#wrn_phone").text("输入电话号码有错误");
        $("#wrn_phone").show();
    }
    else {
        $.ajax({
            url:"editAccount",
            type:"POST",
            dataType:"json",
            data:{
                id:$("#useID").val(),
                name:$("#usr_name").val(),
                password:$("#usr_pwd").val(),
                idNum:$("#usr_idNum").val(),
                phone:$("#usr_phone").val()
            },
            success: function(msg){
                if(msg["result"] == "nameExist"){
                    $("#usr_name_div").attr("class","input-group has-warning");
                    $("#wrn_name").text("输入姓名已存在,建议名字+数字");
                    $("#wrn_name").show();
                }
                else if(msg["result"] == "idNumExist"){
                    $("#usr_idNum_div").attr("class","input-group has-warning");
                    $("#wrn_idNum").text("输入身份证号已存在");
                    $("#wrn_idNum").show();
                }
                else if(msg["result"] == "insertSuccess")
                    alert("修改成功");
                else if(msg["result"] == "insertFault")
                    alert("修改失败");
            },
            error: function(){
                alert ("caocaocao");
            }

        });
    }
});


(function(){
    var userID = $("#useID").val();

    if(userID == null)
    {
        alert("数据错误");
        window.location.href = "/userManagement";
    }

    $.ajax({
        url:"getUser",
        type:"POST",
        dataType:"json",
        data:{
            id:userID
        },
        success: function(msg)
        {
            $("#usr_name").val(msg["name"]);
            $("#usr_idNum").val(msg["idNum"]);
            $("#usr_phone").val(msg["phone"]);
        }
    });
})();