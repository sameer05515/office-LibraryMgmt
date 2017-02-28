(function(){
    $.ajax({
        url:"getBook",
        type:"POST",
        dataType:"json",
        data: {
            id: $("#id").val()
        },
        success:function(msg)
        {
            $("#name").val(msg["name"]);
            $("#isbn").val(msg["isbn"]);
            $("#author").val(msg["author"]);
            $("#price").val(msg["price"]);
            $("#count").val(msg["count"]);
            $("#storage").val(msg["storage"]);
            $("#select_auth").val(msg["auth"]);
            $("#info").val(msg["info"]);

        }
    });

    $.ajax({
        url:"getCategoryByParentId",
        type:"POST",
        dataType:"json",
        data: {
            id: 0
        },
        success:function(msg)
        {
            var all_c0 = "";
            $.each(msg,function(i,data){
                all_c0 +="<option value='"+data["id"]+"'>"+data["code"]+"/"+data["name"]+"</option>";
            });
            $("#select_c0").append(all_c0);
        }
    });

    $.ajax({
        url:"getPresses",
        type:"POST",
        dataType:"json",
        success:function(msg)
        {
            var all_press = "";
            $.each(msg,function(i,data){
                all_press +="<option value='"+data["id"]+"'>"+data["name"]+"</option>";
            });
            $("#select_press").append(all_press);
        }
    });
})();

$("#select_c0").change(function(){
    $.ajax({
        url:"getCategoryByParentId",
        type:"POST",
        dataType:"json",
        data: {
            id: $("#select_c0").val()
        },
        success:function(msg)
        {
            var all_c1 = "";
            $.each(msg,function(i,data){
                all_c1 +="<option value='"+data["id"]+"'>"+data["code"]+"/"+data["name"]+"</option>";
            });
            $("#select_c1").html(all_c1);
        }
    });
});

$("#edit_btn").click(function(){
    $.ajax({
        url:"updateBook",
        type:"POST",
        dataType:"json",
        data: {
            name:$("#name").val(),
            isbn:$("#isbn").val(),
            pressId:$("#select_press").val(),
            typeId:$("#select_c1").val(),
            author:$("#author").val(),
            price:$("#price").val(),
            count:$("#count").val(),
            storage:$("#storage").val(),
            auth:$("#select_auth").val(),
            info:$("#info").val(),
        },
        success:function(msg){
            alert("修改成功");
            if(msg == "1"){
                window.location.href="BookManagement";
            }
        }
    })
});
