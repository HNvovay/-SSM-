<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        td,th{
            border-bottom: #f2f2f2 2px solid;
            padding: 5px;
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
                                <h3 class="titleinfo" style="position: relative; margin-bottom: 20px"><span>我的评论</span>
                                </h3>
                            </div>

                            <c:if test="${!empty commentlist}" var="resList">
                                <!--商品显示-->
                                <div class="cart">
                                    <form action="${pageContext.request.contextPath }/comment/delAnyComment"
                                          method="post" onsubmit="return checkForm()">
                                        <table style="width:100%;padding: 5px;border-bottom: #f2f2f2 1px solid; table-layout:fixed;word-break:break-all">
                                            <tr>
                                                <th width="8%" style="text-align: center">
                                                    <input id="checkAll" onclick="setAllNo()"  type="checkbox"/>&nbsp;全选
                                                </th>
                                                <th width="40%">评论内容</th>
                                                <th width="30%">商品名称</th>
                                                <th width="15%">评论日期</th>
                                                <th width="10%">操作</th>
                                            </tr>
                                            <c:forEach items="${commentlist}" var="iResList">
                                                <tr>
                                                    <td  align="center"><span>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" value="${iResList.commentid}" name="commentid">
                                                                    </label>
                                                                </div>
                                                            </span>
                                                    </td>
                                                    <td><small class="meta_title">${iResList.descb}</small></td>
                                                    <td>${iResList.pname}</td>
                                                    <td><fmt:formatDate value="${iResList.commentdate}"
                                                                        pattern="yyyy年MM月dd日"/></td>
                                                    <td>
                                                        <span class="form-del" onclick="delComment(${iResList.commentid})">删除</span></td>
                                                </tr>
                                            </c:forEach>
                                        </table>


                                        <div class="cart-account">
                                            <button type="submit" name="button" class="balance btn-danger">删除选中
                                            </button>
                                            <a href="${pageContext.request.contextPath }/comment/delAllComment">
                                                <button type="button" name="button" class="balance goShopping btn-danger2" onclick="">删除全部
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
                                            <h3>您还没有评论哦 o .O！</h3>
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
    function delComment(commentid){
        var isClick = confirm("是否确认删除？");
        if (isClick) {
            $.post("${pageContext.request.contextPath}/comment/delComment", {commentid: commentid}, function (date) {
                if (date>0){
                    alert("删除评论成功！");
                    location.reload();
                }
            });
        }
    }
    $(function () {
        $(".btn-danger2").click(function (e) {
            var isClick = confirm("是否确认删除？");
            if (!isClick) {
                e.preventDefault(); //阻止a标签的默认跳转href内容的行为，即不跳转
            }
        });
    });
    function setAllNo(){
        var checkAll = document.getElementById("checkAll");
        var pids = document.getElementsByName("commentid");
        if(checkAll.checked === false){
            for (var i = 0; i < pids.length; i++) {
                pids[i].checked = false;
            }
        }else{
            for (var i = 0; i < pids.length; i++) {
                pids[i].checked = true;
            }
        }
    }
    function checkForm() {
        var pidEle = $("input[name='commentid']:checked");
        var pidLen = pidEle.length;
        if (pidLen > 0) {
            var isClick = confirm("是否确认删除？");
            if (!isClick) {
                return false;
            }
            return true;
        } else {
            alert("没有选中的评论！");
            return false;
        }
    }

    $("input[name='commentid']").click(function () {
        var pidEle = $("input[name='commentid']");
        var index = pidEle.index(this);
        if (this.checked == true) {//当前选中
            $("input[name='pronum']").eq(index).prop("checked", true);
        }else {
            var checkAll = document.getElementById("checkAll");
            checkAll.checked=false;
            $("input[name='f']").eq(index).prop("checked", false);
        }
    });
</script>
</body>
</html>