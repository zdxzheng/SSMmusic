<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>


<link rel="stylesheet" href="js/swiper/swiper.css"/>
<script src="js/swiper/swiper.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">
            <div class="col-sm-8 col-md-8">
                ${bhtList = Query.make("lunbotu").order("id desc").limit(5).select();""}

                <div class="swiper-container" id="base/banner55">
                    <div class="swiper-wrapper">
                        <c:forEach items="${bhtList}" var="bht">
                            <div class="swiper-slide">
                                <div class="decoimg_b2">
                                    <a class="btn btn-" href="${bht.url}"
                                       style="background-image: url('${bht.image}'); height: 300px"></a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- 如果需要分页器 -->
                    <div class="swiper-pagination"></div>
                    <!-- 如果需要导航按钮 -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>

                <script>
                    var mySwiper = new Swiper("#base/banner55", {
                        loop: true, // 循环模式选项
                        autoplay: {
                            delay: 3000,
                            disableOnInteraction: false,
                        },
                        // 如果需要分页器
                        pagination: {
                            el: ".swiper-pagination",
                        },
                        // 如果需要前进后退按钮
                        navigation: {
                            nextEl: ".swiper-button-next",
                            prevEl: ".swiper-button-prev",
                        },
                        // 如果需要滚动条
                        /*scrollbar: {
            el: '.swiper-scrollbar',
        },*/
                    });
                </script>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="title-modelbox-widget">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="kuaixunlist.do">更多&gt;&gt;</a>
                        </div>
                        音乐快讯
                    </h3>
                    <div class="sidebar-widget-body">
                        <div class="">
                            ${kuaixunlist58 = Query.make("kuaixun").limit(2).order("id desc").select();""}
                            <div class="news-list">
                                <ul>
                                    <c:forEach items="${kuaixunlist58}" var="r">
                                        <li class="clearfix">
                                            <a href="kuaixundetail.do?id=${r.id}">
                                                <div class="thumb">
                                                    <div class="img-box pb64">
                                                        <div class="img"
                                                             style="background-image: url('${r.tupian}')"></div>
                                                    </div>
                                                </div>
                                            </a>

                                            <div class="news-content-text">
                                                <a href="kuaixundetail.do?id=${r.id}">
                                                    <h3>${r.biaoti}</h3>
                                                </a>

                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">
            <div class="col-md-6">
                <div class="title-modelbox-widget">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="zhuanjilist.do">更多&gt;&gt;</a>
                        </div>
                        专辑歌单
                    </h3>
                    <div class="sidebar-widget-body">
                        <div class="module-products clearfix">
                            ${zhuanjilist63 = Query.make("zhuanji").limit(3).order("id desc").select();""}

                            <div class="row products clearfix">
                                <c:forEach items="${zhuanjilist63}" var="r">
                                    <div class="col-xs-12 col-md-4 products-col">
                                        <article>
                                            <a href="zhuanjidetail.do?id=${r.id}" class="pro-btn pro-btn-add"> 查看 </a>
                                            <div class="figure-grid">
                                                <div class="image">
                                                    <div class="img-box pb100">
                                                        <a class="img" href="zhuanjidetail.do?id=${r.id}"
                                                           style="background-image: url('${r.zhuanjitupian}')"></a>
                                                    </div>
                                                </div>
                                                <div class="text">
                                                    <h2 class="title h4">
                                                        <a href="zhuanjidetail.do?id=${r.id}"> ${r.zhuanjimingcheng} </a>
                                                    </h2>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
            </div>
            <div class="col-md-6">
                <div class="title-modelbox-widget">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="danqulist.do">更多&gt;&gt;</a>
                        </div>
                        单曲
                    </h3>
                    <div class="sidebar-widget-body">
                        <div class="module-products clearfix">
                            ${danqulist66 = Query.make("danqu").where("issh", "是").limit(3).order("id desc").select();""}

                            <div class="row products clearfix">
                                <c:forEach items="${danqulist66}" var="r">
                                    <div class="col-xs-12 col-md-4 products-col">
                                        <article>
                                            <a href="danqudetail.do?id=${r.id}" class="pro-btn pro-btn-add"> 查看 </a>
                                            <div class="figure-grid">
                                                <div class="image">
                                                    <div class="img-box pb100">
                                                        <a class="img" href="danqudetail.do?id=${r.id}"
                                                           style="background-image: url('${r.tupian}')"></a>
                                                    </div>
                                                </div>
                                                <div class="text">
                                                    <h2 class="title h4">
                                                        <a href="danqudetail.do?id=${r.id}"> ${r.gequmingcheng} </a>
                                                    </h2>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">
                <div class="more">
                    <a href="geshoulist.do">更多&gt;&gt;</a>
                </div>
                歌手
            </h3>
            <div class="sidebar-widget-body">
                <div class="module-products clearfix">
                    ${geshoulist71 = Query.make("geshou").limit(4).order("id desc").select();""}

                    <div class="row products clearfix">
                        <c:forEach items="${geshoulist71}" var="r">
                            <div class="col-xs-12 col-md-3 products-col">
                                <article>
                                    <a href="geshoudetail.do?id=${r.id}" class="pro-btn pro-btn-add"> 查看 </a>
                                    <div class="figure-grid">
                                        <div class="image">
                                            <div class="img-box pb120">
                                                <a class="img" href="geshoudetail.do?id=${r.id}"
                                                   style="background-image: url('${r.zhaopian}')"></a>
                                            </div>
                                        </div>
                                        <div class="text">
                                            <h2 class="title h4">
                                                <a href="geshoudetail.do?id=${r.id}"> ${r.xingming} </a>
                                            </h2>
                                            <span class="description clearfix"> ${Info.subStr(r.gerenjianjie , 12)} </span>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>

