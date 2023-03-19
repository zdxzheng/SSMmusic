<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">专辑详情</h3>
            <div class="sidebar-widget-body">
                <div class="row4 hjlgf">
                    <div class="row clearfix">
                        <div class="row1">
                            <div class="product-preview">
                                <div class="big-image">
                                    <div class="img-box pb140">
                                        <div id="imageBig" class="img"></div>
                                    </div>
                                </div>
                                <ul class="thumbs unstyled clearfix" id="imagesJS"></ul>
                            </div>
                        </div>
                        <div class="row2">
                            <section class="product-details add-cart">
                                <header class="entry-header">
                                    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
                                    <h1 class="entry-title uppercase">${map.zhuanjimingcheng}</h1>
                                </header>
                                <article class="entry-content">
                                    <figure>
                                        <span class="entry-price inline-middle">￥${map.jiage}</span>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">发行歌手:</span>
                                                <span class="value"
                                                ><ssm:sql var="mapgeshou11"
                                                          type="find">SELECT xingming,id FROM geshou where id='${map.faxinggeshou}'</ssm:sql
                                                >${mapgeshou11.xingming}</span
                                                >
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">发行时间:</span>
                                                <span class="value">${map.faxingshijian}</span>
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">价格:</span>
                                                <span class="value">${map.jiage}</span>
                                            </li>
                                        </ul>
                                        <div class="rate-bar inline-middle">
                                            <div
                                                    class="rateit"
                                                    data-rateit-backingfld="#backing0"
                                                    data-rateit-starwidth="12"
                                                    data-rateit-starheight="12"
                                                    data-rateit-resetable="false"
                                                    data-rateit-ispreset="true"
                                                    data-rateit-min="0"
                                                    data-rateit-max="5"
                                            ></div>
                                        </div>


                                        <c:choose>
                                            <c:when test="${sessionScope.username != null && '' !=  sessionScope.username }">
                                                ${shoucangCount = Query.make("shoucang").where("biao", "zhuanji").where("xwid", map.id).where("username",
                                                sessionScope.username).field("count(*) as count").find();""}
                                                <c:choose>
                                                    <c:when test="${shoucangCount.count !=  '0'  }">
                                                        <button
                                                                type="button"
                                                                class="btn btn-default"
                                                                onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=zhuanji&biaoti=${map.zhuanjimingcheng}'"
                                                        >
                                                            取消收藏
                                                        </button>
                                                    </c:when
                                                    ><c:otherwise>
                                                    <button
                                                            type="button"
                                                            class="btn btn-default"
                                                            onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=zhuanji&biaoti=${map.zhuanjimingcheng}'"
                                                    >
                                                        收藏
                                                    </button>
                                                </c:otherwise></c:choose
                                                > </c:when
                                            ><c:otherwise>
                                            <button
                                                    type="button"
                                                    class="btn btn-default"
                                                    onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=zhuanji&biaoti=${map.zhuanjimingcheng}'"
                                            >
                                                收藏
                                            </button>
                                        </c:otherwise></c:choose
                                        >
                                    </figure>
                                </article>
                            </section>
                        </div>
                    </div>
                    <div class="row3">
                        <div>
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="javascript:;" data-toggle="tab">专辑歌曲</a></li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="product-description">
                                <p>${map.zhuanjixiangqing}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    $(function () {
                        var images = "${map.zhuanjitupian}".split(",");
                        for (var i in images) {
                            var html =
                                "<li>\n" +
                                '                            <div class="img-box pb140" data-image="' +
                                images[i] +
                                '">\n' +
                                '                                <div class="img" style="background-image: url(' +
                                images[i] +
                                ')"></div>\n' +
                                "                            </div>\n" +
                                "                        </li>";

                            $("#imagesJS").append(html);
                        }
                        $("#imagesJS").on("click", ".img-box", function (e) {
                            $("#imageBig").css("background-image", "url(" + $(this).data("image") + ")");
                        });
                        $("#imagesJS li:eq(0)>.img-box").click();
                    });
                </script>

                <div class="title-modelbox-widget">
                    <h3 class="section-title">专辑歌曲</h3>
                    <div class="sidebar-widget-body">
                        <div class="list-table">
                            ${zhuanjigequlist26 = Query.make("zhuanjigequ").where("zhuanjibianhao",map.zhuanjibianhao).limit(10).select();""}

                            <table width="100%" border="1" class="table table-list table-bordered table-hover">
                                <thead>
                                <tr align="center">
                                    <th>专辑编号</th>
                                    <th>专辑名称</th>
                                    <th>发行歌手</th>
                                    <th>歌曲名称</th>
                                    <th>歌曲</th>


                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="i" value="0"/><c:forEach items="${zhuanjigequlist26}" var="r"
                                ><c:set var="i" value="${i+1}"/>
                                    <tr>
                                        <td>${r.zhuanjibianhao}</td>
                                        <td>${r.zhuanjimingcheng}</td>
                                        <td>
                                            <ssm:sql var="mapgeshou12"
                                                     type="find">SELECT xingming,id FROM geshou where id='${r.faxinggeshou}'</ssm:sql>${mapgeshou12.xingming}
                                        </td>
                                        <td>${r.gequmingcheng}</td>
                                        <td>
                                            <audio src="${r.gequ}" controls="">您的浏览器不支持 audio 标签。</audio>
                                        </td>


                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>

