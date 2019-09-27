<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Reflect Template" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title></title>
<link rel="stylesheet" href="css/style_all.css" type="text/css"
	media="screen" />



<!-- to choose another color scheme uncomment one of the foloowing stylesheets and wrap styl1.css into a comment -->
<link rel="stylesheet" href="css/style8.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="ueditor1_2_2_0-utf8-php/themes/default/ueditor.css"
	type="text/css" media="screen" />

<!--Internet Explorer Trancparency fix-->
<!--[if IE 6]>
        <script src="js/ie6pngfix.js"></script>
        <script>
          DD_belatedPNG.fix('#head, a, a span, img, .message p, .click_to_close, .ie6fix');
        </script>
        <![endif]-->

<script type='text/javascript' src='js/all-ck.js'></script>
<script type='text/javascript'
	src='ueditor1_2_2_0-utf8-php/editor_config.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
<style type="text/css">
[type=text] {
	width: 800px;
}
</style>
</head>


<body>
	<div id="top">

		<div id="head">
			<h1 class="logo"></h1>

			<div class="head_memberinfo">


				<span class='memberinfo_span' style="font-size: 30px">
					欢迎您，管理员 </span>


			</div>
			<!--end head_memberinfo-->

		</div>
		<!--end head-->

		<div id="bg_wrapper">

			<div id="main" style="margin-bottom: 50px">
				<div id="content">
					<h2 class="jquery_tab_title xxx">新闻详情</h2>
					<form method="post" action="../CounselingServletg?op=add"  enctype="multipart/form-data">
						<!-- form_h类用于格式化水平排列的表单 -->

						<table class="form_h xxx">
							<tr>
								<th><label for="name">新闻标题</label></th>
								<td><input class="input-flex" type="text" required name="name"
									id="name"/></td>
							</tr>
							<tr>
								<th class="vat"><label for="textarea2">详细内容</label></th>
								<td>
								
							</script>
							<!-- 加载编辑器的容器 -->
							<script id="container" name="show" required type="text/plain"></script>
							<!-- 配置文件 -->
							<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
							<!-- 编辑器源码文件 -->
							<script type="text/javascript" src="utf8-jsp/ueditor.all.js"></script>
							<!-- 实例化编辑器 -->
							<script type="text/javascript">
							  var ue = UE.getEditor('container', {
							    autoHeight: false
							  });
							  var ue = UE.getContent();
							</script>
								</td>

							</tr>

						<tr>
								<th><label for="name">上传图片</label></th>
								<td><input class="input-flex" type="file" required name="urlImg"  width: 785px"/></td>
							</tr>
						</table>
						
		
						
						<input class="button" name="submit" type="submit" value="添加" style="margin-left: 50px" />
						<br/>
					</form>



				</div>


			</div>
			<!--end main-->



		</div>
		<!--end bg_wrapper-->

		<div id="footer"></div>
		<!--end footer-->

	</div>
	<!-- end top -->

</body>

</html>