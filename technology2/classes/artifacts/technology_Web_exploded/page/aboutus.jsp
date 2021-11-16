
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/upubliccss.css">
    <script src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/form.js"></script>
    <style type="text/css">
        #zhong2_l{
            width: 30px;
            height: 80px;
            border-right: 2px solid #000;
            margin-top: 10px;
            float: left;
        }
        #zhong3link{
            width: 126px;
            height: 30px;
            font-size: 15px;
            text-align: center;
            line-height: 30px;
            border: 2px solid #007cba;
        }
        #leftbian1{
            position: absolute;
            width: 390px;
            height: 400px;
            border: 2px solid #f60;
            margin: 40px 0 0 10px;
            z-index: 0;
        }
        #leftbian2{
            position: absolute;
            width: 300px;
            height: 280px;
            border: 2px solid #007cba;
            margin-left: 145px;
            top: 5px;
            z-index: 0;
        }
        .hrr{
            font-family: POP字体, serif;
            border-top: 2px solid #ccc;
            text-align: center;
            line-height: 200px;
            font-size: 36px;
            text-shadow: 5px 5px 10px #666666;
            font-weight: bolder;
            margin-top: 50px;
        }
        .div-color div{
            padding: 10px;
        }
        .div-color img{
            width: 100%;
        }
        .div-color h3,.div-color h4{
            padding: 0 15px;
            overflow: hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
        .div-color a{
            transition: .5s;
            position: relative;
            display: block;
            height: 100%;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
        }
        .div-color div a:hover{
            cursor: pointer;
            transform: translateY(-10px);
            box-shadow: 0 0 20px rgba(0,0,0,.3);
        }
        .spec span{
            display: inline-block;
            border: 1px solid red;
            padding: 2px;
            background-color: white;
        }
        .product-stock input{
            width: 40px;
            height: 44px;
        }
        .product-stock a{
            display: block;
            font-size: 20px;
            width: 21px;
            height: 21px;
            text-align: center;
            line-height: 20px;
            text-decoration: none;
        }
        .hr-ab{
            width: 500px;
            border-top: 2px solid #ccc;
            margin: 20px auto;
        }
        .hr-bu{
            width: 20%;
            margin-left: 60%;
            border-top: 2px solid #ccc;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<header>
    <div class="header-page">
        <%@ include file="header.html" %>
    </div>
    <img class="header-img" src="${pageContext.request.contextPath }/images/lastbg.jpg" width="100%">
</header>
<div class="container">
    <div class="center-block text-center">
        <h3>关于我们</h3>
        <p style="font-size:15px;">ABOUT US</p>
    </div>
    <div class="hr-ab"></div>
    <div class="pull-left" style="position: relative">
        <div id="leftbian1"></div>
        <div id="leftbian2"></div>
        <div style="margin: 15px 0 0 30px; position: relative; z-index: 2">
            <a href="#">
                <img src="../images/abus.jpg" width="400" height="400"/>
            </a>
        </div>
    </div>
    <div class="pull-right">
        <div style="font-size: 18px">
            <h2>19专升本1班</h2>
            组长：黄振滨<br/><br/>
            组员：黄裔涵&nbsp;&nbsp;康铭达&nbsp;&nbsp;蓝志成&nbsp;&nbsp;李健&nbsp;&nbsp;廖伟标<br/><br/>
            小学期项目：网上购物商城<br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
            <div class="hr-bu"></div>
        </div>
    </div>
</div>
</body>
</html>
