// JavaScript Document

var searching = false;
var to_delete = "";
var delete_used = false;

(function(){
    "use strict";
})();

$("#search_btn").click(function(){
    "use strict";
    search();
});

//显示表格函数
function assemble(all_info) {
    "use strict";
    var full_info = "";

    $.each(all_info, function (i, data) {
        var vipType;
        switch(data["vip"])
        {
            case 0:
                vipType = "超级读者";
                break;
            case 1:
                vipType = "高级读者";
                break;
            case 2:
                vipType = "普通读者";
                break;
        }
        var person = "<tr><th class='text-right'>" +
            data["id"] + "</th><td>" +
            data["name"] + "</td><td>" +
            data["phone"] + "</td><td>" +
            data["idNum"] + "</td><td>" +
            vipType + "</td><td>" +
            data["lendTimes"] + "</td><td>" +
            data["overTimes"] + "</td><td>" +
            "<button class='btn btn-default btn-xs' data-container='body' onclick=\"javascript:toEditPage('" + data["id"] + "')\">" +
            "<span class='glyphicon glyphicon-edit'></span></button>&nbsp;" +
            "<button class='btn btn-default btn-xs' data-container='body' onclick=\"javascript:delPerson('" + i + "')\">" +
            "<span class='glyphicon glyphicon-trash'></span></button></td></tr>";
        full_info += person;
    });
    $("#reader_table tbody").html(full_info);
    $("#reader_table").show();
}


//处理回传数据
function showItMTFK(all_info)
{
    "use strict";

    if((all_info.length === 0))
    {
        $("#info_table").hide();
        $("#no_result").show();
    }
    else
    {
        $("#no_result").hide();
        assemble(all_info);
    }
    searching = false;
}

//搜索数据
function search()
{
    "use strict";
    if(searching)
    {
        return;
    }

    var select_vip = $("#select_vip").val();
    var reader_id = $("#reader_id").val();
    var reader_name = $("#reader_name").val();
    $.ajax({
        url:"searchUser",
        type:"POST",
        dataType:"json",
        data:{
            vip:select_vip,
            id:reader_id,
            name:reader_name
        },
        success: function(msg){
            showItMTFK(msg);
        },
        error: function(msg){
            alert(msg);
        }
    });
}

//删除确认
$("#delete_confirm").click(function(){
    if(!delete_used)
    {
        delete_used = true;
        $("#delete_dismiss").remove();
        $("#delete_confirm").attr("disabled","true");
        $("#delete_confirm").text("删除中,请稍候...");
        $.ajax({
            url:"deleteUser",
            type:"POST",
            data:{
                id:to_delete
            },
            success: function(msg){
               switch(msg["result"])
               {
                   case "SUCCESS":
                       $("#delete_msg").text("删除完成!");
                       $("#delete_confirm").text("完成");
                       $("#delete_confirm").attr("class","btn btn-success");
                       $("#delete_confirm").removeAttr("disabled");
                       break;
                   case "FAILED":
                        $("#delete_msg").text("删除失败!");
                        $("#delete_confirm").text("确认");
                        $("#delete_confirm").attr("class","btn btn-default");
                        $("#delete_confirm").removeAttr("disabled");
                        break;
                }
            },
            error: function()
            {
                $("#delete_msg").text("连接错误!");
                $("#delete_confirm").text("确认");
                $("#delete_confirm").attr("class","btn btn-default");
                $("#delete_confirm").removeAttr("disabled");
            }
        });
    }
    else
    {
        window.location.reload();
    }
});



//删除人员
function delPerson(num)
{
    "use strict";
    to_delete = $("#reader_table tbody tr:eq("+num+") th:eq(0)").text();
    $("#del_num").text(to_delete);
    $("#del_name").text($("#reader_table tbody tr:eq("+num+") td:eq(0)").text());
    $("#delete_modal").modal({backdrop: 'static', keyboard: false});
}

//编辑页面跳转
function toEditPage(id)
{
    "use strict";
    window.location.href="userEditPage?id="+id;
}
