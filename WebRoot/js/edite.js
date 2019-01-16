/****************************提示********************************
 * 这个editr.html里面的js
 *****************************************************************/
 /**
  * select标签的onchanges事件
  */
 function selectChangeEvent() {
 	var select = document.getElementsByTagName('select')[0];
	//获取里面select的文章里面的option
	var options = select.options;
	//获取当前选中的元素
	var value = options[options.selectedIndex].value;
	var text  = options[options.selectedIndex].text;
	// console.log(value);
	// console.log(text);
	//获取要更改action的表单
	var form = document.getElementsByTagName('form')[0];
	// console.log('url:'+config.url[value]);
	//设置form表单的action
	form.setAttribute('action', config.url[value]);
	//改变按钮的文本
	var btn = form.getElementsByClassName('btn')[0];
	btn.setAttribute('value', "发表" + text);
}


	/**
     * 表单里面的按钮的submit事件
     */
    function sub() {
      //获取表单
      var form = document.getElementsByTagName('form')[0];
      //获取标题
      var titleStr = document.getElementById('ti').value;
      //获取正文内容的内容
      var contentStr = getContent();
      //将标题追加到隐藏域 
      var title = document.getElementById('title');
      title.setAttribute('value', titleStr);
      //将内容追加到隐藏域
      var content = document.getElementById('content');
      content.setAttribute('value', contentStr);
      //提交表单到后台
      form.submit();
    }


/**
 * 获取ueditor的内容
 */
function getContent() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContent());
    // alert(arr.join("\n"));
    return arr.join("\n");
}