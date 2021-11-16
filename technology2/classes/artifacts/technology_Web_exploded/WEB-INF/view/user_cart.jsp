<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/usercartcss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/upubliccss.css">
    <script src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/form.js"></script><!--此文件要放在jquery下方-->
    <script src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        .nav-bg {
            background-color: #fff;
        }

        .nav-bg ul li .nav-li-link {
            color: #3c3c3c;
        }

        .nav-bg .my-circle {
            border: 2px solid rgba(0, 0, 0, 0.3);
            color: #3c3c3c;
        }

        .nav-vrule {
            background-color: #3c3c3c;
        }
    </style>
</head>
<body>
<div class="header-page" style="height: 110px;">
    <%@ include file="/page/header.html" %>
</div>

<div class="container-fluid" style="margin-bottom: 80px; margin-top: 50px">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="row">
                <div class="col-md-2" style="background-color: #fff; padding-bottom: 50px">
                    <%@ include file="pub_left.jsp" %>
                </div>
                <div class="col-md-10">
                    <div style="width: 100%; min-height: 1000px; background-color: #fff; padding: 50px 20px 50px 20px;">
                        <div class="panel-group" id="accordion">
                            <div class="cart-container-header">
                                <h3 class="titleinfo" style="position: relative; margin-bottom: 20px"><span>我的购物车</span>
                                </h3>
                                <!-- 按钮触发模态框 -->
                                <div class="cart-direct">
                                    <a href="#" data-toggle="modal" data-target="#myModal">
                                        <div class="cart-unknown">
                                            <span>?</span>
                                        </div>
                                        <span>购物指南</span>
                                    </a>
                                    <!-- 模态框（Modal） -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">
                                                        &times;
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">购物指南</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <ol type="1">
                                                        <li class="text-danger">注意：官网暂不支持货到付款、分期支付及POS机刷卡。</li>
                                                        <li>提交订单时选择相应支付方式，确认提交订单后会跳转至相应付款方式支付界面，按提示操作付款即可。</li>
                                                        <li>目前支持的支付方式有：支付宝、花呗、微信，后期会开通更多的支付方式。</li>
                                                        <li>商品包邮并默认顺丰快递，若顺丰不便邮寄，会转寄其他快递，不增加运费。</li>
                                                        <li>若订单异常，您可致电官方热线 666-999-6969，由客服协助您查询订单进展。</li>
                                                    </ol>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">
                                                        已了解
                                                    </button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal -->
                                    </div>
                                </div>
                            </div>

                            <c:if test="${!empty res_list}" var="resList">
                                <!--商品显示-->
                                <div class="cart">
                                    <form action="${pageContext.request.contextPath }/order/genorder"
                                          onsubmit="return checkForm()">
                                        <div class="cart-contain">
                                            <div class="contain-header">
                                                <ul>
                                                    <li>
                                                    <span>
                                                        <div class="checkbox">
                                                            <label><input id="checkAll" type="checkbox" value="111"/>全选</label>
                                                        </div>
                                                    </span>
                                                    </li>
                                                    <li><span>商品名称</span></li>
                                                    <li><span>&nbsp;</span></li>
                                                    <li><span>单价</span></li>
                                                    <li><span>数量</span></li>
                                                    <li><span>小计</span></li>
                                                    <li><span>操作</span></li>
                                                </ul>
                                            </div>
                                            <div class="contain-good">
                                                <c:set var="totalAmount" value="0"/>
                                                <c:forEach items="${res_list}" var="iResList">
                                                    <ul>
                                                        <li>
                                                    <span>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" value="${iResList.pid}" name="pid">
                                                        </label>
                                                        <label><input type="checkbox" value="${iResList.numbers}"
                                                                      name="pronum" hidden></label>
                                                    </div>
                                                    </span>
                                                        </li>
                                                        <li>
                                                            <div class="good-box">
                                                                <a href="${pageContext.request.contextPath }/product/productinfo?pid=${iResList.pid}">
                                                                    <img src="${pageContext.request.contextPath }/statics/upprodectimg/${iResList.pimg}"
                                                                         alt="图片" title="${iResList.pname}"
                                                                         width="80px">
                                                                </a>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <a href="${pageContext.request.contextPath }/product/productinfo?pid=${iResList.pid}">
                                                                <p class="product_title">${iResList.pname}</p>
                                                            </a>
                                                            <small class="meta_title">${iResList.descb}</small>
                                                        </li>
                                                        <li><span class="productPrice">￥${iResList.price}</span></li>
                                                        <li><span class="productPrice">${iResList.numbers}</span></li>
                                                        <li><p class="price_all">￥${iResList.numbers*iResList.price}</p>
                                                        </li>
                                                        <c:set var="totalAmount"
                                                               value="${totalAmount+iResList.numbers*iResList.price}"/>
                                                        <li>
                                                            <p>
                                                                <a href="${pageContext.request.contextPath }/usercart/delcart?cartid=${iResList.carid}"
                                                                   title="移除" class="btn-danger2">
                                                                    <span class="form-del">删除</span>
                                                                </a>
                                                            </p>
                                                        </li>
                                                    </ul>
                                                </c:forEach>
                                            </div>
                                        </div>

                                        <div class="cart-account">
                                            <div class="cart-detail-account">
                                                <div class="cart-detail-info">
                                                    <div class="detail-info">
                                                        <p id="#">原价：</p>
                                                        <p id="##">总计：</p>
                                                    </div>
                                                    <div class="detail-money">
                                                        <p class="detail-money-active coupon-account" id="total_text_original">
                                                            ￥0</p>
                                                        <p class="detail-money-total" id="total_text_p">
                                                            ￥0</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-mes">
                                                <p class="cart-save text-right">百强企业 品质保证 / 7天退货 15天换货 / 48元起免运费</p>
                                                <p class="cart-save text-right">服务说明：已满48元，已免运费，由本商城负责发货，并提供售后服务</p>
                                            </div>
                                            <button type="submit" name="button" class="balance btn-danger"
                                                    onclick="checkoutBtnClick()">去结算
                                            </button>
                                            <a href="${pageContext.request.contextPath }/product/showpro?classid=1001">
                                                <button type="button" name="button" class="balance goShopping">继续购物
                                                </button>
                                            </a>
                                        </div>
                                    </form>
                                </div>
                                <!--商品展示 end-->
                            </c:if>
                            <c:if test="${not resList}">
                                <!--空购物车-->
                                <div class="cart">
                                    <div class="empty-info">
                                        <img src="${pageContext.request.contextPath }/images/robote.png" width="130px"
                                             alt="">
                                        <div class="cart-shop">
                                            <h3>您的购物车空空如也 o .O！</h3>
                                            <a href="${pageContext.request.contextPath }/product/showpro?classid=1001">
                                                <button type="button" name="button" class="goShop">去选购</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath }/js/publicjs.js"></script>
