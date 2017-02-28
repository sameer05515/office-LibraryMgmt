$.ajax({
	url:"test",
	type:"POST",
	dataType:"json",
	data:
	{
		id:8
	},
	success: function(msg)
	{
		alert(msg["isbn"]);
	},
	error: function()
	{
		alert("草泥马");
	}
});