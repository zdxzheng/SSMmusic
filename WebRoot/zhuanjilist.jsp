<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">专辑列表</h3>
            <div class="sidebar-widget-body">
                <div class="module-products clearfix">
                    <div style="margin-bottom: 20px">
                        <div class="pa10 bg-warning">
                            <form class="form-inline" action="?">
                                <!-- form 标签开始 -->

                                <div class="form-group">
                                    <i class="glyphicon glyphicon-search"></i>
                                </div>

                                <div class="form-group">
                                    专辑名称

                                    <input type="text" class="form-control" style="" name="zhuanjimingcheng" value="${param.zhuanjimingcheng}" />
                                </div>
                                <div class="form-group">
                                    发行歌手

                                    <select class="form-control class_faxinggeshou15" data-value="${param.faxinggeshou}" id="faxinggeshou" name="faxinggeshou">
                                        <option value="">请选择</option>
                                        <ssm:sql var="select" type="select">SELECT * FROM geshou ORDER BY id desc</ssm:sql>
                                        <c:forEach items="${select}" var="m">
                                            <option value="${m.id}">${m.xingming}</option>
                                        </c:forEach>
                                    </select>
                                    <script>
                                        $(".class_faxinggeshou15").val($(".class_faxinggeshou15").attr("data-value"));
                                    </script>
                                </div>

                                <select class="form-control" name="order" id="orderby">
                                    <option value="id">按发布时间</option>
                                    <option value="faxingshijian">按发行时间</option>
                                    <option value="jiage">按价格</option>
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

                    <div class="row products clearfix">
                        <c:forEach items="${list}" var="r">
                            <div class="col-xs-12 col-md-3 products-col">
                                <article>
                                    <a href="zhuanjidetail.do?id=${r.id}" class="pro-btn pro-btn-add"> 查看 </a>
                                    <div class="figure-grid">
                                        <div class="image">
                                            <div class="img-box pb100">
                                                <a class="img" href="zhuanjidetail.do?id=${r.id}" style="background-image: url('${r.zhuanjitupian}')"></a>
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

