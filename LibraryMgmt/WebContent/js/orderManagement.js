// JavaScript Document

var searching = false;

(function(){
    "use strict";
    search();
})();

//显示表格函数
function assemble(all_info) {
    "use strict";
    var full_info = "";

    $.each(all_info, function (i, data) {
        var vipType;
        var lt = new Date(data["lendTime"]);
        var rt = new Date(data["rtrnTime"]);
        var person = "<tr><th class='text-right'>" +
            data["id"] + "</th><td>" +
            data["bookId"] + "</td><td>" +
            data["userId"] + "</td><td>" +
            (lt.getYear()+1900)+"/"+lt.getMonth()+"/"+lt.getDay()+" "+lt.getHours()+":"+lt.getMinutes()+":"+lt.getSeconds() + "</td><td>" +
            (rt.getYear()+1900)+"/"+rt.getMonth()+"/"+rt.getDay()+" "+rt.getHours()+":"+rt.getMinutes()+":"+rt.getSeconds() + "</td><td>" +
            data["state"] + "</td></tr>";
        full_info += person;
    });
    $("#order_table tbody").html(full_info);
    $("#order_table").show();
}


//处理回传数据
function showItMTFK(all_info)
{
    "use strict";

    if((all_info.length === 0))
    {
        $("#book_table").hide();
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

    $.ajax({
        url:"searchOrder",
        type:"POST",
        dataType:"json",
        data:{
        },
        success: function(msg){
            showItMTFK(msg);
        },
        error: function(msg){
            alert(msg);
        }
    });
}

//编辑页面跳转
function toEditPage(id)
{
    "use strict";
    window.location.href="EditBook?id="+id;
}