<script>
    $(function () {
        $(".btn-danger2").click(function (e) {
            var isClick = confirm("是否确认删除？");
            if (!isClick) {
                e.preventDefault(); //阻止a标签的默认跳转href内容的行为，即不跳转
            }
        });
    });

    function checkForm() {
        var pidEle = $("input[name='pid']:checked");
        var pidLen = pidEle.length;
        if (pidLen > 0) {
            return true;
        } else {
            alert("请至少选择一件商品进行支付！");
            return false;
        }
    }

    $("input[name='pid']").click(function () {
        var pidEle = $("input[name='pid']");
        var index = pidEle.index(this);
        if (this.checked === true) {//当前选中
            $("input[name='pronum']").eq(index).prop("checked", true);
        }else {
            $("input[name='pronum']").eq(index).prop("checked", false);
        }
    });

    const shoppingCheckboxes = findShopCarCheckboxes();//fina all input
    var animationTimer = "flag";//animation loop flag
    // setInterval(function (){
    //     computeMoney("page");
    // },500);

    function findShopCarCheckboxes() {
        let inputItems = document.getElementsByTagName("input");//find all input
        const checkbox = [];//find all valid checkbox ,except checkAll
        for (let i = 0; i < inputItems.length; i++) {
            if (inputItems[i].type === "checkbox" && inputItems[i].id !== "checkAll"){//filter
                checkbox[checkbox.length] = inputItems[i];
                inputItems[i].addEventListener("click",function (){
                    clear();
                    computeMoney(i);
                });
            }
        }
        return checkbox;
    }

    document.getElementById("checkAll").addEventListener("click",function(){
        clear();//clear before loop
        changeCheckboxStatus(shoppingCheckboxes);//change checkbox statue
        computeMoney("checkAll");//compute money
    });

    const originalMoney = document.getElementById("total_text_original");
    const pMoney = document.getElementById("total_text_p");

    function changeCheckboxStatus(items){
        for (let i = 0; i < items.length; i++) {
            items[i].checked = !items[i].checked;
        }
    }

    function computeMoney(type) {
        let items = shoppingCheckboxes;
        let money= {};
        money.money = 0;

        for (let i = 0; i < items.length; i++) {
            // console.log(items[i]);
            if (items[i].checked && items[i].name !== "pronum"){
                let parentNode = items[i].parentNode.parentNode.parentNode.parentNode.parentNode;
                const currentMoney = Number(parentNode.childNodes[11].childNodes[0].innerHTML.replace("￥",""));
                money.money += currentMoney;
            }
        }

        if (money.money < 45 && money.money !== 0){
            money.money += 12;
        }

        showTheMoney(money.money)//show current money ,use animation
    }

    function showTheMoney(money) {
        changeMoneyAnimation(pMoney.innerText.replace("￥",""),money);
    }

    function changeMoneyAnimation(showMoney,newMoney) {
        //show the current money
        originalMoney.innerText = "￥"+showMoney;
        pMoney.innerText = "￥"+showMoney;

        // console.log("当前执行: 原来金钱 "+showMoney+" : "+newMoney);

        var currentMoney;
        if (showMoney >= newMoney){
            currentMoney = Number(showMoney) - 1;
        }else {
            currentMoney = Number(showMoney) + 1;
        }
        animationTimer = setTimeout(changeMoneyAnimation,1,currentMoney,newMoney);//use the animation to loop the money
        if (showMoney === newMoney){
            clearTimeout(animationTimer);
            originalMoney.innerText = "￥"+newMoney;
            pMoney.innerText = "￥"+newMoney;
        }
    }
    function clear(){
        clearTimeout(animationTimer);
    }
</script>
</body>
</html>