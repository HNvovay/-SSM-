
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="nav-wrapper">
    <!--手机端显示logo-->
    <div class="container navbar-mobile">
        <!--汉堡按钮-->
        <a href="#" class="text-center a-circle" data-toggle="collapse"
           data-target="#example-navbar-collapse"> <span
                class="glyphicon glyphicon-tasks" style="vertical-align: middle;"></span>
        </a> <a href="${pageContext.request.contextPath}/toindex" class="my-logo">
        <img alt="图片" src="${pageContext.request.contextPath }/images/logo.png">
    </a>
    </div>

    <div class="nav-outer-container">
        <div class="nav-bg">
            <ul class="list-inline" style="margin: 0">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/toindex" class="nav-li-link">
                        <img alt="图片" src="${pageContext.request.contextPath }/images/logo.png"><span class="slo-vertical"> 后台管理系统</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/toindex" class="nav-li-link">
                        <span>前台首页</span>
                        <span class="global-nav-indicator-bar" style="border-color: #e688a1;"></span>
                    </a>
                </li>
                <!--右侧登录、搜索-->
                <li class="pull-right">
                    <form action="${pageContext.request.contextPath }/adminproduct/searchPro" >
                        <a href="javascript:;" class="nav-li-link">
                        <span class="text-center my-circle">
                            <span class="glyphicon glyphicon-search" style="vertical-align: middle;"></span>
                        </span>
                            <span class="global-nav-indicator-bar" style="border-color: #373838;"></span>
                        </a>
                        <div class="menu-search" style="background-color: #373838">
                            <select class="form-control sel_sort" name="" style="width: 150px; margin-bottom: 10px">
                                <option value="0" selected>商品搜索</option>
                            </select>

                            <div class="navtray-search-section-input">
                                <input type="text" name="searchkey" placeholder="请输入关键词" autocomplete="off">
                                <a href="javascript:;" class="btn-search-go">
                                    <button type="submit">
                                        <span class="glyphicon glyphicon-search" style="vertical-align: middle;"></span>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </form>
                </li>
                <li class="nav-vrule pull-right"></li>
                <c:if test="${!empty adm_info.adminid }" var="flag">
                    <li class="pull-right">
                        <a href="#" title="您是管理员" class="nav-li-link">
                            <span class="head-div">
                                <img src="${pageContext.request.contextPath}/statics/uploadfiles/${adm_info.aimg }" width="40px"
                                     height="40px" class="img-circle">
						    </span>
                            <span>&nbsp;&nbsp;${adm_info.aname }</span>
                        </a>
                        <a href="#" class="nav-li-link login-out">
                            <span class="glyphicon glyphicon-log-out"></span>
                            <span>退出</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${not flag}">
                    <li class="pull-right">
                        <a href="${pageContext.request.contextPath}/admin/loginpage" class="nav-li-link">
                            <span class="glyphicon glyphicon-lock"></span>
                            <span>登录</span>
                        </a>
                    </li>
                </c:if>
                <%--<li class="pull-right">
                    <a href="${pageContext.request.contextPath}/page/login.html" class="nav-li-link">
                        <span class="glyphicon glyphicon-lock"></span>
                        <span>登录</span>
                        <span class="global-nav-indicator-bar" style="border-color: #52de97;"></span>
                    </a>
                </li>--%>
            </ul>
        </div>
    </div>
</nav>
<script>
    $(function () {
        $(".login-out").click(function () {
            $.get("${pageContext.request.contextPath}/login/invali", function (date) {
                alert("退出成功，请重新登录");
                window.location.reload();
            });
        });

        /*$.get("/sort/getSort", function (date) {
            var html = "";
            console.log(date.sort_list.length);
            for (var i = 0; i < date.sort_list.length; i++) {
                var obj = date.sort_list[i];
                html+=getHtml(obj);
            }
            $(".sel_sort").append(html);
        });
        function getHtml(obj) {
            var $html = "<option value=\""+obj.classid+"\">"+obj.cname+"</option>";
            return $html;
        }*/
    })
</script>
