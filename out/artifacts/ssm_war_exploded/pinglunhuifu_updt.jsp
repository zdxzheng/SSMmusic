<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑评论回复:</div>
            <div class="panel-body">
                <form action="pinglunhuifuupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="pinglunid" value="${mmm.pinglunid}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">表<span style="color: red">*</span></label>
                            <div class="col-sm-10">${mmm.biao}<input type="hidden" id="biao" name="biao" value="${Info.html(mmm.biao)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">表id<span style="color: red">*</span></label>
                            <div class="col-sm-10">${mmm.biaoid}<input type="hidden" id="biaoid" name="biaoid" value="${Info.html(mmm.biaoid)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">标题<span style="color: red">*</span></label>
                            <div class="col-sm-10">${mmm.biaoti}<input type="hidden" id="biaoti" name="biaoti" value="${Info.html(mmm.biaoti)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">评论内容</label>
                            <div class="col-sm-10">
                                ${mmm.pinglunneirong}<input type="hidden" id="pinglunneirong" name="pinglunneirong" value="${Info.html(mmm.pinglunneirong)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">回复内容</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入回复内容" id="huifuneirong" name="huifuneirong">
${Info.html(mmm.huifuneirong)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="${mmm.id}" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="${updtself}" type="hidden" />

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
</div>
<%@ include file="foot.jsp" %>

