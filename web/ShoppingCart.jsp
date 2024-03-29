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
  <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
  <link href="img/favicon.ico" rel="icon stylesheet bookmark shortcut" type="image/x-icon"/>
  <link rel="shortcut icon stylesheet" href="img/favicon.ico">
  <link rel="bookmark stylesheet" href="img/favicon.ico">
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
    <script type="text/javascript">
      $(function () {
        $("form").submit(function () {
          var obj = document.getElementsByName("address");
          var flags = false;
          for(var i=0; i<obj.length; i ++){
            if(obj[i].checked==true){
              flags = true;
            }
          }
          if (flags == false)
          {
            alert("对不起，请选择地址")
            return false;
          }
        })
      })
    </script>
    <form action="BuyServlet?op=shopc" method="post">
    <div class="cart w1200">
      <div style="border: #3F3F3F">
        <p style="font-size: 18px;margin-left: 30px">请选择地址</p>
        <hr/>
        <table style="margin: auto;width: 90%;font-size: 16px;margin-bottom:16px" border="solid">
          <tr style="padding: 5px 0px">
            <th>选中</th>
            <th>姓名</th>
            <th>手机号</th>
            <th>地址</th>
            <th>邮编</th>
            <th>修改</th>
          </tr>
          <c:forEach var="i" items="${pgx.list}">
            <tr style="padding: 10px 0px">
              <th><input type="radio"  name="address" class="address" <c:if test="${i.address_default==1}">checked</c:if> value="${i.address_id}"/></th>
              <th>${i.address_name}</th>
              <th>${i.address_telephone}</th>
              <th>${i.address_detalied}</th>
              <th>${i.address_postal}</th>
              <th><a href="AddressServlet?op=update&sid=${i.address_id}&updatePage=ShoppingCart.jsp">修改</a> </th>
            </tr>
          </c:forEach>
        </table>
        <p style="text-align: center;font-size: 18px">
          <a href="ShopcartServlet?op=car&xx=5&indexPage=1">首页</a>
          <a href="ShopcartServlet?op=car&xx=5&indexPage=${pg.indexPage>1?pg.indexPage-1:1}">上一页</a>
          <a href="ShopcartServlet?op=car&xx=5&indexPage=${pg.indexPage<pg.sumPage?pg.indexPage+1:pg.sumPage}">下一页</a>
          <a href="ShopcartServlet?op=car&xx=5&indexPage=${pg.sumPage}">末页</a>
        </p>
        <script type="text/javascript">
          function address(){
            location.href="address.jsp";
            <c:remove  var="addressPage"  scope="session"  />
            <c:set  var="addressPage"  value="gaddress"  scope="session"  />
          }
        </script>
        <hr/>
        <p style="text-align: center;font-size: 18px"><a href="#" onclick="address()">添加地址</a></p>

      </div>
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="allCheckked" type="hidden" value="true">
            </div>
          <label>&nbsp;&nbsp;</label>
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
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        <div class="th th-op">
          <div class="th-inner">

          </div>
        </div>  
      </div>

      <div class="OrderList">
        <div class="order-content" id="list-cont">
          <c:forEach var="i" items="${shop_by}" varStatus="in">
            <ul class="item-content layui-clear">
              <li class="th th-chk">
                <div class="select-all">
                  <div class="cart-checkbox">
                    <input class="CheckBoxShop check"  type="checkbox" num="all" name="select-all" value="${i.shopcart_id}">
                    <input type="hidden" value="${i.shopcart_id}" name="comm_id" />
                  </div>
                </div>
              </li>
              <li class="th th-item">
                <div class="item-cont">
                  <img src="${shopImgBy[in.index].show_info_url}" alt="" width="40px" height="40px">
                  <div class="text">
                    <div class="title">${i.commodity.commodity_info_name}</div>
                    <p>${i.abapt.abapt_name}</p>
                    <input type="hidden" value="${i.abapt.abapt_id}" name="bapt"/>
                    <input type="hidden" value="${in.index}" name="index"/>
                  </div>
                </div>
              </li>
              <li class="th th-price">
                <span class="th-su">${i.commodity.commodity_info_money}</span>
              </li>
              <li class="th th-amount">
                <div class="box-btn layui-clear" id="xx">
                  <div class="less layui-btn">-</div>
                  <input class="Quantity-input" type="text" value="${i.shopcart_num}" name="num" readonly>
                  <div class="add layui-btn">+</div>


                    <%--                    <input type="text" name='commMoney' value="" />--%>
                </div>
              </li>
              <li class="th th-sum">
                <span class="sum">${i.commodity.commodity_info_money*i.shopcart_num}</span>
              </li>
              <li class="th th-op">
                <a href="ShopcartServlet?op=del&sid=${i.shopcart_id}">删除</a>
              </li>
            </ul>
          </c:forEach>
        </div>

      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id=""  type="hidden" >
            </div>
            <label>&nbsp;&nbsp;已选<span  class="Selected-pieces">0</span>件</label>
              <input type="hidden" name="commSum" class="Selected-pieces" value="" />
          </div>
        </div>
        <div class="th batch-deletion">
          <span class="batch-dele-btn"></span>
        </div>
        <div class="th Settlement">
          <button class="layui-btn" id="bycomm">结算</button>
        </div>
        <div class="th total">
          <p>应付：<span class="pieces-total" id="money" name="money">0</span></p>
            <input type="hidden" name="commMoney" class="Selected-pieces" value="" />
        </div>
      </div>
    </div>
    </div>
      </form>
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