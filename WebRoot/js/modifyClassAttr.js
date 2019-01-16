/////////////////用来更改class属性/////////////////////

(function(id) {

	//普通对象，用来保存数据
	var obj = {};

	var init = function() {
		var div = document.getElementById(id);
		// console.log(div);
		obj.div = div;
		//获取div下面的所有li标签
		var lis = div.getElementsByTagName('li');
		// obj.lis = lis;
		var lisArray = new Array;
		//给所有的li标签注册监听器
		for(var i in lis) {
			if(typeof lis[i] === "object") {
				if( lis[i].addEventListener ) { 
					lis[i].addEventListener('click', clickEvent);
				} else {
					lis[i].attachEvent('onclick', function () { 
							var tempFun = (function( j ) {
										return function() { clickEvent1(lis[j]);};
									})(i);
						//	clickEvent(lis[i])
							tempFun();
						});

				}
				lisArray[i] = lis[i];
			}
		}
		obj.lis = lisArray;
	}

	//li标签的点击事件
	function clickEvent() {
		//先移除所以标签的class属性
		for(var i in obj.lis) {
			obj.lis[i].removeAttribute('class');
		}
		//给当前选中的元素添加class属性
		this.setAttribute('class', classAttr);
	}
	
	function clickEvent1( o ) {
		//先移除所以标签的class属性
		for(var i in obj.lis) {
			obj.lis[i].removeAttribute('class');
		}
console.log('o:' + o);
		//给当前选中的元素添加class属性
		o.setAttribute('class', classAttr);
	}
	

	window.onload = init;

})(id);
