<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">详情</h3>
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
                                    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
                                    <h1 class="entry-title uppercase">${map.gequmingcheng}</h1>
                                </header>
                                <article class="entry-content">
                                    <figure>
                                        <span class="entry-price inline-middle">￥${map.jiage}</span>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">曲风:</span>
                                                <span class="value"
                                                    ><ssm:sql var="mapqufeng24" type="find">SELECT qufengmingcheng,id FROM qufeng where id='${map.qufeng}'</ssm:sql
                                                    >${mapqufeng24.qufengmingcheng}</span
                                                >
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">发布日期:</span>
                                                <span class="value">${map.faburiqi}</span>
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">歌曲:</span>
                                                <span class="value"><audio src="${map.gequ}" controls="">您的浏览器不支持 audio 标签。</audio></span>
                                            </li>
                                        </ul>
                                        <ul class="entry-meta unstyled">
                                            <li>
                                                <span class="key">发布人:</span>
                                                <span class="value">${map.faburen}</span>
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
                                                ${shoucangCount = Query.make("shoucang").where("biao", "danqu").where("xwid", map.id).where("username",
                                                sessionScope.username).field("count(*) as count").find();""}
                                                <c:choose>
                                                    <c:when test="${shoucangCount.count !=  '0'  }">
                                                        <button
                                                            type="button"
                                                            class="btn btn-default"
                                                            onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=danqu&biaoti=${map.gequmingcheng}'"
                                                        >
                                                            取消收藏
                                                        </button> </c:when
                                                    ><c:otherwise>
                                                        <button
                                                            type="button"
                                                            class="btn btn-default"
                                                            onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=danqu&biaoti=${map.gequmingcheng}'"
                                                        >
                                                            收藏
                                                        </button>
                                                    </c:otherwise></c:choose
                                                > </c:when
                                            ><c:otherwise>
                                                <button
                                                    type="button"
                                                    class="btn btn-default"
                                                    onclick="location.href='shoucanginsert.do?xwid=${map.id}&biao=danqu&biaoti=${map.gequmingcheng}'"
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
                                <li class="active"><a href="javascript:;" data-toggle="tab">歌词</a></li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="product-description">
                                <p>${map.geci}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    $(function () {
                        var images = "${map.tupian}".split(",");
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
                    <h3 class="section-title">评论区</h3>
                    <div class="sidebar-widget-body">
                        <div class="gr-control-module-table">
                            <div class="">
                                <form action="pingluninsert.do" method="post">
                                    <!-- form 标签开始 -->

                                    <div class="form-group" style="display: none">
                                        <div class="row">
                                            <label style="text-align: right" class="col-sm-2 hiddex-xs">评分</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" name="pingfen">
                                                    <option value="1">1分</option>
                                                    <option value="2">2分</option>
                                                    <option value="3">3分</option>
                                                    <option value="4">4分</option>
                                                    <option value="5">5分</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <textarea style="width: 80%; height: 120px" class="form-control" name="pinglunneirong" placeholder="请输入评论内容"></textarea>
                                    </div>
                                    <input type="hidden" name="biao" value="danqu" />
                                    <input name="biaoid" type="hidden" id="biaoid" value="${param.id}" />
                                    <input name="biaoti" type="hidden" id="biaoti" value="${map.gequmingcheng}" />
                                    <input name="pinglunren" type="hidden" value="${sessionScope.username}" />
                                    <div style="text-align: left">
                                        <button type="submit" class="btn btn-primary">发布评论</button>
                                    </div>

                                    <!--form标签结束-->
                                </form>
                            </div>

                            ${pinglunList = Query.make("pinglun").where("biao", "danqu").where("biaoid", param.id).order("id desc").select();""}

                            <div class="mt10">
                                <c:forEach items="${pinglunList}" var="pl">
                                    ${user = Query.make("yonghu").where("yonghuming", pl.pinglunren).find();""}

                                    <div class="comment clearfix">
                                        <div class="common-avatar J_User">
                                            <c:choose>
                                                <c:when test="${user.touxiang == null || '' == user.touxiang }">
                                                    <img src="images/default.gif" width="100%" height="100%" /> </c:when
                                                ><c:otherwise>
                                                    <img src="${user.touxiang}" width="100%" height="100%" /> </c:otherwise
                                            ></c:choose>
                                        </div>
                                        <div class="comment-block">
                                            <p class="comment-user">
                                                <span class="comment-username J_User"> ${user.xingming} </span>
                                                <span class="comment-time">${pl.addtime}</span>
                                            </p>
                                            <div class="comment-content J_CommentContent">${pl.pinglunneirong}</div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
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

