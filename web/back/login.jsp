<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Reflect Template" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
        <title>后台登入</title>
        <link rel="stylesheet" href="css/style_all.css" type="text/css" media="screen" />
        
        
        
        <!-- to choose another color scheme uncomment one of the foloowing stylesheets and wrap styl1.css into a comment -->
        <link rel="stylesheet" href="css/style1.css" type="text/css" media="screen" />
        
        <!-- 
        <link rel="stylesheet" href="css/style2.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style3.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style4.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style5.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style6.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style7.css" type="text/css" media="screen" />
         -->
        
        
        <link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="ueditor1_2_2_0-utf8-php/themes/default/ueditor.css" type="text/css" media="screen" />
        
        <!--Internet Explorer Trancparency fix-->
        <!--[if IE 6]>
        <script src="js/ie6pngfix.js"></script>
        <script>
          DD_belatedPNG.fix('#head, a, a span, img, .message p, .click_to_close, .ie6fix');
        </script>
        <![endif]--> 
        
        <script type='text/javascript' src='js/all-ck.js'></script>
        <script type='text/javascript' src='ueditor1_2_2_0-utf8-php/editor_config.js'></script>
        <script type='text/javascript' src='js/custom.js'></script>
        <style type="text/css">
            body{
                background: url("images/load_bg.jpg");
            }
        </style>
    </head>
    
    <body class="nobackground">
    	
        <div id="login">
        
        	<h1 class="logo">
            	<a href="">后台管理</a>
            </h1>
            <h2 class="loginheading">登入</h2>
            <div class="icon_login ie6fix"></div>
                
        	<form id="login-form" action="../EnterServletL?op=log" method="post">
            <p>
            	<label for="name">用户名</label>
            	<input class="input-medium" type="text" value="" name="name" id="name"/>
        	</p>
        	<p>
            	<label for="password">密码</label>
            	<input class="input-medium" type="password" value="" name="pwd" id="password"/>
        	</p>
        	<div class="forgot_pw"><a href="index.jsp">找回密码</a></div>
        	<p class="clearboth">
            	<input class="button" name="submit" type="submit" value="登入"/>
        	</p>
            </form>
        </div>
        
        
    </body>
    
</html>