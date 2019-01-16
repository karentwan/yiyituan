<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
   	<title>简介-壹壹团</title>
	<meta name="author" content="万盛道">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief_right.css">
	<script type="text/javascript">
		//要更改的class属性名称
		var classAttr = 'here';
		//要更改的div的id
		var id = 'subnav';
	</script>
	<script src="${pageContext.request.contextPath}/js/init.js"></script>
	<script src="${pageContext.request.contextPath}/js/modifyClassAttr.js"></script>
	<script src="${pageContext.request.contextPath}/js/brief_right.js"></script>
	<!-- 修改输入框的宽度 -->
	<style>
		.logo .logo_r input.input {
			width: 416px;
			height: 28px;
		}
		
		.content_r p {
			text-indent: 2em;
		}
		 h2 {
			margin-bottom:8px; 
		}	
	</style>
	
  </head>
  
  <body>
  	<jsp:include page="nav.jsp" flush="true"/>
  	<div class="content" style="height: 587px">
			<h1>简介</h1>
			<!--左边二级菜单-->
			<div class="content_l" id="subnav">
				<ul>
					<li class="here"><a href="javascript:void(0)">团队简介</a></li>
					<li><a href="javascript:void(0)">软件开发</a></li>
					<li><a href="javascript:void(0)">硬件设计</a></li>
					<li><a href="javascript:void(0)">ACM</a></li>
					<li><a href="javascript:void(0)">信息安全</a></li>
				</ul>
			</div>
			<!--右边正文内容-->
			<div class="content_r">
				<!--团队简介-->
				<div class="union_brief">
					<h2>
						<span>
							团队简介
						</span>
					</h2>
					 <p>
2012年3月，杨词慧在南昌航空大学信息工程学院成立了创新团队，旨在为学生提供一个良好的学习平台，提高学生的学习兴趣，培养学生的创新和动手能力，并形成良好的学习风气，带动其他同学的学习。团队成立于3月11日，成立之初有队员11人，均来自110451班，因此将团队命名为壹壹团队。
				 	</p>
				 	<p>
壹壹团队现有在站队员41人，退役队员29人。队员来自不同专业（计算机科学与技术、电子信息科学与技术专业、电子信息工程、自动化、通信工程、网络工程、软件工程等）不同年级。团队下设有软件组、硬件组、ACM算法组和信息安全组，队员可以根据自己的兴趣爱好选择小组。团队定期举办各种专题讲座，内容涉及算法设计、软件编程、硬件开发、创新发明、竞赛辅导、计算机学科前沿知识等，以促进队员了解学习更多的知识。在此基础上，团队指导老师杨词慧指导队员参加各种课外创新实践项目和竞赛活动，通过鼓励学生多动手实践和参加竞赛的方式提高队员的动手能力和解决问题能力。同时，引导队员养成勤想新想法的习惯，通过定期举办的创新想法讨论，激发队员的创新灵感，培养队员的创新思维。
					 </p>
					 <p>
团队队员通过实践项目和比赛的学习、锻炼，创新能力和动手能力有了较大的提高，设计出了多项计算机软件、硬件作品，并在“挑战杯”全国大学生课外学术科技作品竞赛、ACM国际大学生程序设计竞赛、蓝桥杯全国软件和信息技术专业人才大赛、泛珠三角大学生计算机作品赛、全国大学生“飞思卡尔”杯智能汽车竞赛、全国大学生电子设计竞赛等多项比赛中取得了非常优异的成绩，2011级和2012级队员中有10人考上华中科技大学、厦门大学、电子科技大学、中国科技大学等学校的硕士研究生。团队队员的学习也带动了学校其他同学的学习兴趣，形成了一种良好的学习风气。
					 </p>
				</div>
				<!--app开发-->
				<div class="union_app hidden">
					<h2>
						<span>软件开发</span>
					</h2>
					<p>
软件组的主要学习方向为计算机软件开发。最为直观而实际的例子就是各类电脑应用程序和手机APP。
					</p>
					<p>
