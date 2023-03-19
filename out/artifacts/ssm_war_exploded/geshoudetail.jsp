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
            <h3 class="section-title">艺术家详情</h3>
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
                                    <h1 class="entry-title uppercase">${map.xingming}</h1>
                                </header>
                                <article class="entry-content">
                                    <figure>

                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">地区:</span>
                                                <span class="value"
                                                ><ssm:sql var="mapdiqu6"
                                                          type="find">SELECT diqumingcheng,id FROM diqu where id='${map.diqu}'</ssm:sql
                                                >${mapdiqu6.diqumingcheng}</span
                                                >
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">性别:</span>
                                                <span class="value">${map.xingbie}</span>
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">公司:</span>
                                                <span class="value">${map.gongsi}</span>
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
                                                ${shoucangCount = Query.make("shoucang").where("biao", "geshou").where("xwid", map.id).where("username",
                                                sessionScope.username).field("count(*) as count").find();""}
                                                <c:choose>
                                                    <c:when test="${shoucangCount.count !=  '0'  }">
                                                        <button
                                                                type="button"
                                                                class="btn btn-default"
                                                                onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=geshou&biaoti=${map.xingming}'"
                                                        >
                                                            取消收藏
                                                        </button>
                                                    </c:when
                                                    ><c:otherwise>
                                                    <button
                                                            type="button"
                                                            class="btn btn-default"
                                                            onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=geshou&biaoti=${map.xingming}'"
                                                    >
                                                        收藏
                                                    </button>
                                                </c:otherwise></c:choose
                                                > </c:when
                                            ><c:otherwise>
                                            <button
                                                    type="button"
                                                    class="btn btn-default"
                                                    onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=geshou&biaoti=${map.xingming}'"
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
                                <li class="active"><a href="javascript:;" data-toggle="tab">歌手简介</a></li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="product-description">
                                <p>${map.gerenjianjie}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    $(function () {
                        var images = "${map.zhaopian}".split(",");
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

                <div class="tabs">
                    <!-- tabs切换页 -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#zhuanji" aria-controls="zhuanji" role="tab" data-toggle="tab">专辑</a>
                        </li>
                        <li role="presentation">
                            <a href="#danqu" aria-controls="danqu" role="tab" data-toggle="tab">单曲</a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <!--内容区 -->
                        <div role="tabpanel" class="tab-pane active" id="zhuanji">
                            <div class="module-products clearfix">
                                ${zhuanjilist12 = Query.make("zhuanji").where("faxinggeshou",map.id)  .limit(4).order("id desc").select();""}

                                <div class="row products clearfix">
                                    <c:forEach items="${zhuanjilist12}" var="r">
                                        <div class="col-xs-12 col-md-3 products-col">
                                            <article>
                                                <a href="zhuanjidetail.do?id=${r.id}" class="pro-btn pro-btn-add">
                                                    查看 </a>
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
                                                        <sup>￥ ${r.jiage}</sup>
                                                        <span class="description clearfix"> ${Info.subStr(r.zhuanjixiangqing , 12)} </span>
                                                    </div>
                                                </div>
                                            </article>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="danqu">
                            <div class="list-table">
                                ${danqulist14 = Query.make("danqu").where("issh", "是").where("geshou",map.id)  .limit(10).select();""}

                                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                                    <thead>
                                    <tr align="center">
                                        <th>歌曲名称</th>
                                        <th>歌手</th>
                                        <th>曲风</th>
                                        <th>价格</th>
                                        <th>歌曲</th>


                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="i" value="0"/><c:forEach items="${danqulist14}" var="r"
                                    ><c:set var="i" value="${i+1}"/>
                                        <tr>
                                            <td>${r.gequmingcheng}</td>
                                            <td><ssm:sql var="mapgeshou7"
                                                         type="find">SELECT xingming,id FROM geshou where id='${r.geshou}'</ssm:sql>
                                                    ${mapgeshou7.xingming}</td>
                                            <td>
                                                <ssm:sql var="mapqufeng8"
                                                         type="find">SELECT qufengmingcheng,id FROM qufeng where id='${r.qufeng}'</ssm:sql
                                                >${mapqufeng8.qufengmingcheng}
                                            </td>
                                            <td>${r.jiage}</td>
                                            <td>
                                                <audio src="${r.gequ}" controls="">您的浏览器不支持 audio 标签。</audio>
                                            </td>


                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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

