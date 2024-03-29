<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <link href="img/favicon.ico" rel="icon stylesheet bookmark shortcut" type="image/x-icon"/>
  <link rel="shortcut icon stylesheet" href="img/favicon.ico">
  <link rel="bookmark stylesheet" href="img/favicon.ico">
  <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

<%@ include file="firstPage.jsp"%>

  <div class="content content-nav-base shopcart-content">
    <%@ include file="title.jsp"%>
    <div class="banner-bg w1200">
      <h3>夏季清仓</h3>
      <p>宝宝被子、宝宝衣服3折起</p>
    </div>
    <div class="cart w1200" style="">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="allCheckked" type="hidden" value="true">
            </div>
          <label></label>
          </div>
        </div>
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-op" style="width: 600px;">
          <div class="th-inner" >
            操作
          </div>
        </div>  
      </div>
      <div class="OrderList">
        <div class="order-content" id="list-cont">
          <c:forEach var="i" items="${collects}" varStatus="in">
            <ul class="item-content layui-clear">
              <li class="th th-chk">
                <div class="select-all">
                  <div class="cart-checkbox">
<%--                    <input class="CheckBoxShop check"  type="checkbox" num="all" name="select-all" value="true">--%>
                  </div>
                </div>
              </li>
              <li class="th th-item">
                <div class="item-cont">
                  <a href="Commodity_infoServlet?op=show&sid=${i.commodity.commodity_info_id}"><img src="${collImg[in.index].show_info_url}" alt=""></a>
                  <div class="text">
                    <div class="title"><a href="Commodity_infoServlet?op=show&sid=${i.commodity.commodity_info_id}">${i.commodity.commodity_info_name}</a></div>
                  </div>
                </div>
              </li>
              <li class="th th-price">
                <span class="th-su">${i.commodity.commodity_info_money}</span>
              </li>
<%--              </li>--%>
<%--              <li class="th th-sum">--%>
<%--                <span class="sum">${i.commodity.commodity_info_money*i.shopcart_num}</span>--%>
<%--              </li>--%>
              <li class="th th-op" style="width: 600px">
                <a href="CollectServlet?op=del&sid=${i.collect_id}">删除</a>

              </li>
            </ul>
          </c:forEach>
        </div>
      </div>

<%--      <div class="FloatBarHolder layui-clear">--%>
<%--        <div class="th th-chk">--%>
<%--          <div class="select-all">--%>
<%--            <div class="cart-checkbox">--%>
<%--              <input class="check-all check" id="" name="select-all" type="checkbox"  value="true">--%>
<%--            </div>--%>
<%--            <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="th batch-deletion">--%>
<%--          <span class="batch-dele-btn">批量删除</span>--%>
<%--        </div>--%>
<%--        <div class="th Settlement">--%>
<%--          <button class="layui-btn">结算</button>--%>
<%--        </div>--%>
<%--        <div class="th total">--%>
<%--          <p>应付：<span class="pieces-total">0</span></p>--%>
<%--        </div>--%>
<%--      </div>--%>
    </div>
  </div>

<script type="text/javascript">
  layui.config({
    base: 'res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    
    // 模版导入数据
    // var jsp = demo.innerjsp,
    // listCont = document.getElementById('list-cont');
    // mm.request({
    //   url: 'json/shopcart.json',
    //   success : function(res){
    //     listCont.innerjsp = mm.renderjsp(jsp,res)
    //     element.render();
    //     car.init()
    //   },
    //   error: function(res){
    //     console.log(res);
    //   }
    // })
    // 
    car.init()


});
</script>
</body>
</html>