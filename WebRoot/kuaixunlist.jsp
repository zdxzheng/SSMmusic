<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">快讯列表</h3>
            <div class="sidebar-widget-body">
                <div class="">
                    <div style="margin-bottom: 20px">
                        <div class="pa10 bg-warning">
                            <form class="form-inline" action="?">
                                <!-- form 标签开始 -->

                                <div class="form-group">
                                    <i class="glyphicon glyphicon-search"></i>
                                </div>

                                <div class="form-group">
                                    编号

                                    <input type="text" class="form-control" style="" name="bianhao" value="${param.bianhao}" />
                                </div>
                                <div class="form-group">
                                    标题

                                    <input type="text" class="form-control" style="" name="biaoti" value="${param.biaoti}" />
                                </div>

                                <select class="form-control" name="order" id="orderby">
                                    <option value="id">按发布时间</option>
                                </select>
                                <select class="form-control" name="sort" id="sort">
                                    <option value="desc">倒序</option>
                                    <option value="asc">升序</option>
                                </select>
                                <script>
                                    $("#orderby").val("${orderby}");
                                    $("#sort").val("${sort}");
                                </script>
                                <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i> 搜索</button>

                                <!--form标签结束-->
                            </form>
                        </div>
                    </div>
                    <div class="news-list">
                        <ul>
                            <c:forEach items="${list}" var="r">
                                <li class="clearfix">
                                    <a href="kuaixundetail.do?id=${r.id}">
                                        <div class="thumb">
                                            <div class="img-box pb100">
                                                <div class="img" style="background-image: url('${r.tupian}')"></div>
                                            </div>
                                        </div>
                                    </a>

                                    <div class="news-content-text">
                                        <a href="kuaixundetail.do?id=${r.id}">
                                            <h3>${r.biaoti}</h3>
                                        </a>
                                        <div class="description">${Info.subStr(r.neirong, 80)}</div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <%@ include file="/page.jsp" %>

                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

