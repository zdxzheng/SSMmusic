<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>

<script src="js/jquery.validate.js"></script>

<div class="container">
    <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">添加评论回复:</div>
        <div class="panel-body">
            <form action="pinglunhuifuinsert.do" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <input type="hidden" name="pinglunid" value="${param.id}" />
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">表<span style="color: red">*</span></label>
                        <div class="col-sm-10">${readMap.biao}<input type="hidden" id="biao" name="biao" value="${Info.html(readMap.biao)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">表id<span style="color: red">*</span></label>
                        <div class="col-sm-10">${readMap.biaoid}<input type="hidden" id="biaoid" name="biaoid" value="${Info.html(readMap.biaoid)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">标题<span style="color: red">*</span></label>
                        <div class="col-sm-10">${readMap.biaoti}<input type="hidden" id="biaoti" name="biaoti" value="${Info.html(readMap.biaoti)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">评论内容</label>
                        <div class="col-sm-10">
                            ${readMap.pinglunneirong}<input type="hidden" id="pinglunneirong" name="pinglunneirong" value="${Info.html(readMap.pinglunneirong)}" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">评论人</label>
                        <div class="col-sm-10">${readMap.pinglunren}<input type="hidden" id="pinglunren" name="pinglunren" value="${Info.html(readMap.pinglunren)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">回复内容</label>
                        <div class="col-sm-10">
                            <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入回复内容" id="huifuneirong" name="huifuneirong"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">回复人</label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入回复人"
                                style="width: 150px"
                                readonly="readonly"
                                id="huifuren"
                                name="huifuren"
                                value="${sessionScope.username}"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                        <div class="col-sm-10">
                            <input name="referer" id="referers" class="referers" value="<%=request.getHeader("referer") %>" type="hidden" />
                            <script>
                                $(function () {
                                    $("input.referers").val(document.referrer);
                                });
                            </script>

                            <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                            <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                        </div>
                    </div>
                </div>

                <!--form标签结束-->
            </form>
        </div>
    </div>

    <!-- container定宽，并剧中结束 -->
</div>

<script>
    $(function () {
        $("#form1").validate();
    });
</script>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

