
//代表这里面有多少个图片需要轮播
var num = 8;
//代表要滑动的div块的原型对象
function slider(id) {
	//保存代表id所指向的元素
	this.e = document.getElementById(id);
	//获取拥有图片的div
	var picDiv = this.e.getElementsByClassName("slider-content");
	var picPanels = picDiv[0].getElementsByClassName("slider-panel");
	//div图像
	this.picPanels = new Array;
	for(var i in picPanels) {
		if( typeof picPanels[i] === "object") {
			this.picPanels[i] = new div(picPanels[i]);
		}
	}
	//当前显示的div
	this.currentPosition = 0;
	//下一个需要显示的div
	this.nextPosition = 1;
}

//开始循环切换
slider.prototype.start = function() {
	intervalId = setInterval(this.showNext, 4000, this);
	console.log('intervalId:' + intervalId);
}

//显示下一个
slider.prototype.showNext = function(obj) {
	//当前显示的div对象
	var currentObj = obj.picPanels[obj.currentPosition];
	//下一个需要显示的div对象
	var nextObj = obj.picPanels[obj.nextPosition];
	//设置下一个要显示的对象的z-index属性为2
	nextObj.style["z-index"] = 2;
	//下一个对象的display属性
	nextObj.style["display"] = "block";
	nextObj.style["opacity"] = 0;
	//设置当前的图片的style属性
	currentObj.style["z-index"] = 1;
//	currentObj.style["display"] = "none";
	currentObj.e.setAttribute("style", currentObj.getStyle());
	//设置当前的属性
//	nextObj.style["z-index"] = 1;
	//接下来nextObj的opacity的属性要从0到1切换
	for(var i = 0; i < 100; i++) {
		setTimeout(function() {
			//增长的步长
			var step = 1 / 100;
			nextObj.style["opacity"] += step;
			//获取此时的属性
			var style = nextObj.getStyle();
			// console.log("style:" + style + "\tcurrentObj-before:" + currentObj.getStyle());
			nextObj.e.setAttribute("style", style);
			//如果此时这个图片的opacity属性切换到了1的动作
			if( nextObj.style["opacity"] >= 1) {
				// console.log("opacity > 1");
				currentObj.style["z-index"] = 0;
				currentObj.style["display"] = "none";
				// console.log("currentObj:" + currentObj.getStyle());
				//设置当前的属性
				nextObj.style["z-index"] = 1;
				// console.log("nextObj:" + nextObj.getStyle());
				currentObj.e.setAttribute("style", currentObj.getStyle());
				//更改游标的位置
				obj.currentPosition = obj.nextPosition;
				obj.nextPosition = (++obj.nextPosition) % num;
				// console.log("nextPosition:" + obj.nextPosition);
				isPrev = true;
				isNext = true;
			}
			//如果设置一样的话那么就体现不出来改变透明度的效果，因为两个setTimeout函数
			//的调用间隔相差很小，所以改变透明度的函数相差间隔也很小
		}, i * 20);
	}

}

//定义一个对象代表每个图片div对象
function div(obj) {
	//this.e保存div对象
	this.e = obj;
	//这个对象的style数组
	this.style = new Array;
	this.style["z-index"] = 0;
	this.style["display"] = "none";
	this.style["opacity"] = 0;
	this.style["background"] = "";
}

//获取div对象的属性
div.prototype.getStyle = function() {
	var s = "z-index: " + this.style["z-index"] + "; display: " + this.style["display"] + 
	"; ";
	if( this.style["z-index"] === 2) {
		s += "opacity: " + this.style["opacity"];
	}
	return s;
}

//当页面加载完成的时候创建对象，否则document未创建完成
window.onload = function() {
	div = new slider("slider");
	//设置第一个图像的内容
	var firstDiv = div.picPanels[0];
	firstDiv.style["z-index"] = 1;
	firstDiv.style["display"] = "block";
	//图片开始切换
	div.start();
}

//判断当前是否可以点击
var isPrev = true;
var isNext = true;

//显示前一张图片
function prev() {

	if( !isPrev ) 
		return;
	isPrev = false;
	isNext = false;
	//先清除循环播放
	window.clearInterval(intervalId);
	var currentPosition = div.currentPosition;
	var nextPosition = currentPosition - 1;
	if( nextPosition < 0 ) {
		div.nextPosition = num - 1;
	} else {
		div.nextPosition = nextPosition;
	}
	console.log("prev:" + div.currentPosition + "\t" + div.nextPosition);
	// console.log('div:' + div + '\tnextPosition:' + div.nextPosition);
	div.showNext(div);
	//开始循环播放
	div.start();
}


//显示后一张图片
function next() {
	if( !isPrev ) 
		return;
	isPrev = false;
	isNext = false;
	window.clearInterval(intervalId);
	var currentPosition = div.currentPosition;
	var nextPosition = (currentPosition + 1) % num;
	div.nextPosition = nextPosition;
	console.log("next:" + div.currentPosition + "\t" + div.nextPosition);
	div.showNext(div);
	div.start();
}
