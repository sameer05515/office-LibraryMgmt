/**
 * Created by wl on 2016/5/30.
 */
var isName =/^[0-9a-zA-Z \u4E00-\u9FA5]+$/;
var isPhone =/^[0-9]{11}$/;
var isEmail =/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
$("#adm_reg_btn").click(function(){
    "use stirct";
    $("#adm_nickname_div").attr("class","input-group");
    $("#adm_email_div").attr("class","input-group")
    $("#adm_name_div").attr("class","input-group");
    $("#adm_pwd_div").attr("class","input-group");
    $("#adm_secpwd_div").attr("class","input-group");
    $("#adm_phone_div").attr("class","input-group");
    $("#wrn_nickname").hide();
    $("#wrn_email").hide();
    $("#wrn_name").hide();
    $("#wrn_pwd").hide();
    $("#wrn_secpwd").hide();
    $("#wrn_idNum").hide();
    $("#wrn_phone").hide();

    var adm_name = $("#adm_name").val() ;
    var adm_email = $("#adm_email").val() ;
    var adm_idNum = $("#adm_idNum").val() ;
    var adm_phone = $("#adm_phone").val() ;

    if($("#adm_nickname").val() === ""){
        $("#adm_nickname_div").attr("class","input-group has-warning");
        $("#wrn_nickname").text("输入昵称不能为空");
        $("#wrn_nickname").show();
    }
    else if($("#adm_email").val() === ""){
        $("#adm_email_div").attr("class","input-group has-warning");
        $("#wrn_email").text("输入邮箱不能为空");
        $("#wrn_email").show();
    }
    else if(!adm_email.match(isEmail)){
        $("#adm_email_div").attr("class","input-group has-warning");
        $("#wrn_email").text("输入邮箱格式不正确");
        $("#wrn_email").show();
    }
    else if($("#adm_name").val() === ""){
        $("#adm_name_div").attr("class","input-group has-warning");
        $("#wrn_name").text("输入姓名不能为空");
        $("#wrn_name").show();
    }
    else if(!adm_name.match(isName)){
        $("#adm_name_div").attr("class","input-group has-warning");
        $("#wrn_name").text("输入邮箱格式不正确");
        $("#wrn_name").show();
    }
    else if($("#adm_pwd").val() === ""){
        $("#adm_pwd_div").attr("class","input-group has-warning");
        $("#wrn_pwd").text("输入密码不能为空");
        $("#wrn_pwd").show();
    }
    else if($("#adm_pwd").val() !== $("#adm_secpwd").val()){
        $("#adm_secpwd_div").attr("class","input-group has-warning");
        $("#wrn_secpwd").text("两次密码输入不一致");
        $("#wrn_secpwd").show();
    }
    else if($("#adm_phone").val() === ""){
        $("#adm_phone_div").attr("class","input-group has-warning");
        $("#wrn_phone").text("输入手机号码不能为空");
        $("#wrn_phone").show();
    }
    else if(!adm_phone.match(isPhone)){
        $("#adm_phone_div").attr("class","input-group has-warning");
        $("#wrn_phone").text("输入电话号码有错误");
        $("#wrn_phone").show();
    }

    else {
        $("#adm_reg_btn").attr("disabled","true");
        $.ajax({
            url:"newAdmin",
            type:"POST",
            dataType:"json",
            data:{
                nickname:$("#adm_nickname").val(),
                email:$("#adm_email").val(),
                name:$("#adm_name").val(),
                password:$("#adm_pwd").val(),
                phone:$("#adm_phone").val()
            },
            success: function(msg){
                $("#adm_reg_btn").removeAttr("disabled");
                if(msg["result"] == "nickNameExist"){
                    $("#adm_nickname_div").attr("class","input-group has-warning");
                    $("#wrn_nickname").text("输入昵称已存在");
                    $("#wrn_nickname").show();
                }
                else if(msg["result"] == "emailExist"){
                    $("#adm_email_div").attr("class","input-group has-warning");
                    $("#wrn_email").text("输入邮箱已存在");
                    $("#wrn_email").show();
                }
                else if(msg["result"] == "phoneExist"){
                    $("#adm_phone_div").attr("class","input-group has-warning");
                    $("#wrn_phone").text("输入手机号已存在");
                    $("#wrn_phone").show();
                }
                else if(msg["result"] == "insertSuccess"){
                    alert("注册成功");

                }
                else if(msg["result"] == "insertFault")
                    alert("注册失败");
            },
            error: function(msg){
                /*alert(msg);
                $.each(msg,function(i,data){
                    alert(data);
                });*/
                alert ("caocaocao");
            }

        });
    }
});