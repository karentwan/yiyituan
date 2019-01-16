/////////////////创新项目异步访问数据并渲染///////////////////
(function (){
	var config = {
		url : './json/projectAction.action'
	};
	
	/**
	 * 根据json对象生成表格
	 */
	var generateTable = function( str ) {
		//字符串转对象
		var json = eval('(' + str + ')');
		var list = json.list;
		var data = '';
		for(var i in list) {
			// console.log(list[i]);
			var tr = '<tr';
			if( i % 2 == 0) 
				tr += ' class=\"style2\">';
			else 
				tr += ' class=\"style1\">';
			tr	   +='<td>' + list[i].name +    '</td>'   +
					 '<td>' + list[i].origin +  '</td>'   +
					 '<td>' + list[i].date +    '</td>'   +
					 '<td>' + list[i].charge +  '</td>'   +
					 '</tr>';
			data += tr;
		}
		return data;
	}
	
	var render = function(json, status) {
		//先隐藏content_r里面的内容
		$("div.content_r").hide();
		var data = generateTable(json);
		$("tbody.pro").html(data);
		//设置content的高度
		console.log($("div.content_b").height());
		var height = $("div.content_b").height();
		if( height < 425)
			height = 425;
		$("div.content").height(height + 60);
		$("div.content_b").show();
		$("div#subnav ul li").removeClass("here");
		//更改二级菜单的颜色
		$("p.project").parent().parent().attr("class", "here");
	}
	
	/**
	 * 二级菜单点击的事件
	 */
	var clickEvent = function() {
		$.get(config.url, render);
	};
	
	$(document).ready(function() {
		$("p.project").click( clickEvent );	
	});
})();