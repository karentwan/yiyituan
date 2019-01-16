/////////////////////brief页面的js///////////////////////////

//将li标签跟div做映射
(function() {

	//代表映射的对象
	var obj = {};

	//记录上一次点击的div游标
	obj.oldI = 0;
	//记录此时的div的游标
	obj.nowI = 0;

	//通过li标签获取div
	obj.getDiv = function(li) {
		for(var i in this.li) {
			if(this.li[i] === li) {
				console.log(i);
				//记录此时的i
				this.nowI = i;
				return obj.divs[i];
			}
		}
		return null;
	}

	//左边的li标签点击的click事件
	var clickEvent = function() {
		if(obj.li[obj.oldI] === this)
			return;
		var div = obj.getDiv(this);
		var clazz = div.getAttribute('class');
		var str = clazz.split(" ");
		//设置原来的div的class属性为隐藏
		var oldDiv = obj.divs[obj.oldI];
		oldDiv.setAttribute('class', oldDiv.getAttribute('class') +" "+ str[1]);
		div.setAttribute('class', str[0]);
		//根据当前显示的内容更改content的style属性
		var content = document.getElementsByClassName('content')[0];
		console.log('offsetHeight:' + div.offsetHeight);		
		//content.style.height = div.offsetHeight + 80;
		var offsetHeight = div.offsetHeight + 80;
		if( offsetHeight < 420) {
			content.setAttribute('style', 'height: ' + 420 + 'px');
	
		} else {
			content.setAttribute('style','height: '+ offsetHeight + 'px');
		}
		//更新游标
		obj.oldI = obj.nowI;
	}
	//初始化obj对象，并映射
	var reflect = function() {
		//获取所有的li标签
		var lis = document.getElementById("subnav").getElementsByTagName('li');
		obj.li = new Array;
		for(var i in lis) {
			if(typeof lis[i] === 'object') {
				obj.li[i] = lis[i];
				if( obj.li[i].addEventListener) {
					obj.li[i].addEventListener("click", clickEvent);
				} else {
					obj.li[i].attachEvent('onclick', clickEvent);			
	
				}
			}
		}
		//添加div数组
		obj.divs = new Array;
		var divs = document.getElementsByClassName("content_r")[0].getElementsByTagName('div');
		for(var i in divs) {
			if( typeof divs[i] === 'object') {
				obj.divs[i] = divs[i];
			}
		}
	}
	if( window.addEventListener ) {
		window.addEventListener("load", reflect);
	} else {
		window.attachEvent('onload', reflect);
	}
})();
