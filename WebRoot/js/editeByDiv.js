/**********************初始化弹出对话框********************/

/**
 * 初始化div对话框
 */
function initDialog() {
	var div = document.getElementsByClassName('dialog')[0];
	var select = div.getElementsByTagName('select')[0];
	removeElements(select);
	console.log('div:' + div);
	var content = null;	
	//获取分类的select
	var selectNav = document.getElementsByTagName('select')[0];
	switch( selectNav.options[selectNav.options.selectedIndex].value) {
		case 'dynamic'   :
			content = config.dynamic;
			break;
		case 'innovation':
			content = config.innovation;
			break;
		case 'awards'    :
			content = null;
			break;
		default          :
			content = config.dynamic;
			break;
	}
	//如果此时是发表创新的
	if( content == null) {
		select.setAttribute('style', 'display:none');
		
	} else {
		select.removeAttribute('style');
		for(var i = 0; i < content.length; i++) {
			var option = document.createElement('option');
			console.log(content[i]);
			option.text = content[i].text;
			option.setAttribute('value', content[i].value);
			select.appendChild(option);
		}
	}
	
}

/**
 * 删除元素节点
 */
function removeElements(obj) {
	var options = obj.options;
	console.log("length:" + options.length);
	var tempOptions = new Array;
	for(var i = 0; i < options.length; i++) {
		// obj.removeChild(options[i]);
		tempOptions[i] = options[i];
		console.log("i:" + i);
	}
	//删除select下面的所有option
	for(var i = 0; i < tempOptions.length; i++) {
		obj.removeChild(tempOptions[i]);
	}
}

/**
 * 显示对话框
 */
function showDialog() {
	initDialog();
	var div = document.getElementsByClassName('dialog')[0];
	div.setAttribute('style', "display: block");
	div.focus();
}

/**
 * 关闭对话框
 */
function closeDialog() {
	var div = document.getElementsByClassName('dialog')[0];
	div.setAttribute('style', "display: none");
}


 /**
 * 表单里面的按钮的submit事件
 */
function subByTag() {
	  //获取表单
	  var form = document.getElementsByTagName('form')[0];
	  //获取标题
	  var titleStr = document.getElementById('ti').value;
	  //获取正文内容的内容
	  var contentStr = getContent();
	  if( !titleStr || !contentStr) {
		  alert("内容或标题不能为空！");
		  return;
	  }
	  
	  //获取标签内容
	  // var tagStr = document.getElementById('')
	  //将标题追加到隐藏域 
	  var title = document.getElementById('title');
	  title.setAttribute('value', titleStr);
	  //将内容追加到隐藏域
	  var content = document.getElementById('content');
	  content.setAttribute('value', contentStr);
	  //将选中的标签加到隐藏域
	  var selectTag = document.getElementsByClassName('dialog-content')[0].getElementsByTagName('select')[0];
	  console.log("select: " + selectTag.options[selectTag.options.selectedIndex]);
	  var selectNav = document.getElementsByTagName('select')[0];
	  if( selectNav.options[selectNav.options.selectedIndex].value != 'awards') {
		  var tag = selectTag.options[selectTag.options.selectedIndex].value;
		  console.log('tag' + tag);
		  var tagId = document.getElementById('tag');
		  tagId.setAttribute('value',  tag);
	  }
	  form.submit();
}