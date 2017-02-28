// JavaScript Document

var searching = false;

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
        switch(data["auth"])
        {
            case 0:
                vipType = "珍藏图书";
                break;
            case 1:
                vipType = "库本图书";
                break;
            case 2:
                vipType = "普通图书";
                break;
        }
        var person = "<tr><th class='text-right'>" +
            data["isbn"] + "</th><td>" +
            data["name"] + "</td><td>" +
            data["author"] + "</td><td>" +
            data["pressId"] + "</td><td>" +
            data["storage"] + "</td><td>" +
            data["count"] + "</td><td>" +
            data["rest"] + "</td><td>" +
            vipType + "</td><td>" +
            "<button class='btn btn-default btn-xs' data-container='body' onclick=\"javascript:toEditPage('" + data["id"] + "')\">" +
            "<span class='glyphicon glyphicon-edit'></span></button>&nbsp;"+"</td></tr>";
        full_info += person;
    });
    $("#book_table tbody").html(full_info);
    $("#book_table").show();
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

    var select_auth = $("#select_auth").val();
    var book_isbn = $("#book_isbn").val();
    var book_name = $("#book_name").val();
    $.ajax({
        url:"searchBook",
        type:"POST",
        dataType:"json",
        data:{
            auth:select_auth,
            isbn:book_isbn,
            name:book_name
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
