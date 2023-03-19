<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="jm-header">
    <div class="top-bar animate-dropdown">
        <div class="container">
            <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <c:choose>
                            <c:when test="${sessionScope.username != null && '' !=  sessionScope.username }">
                                <li>
                                    <a href="main.do"><i class="icon fa fa-user"></i>个人中心</a>
                                </li>
                                <li>
                                    <a href="logout.do" onclick="return confirm('确定退出？')"><i class="icon fa fa-sign-out"></i>退出</a>
                                </li> </c:when
                            ><c:otherwise>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#loginModel"><i class="icon fa fa-lock"></i>系统登录</a>
                                </li>
                            </c:otherwise></c:choose
                        >
                    </ul>
                </div>
                <!-- /.cnt-account -->
                <!-- /.cnt-cart -->
                <div class="clearfix"></div>
            </div>
            <!-- /.header-top-inner -->

            <!-- container定宽，并剧中结束 -->
        </div>
        <!-- /.container -->
    </div>

    <div class="main-header">
        <div class="container">
            <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

            <div class="row" gutter="20">
                <div class="col-xs-12 col-sm-12 col-md-7 logo-holder">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"><a href="./"> 音乐网站系统 </a></div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= -->
                </div>
                <!-- /.logo-holder -->

                <!-- /.top-search-holder -->
                <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

            <!-- container定宽，并剧中结束 -->
        </div>
        <!-- /.container -->
    </div>

    <div class="header-nav">
        <div class="container">
            <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

            <div class="nav-list clearfix">
                <ul class="clearfix" id="navbar-str">
                    <li>
                        <a href="./">主页 </a>
                    </li>
                    <li>
                        <a href="geshoulist.do">歌手 </a>
                        <ul class="nav-child">
                            <ssm:sql var="mapdiqu1" type="select">SELECT id,diqumingcheng FROM diqu</ssm:sql>
                            <c:forEach items="${mapdiqu1}" var="m">
                                <li><a href="geshoulist.do?diqu=${m.id}">${m.diqumingcheng}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="zhuanjilist.do">专辑 </a>
                        <ul class="nav-child">
                            <ssm:sql var="mapgeshou2" type="select">SELECT id,xingming FROM geshou</ssm:sql>
                            <c:forEach items="${mapgeshou2}" var="m">
                                <li><a href="zhuanjilist.do?faxinggeshou=${m.id}">${m.xingming}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="danqulist.do">单曲 </a>
                        <ul class="nav-child">
                            <ssm:sql var="mapqufeng3" type="select">SELECT id,qufengmingcheng FROM qufeng</ssm:sql>
                            <c:forEach items="${mapqufeng3}" var="m">
                                <li><a href="danqulist.do?qufeng=${m.id}">${m.qufengmingcheng}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="kuaixunlist.do">快讯 </a>
                    </li>
                    <li>
                        <a href="yonghuadd.do">注册 </a>
                    </li>
                    <li>
                        <a href="login.do">后台 </a>
                    </li>
                </ul>
            </div>

            <!-- container定宽，并剧中结束 -->
        </div>
    </div>

    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="0" id="loginModel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="0">登录</h4>
                </div>
                <div class="modal-body">
                    <div class="pa10">
                        <form action="authLogin.do?a=a" method="post">
                            <!-- form 标签开始 -->

                            <div class="form-group">
                                <input type="text" class="form-control" name="username" placeholder="输入帐号" />
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="pwd" placeholder="密码" />
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="cx">
                                    <option value="用户">用户</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="pagerandom" placeholder="输入验证码" />

                                    <span class="input-group-addon"
                                        ><img
                                            src="captcha.do"
                                            style="width: 60px; height: 20px; max-width: none; max-height: none"
                                            onclick="this.src='captcha.do?rand='+new Date().getTime()"
                                    /></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">登录</button>
                                    </div>
                                </div>
                            </div>

                            <!--form标签结束-->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