如果你喜欢玩游戏，你可以试试看自己做个飞行射击游戏或者探索一下RPG游戏中人物动态光影效果的奥秘；如果你喜欢看综艺或者动漫，你可以试试建立一个个人flash播放器，导入视频链接或文件就可以播放节目，而且还可以跳过那恼人的广告；或者你的志向足够远大，你可以试着搭建电影《钢铁侠》中贾维斯那样的操作系统。总之，软件组所学习的东西可以借助计算机完成很多奇奇怪怪的事情——只要你能想得到。
					</p>
					<p>
当然，学习软件开发不只是单纯为了实现自己奇奇怪怪的想法。软件组的成员们在学习之余，还关注着各大计算机比赛——泛珠三角大学生计算机作品赛、江西省大学生计算机作品赛等。同时，在学习交流上，软件组的同学能获得足够的计算机学习资源，有很多志趣相投的同学一起讨论软件开发的经验，共同完成一个宏大的工程。
					</p>
				</div>
				<!--硬件开发-->
				<div class="union_hardware hidden">
					<h2>
						<span>硬件设计</span>
					</h2>
					<p>
或许你喜欢搭积木玩拼图？对，硬件组就在干你喜欢的事——把你想象中的变成你看得到的摸得到的、实实在在的事物。
					</p>
					<p>
童年看的《四驱兄弟》，手里玩的四驱车，可能都已经放在遗忘的角落里了，但是硬件组的学长们还在玩——“飞思卡尔”智能车大赛，小车自动识别赛道，妈妈再也不用担心我的四驱车飞出跑道了；小时候和泥巴，捏泥人，现在也再也不玩了，但是硬件组的学长们还在玩——利用3D打印技术和数控雕刻技术，只有想不到，没有做不到；一直希望自己的娃娃能和自己说话玩游戏，现在知道不可能了，但是硬件组的学长们做到了——声控智能小车，你让我走东我绝不走西！
					</p>
					<p>
当然，这些都需要足够的基础——从拿电烙铁焊电路板开始，学习电路设计与分析，学习微型计算机开发，学习三维建模等等。硬件组从项目出发，分模块完成任务。通过完成一个一个的任务，硬件组成员逐步点亮自己的技能树。
					</p>
				</div>	
				<!--acm-->
				<div class="union_acm hidden">
					<h2>
						<span>ACM</span>
					</h2>
					<p>
如果你还记得有一篇古文《田忌赛马》，就能够想象ACM组学习的是什么了。
					</p>
					<p>
ACM（Association for Computing Machinery）指的是国际计算机学会。“蓝桥杯”全国软件和信息技术专业人才大赛和ACM国际大学生程序设计竞赛（英文全称：ACM-International Collegiate Programming Contest）是ACM组成员主要战场。ACM组成员主要学习目标就是刷题，通过大量的题目训练自己的逻辑思维能力，写出程序算法通过计算机计算以解决实际问题。刷算法题库似乎有些枯燥，但是ACM组的生活绝不单调。ACM组成员经常在一起解决同一个算法难题，以精简高效为荣，以繁杂混乱为耻。
					</p>
				</div>
				<!--信息安全-->
				<div class="union_information hidden">
					<h2>
						<span>信息安全</span>
					</h2>
					<p>
信息安全不仅仅只是QQ号被盗这么简单。从学校学生信息管理系统到支付宝的财产安全防火墙都需要密不透风的网络保护。信息安全组成员都是以攻破各类网站防火墙这一邪恶目标为出发点，发现网站的漏洞，最后留下漏洞信息给网站管理员并扬长而去。
					</p>
					<p>
是的，我们并不制造网络安全恐慌，我们只是网站漏洞的清洁工。信息安全是一门涉及计算机科学、网络技术、通信技术、密码技术、信息安全技术、应用数学、数论、信息论等多种学科的综合性学科，学起来并不是那么容易，但也没有想象中那么难。
					</p>
				</div>
			</div>
		</div>
  	<jsp:include page="footer.jsp" flush="true"/>
  </body>
</html>
