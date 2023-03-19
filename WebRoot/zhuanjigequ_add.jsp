<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css" />
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">添加专辑歌曲:</div>
            <div class="panel-body">
                <form action="zhuanjigequinsert.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="zhuanjiid" value="${param.id}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑编号</label>
                            <div class="col-sm-10">
                                ${readMap.zhuanjibianhao}<input type="hidden" id="zhuanjibianhao" name="zhuanjibianhao" value="${Info.html(readMap.zhuanjibianhao)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑名称</label>
                            <div class="col-sm-10">
                                ${readMap.zhuanjimingcheng}<input type="hidden" id="zhuanjimingcheng" name="zhuanjimingcheng" value="${Info.html(readMap.zhuanjimingcheng)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发行歌手</label>
                            <div class="col-sm-10">
                                <ssm:sql var="mapgeshou16" type="find">SELECT xingming,id FROM geshou where id='${readMap.faxinggeshou}'</ssm:sql>${mapgeshou16.xingming}<input
                                    type="hidden"
                                    id="faxinggeshou"
                                    name="faxinggeshou"
                                    value="${Info.html(readMap.faxinggeshou)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑图片</label>
                            <div class="col-sm-10">
                                <c:choose>
                                    <c:when test="${'' == readMap.zhuanjitupian }"> -</c:when
                                    ><c:otherwise><img width="100" src="${readMap.zhuanjitupian}" /></c:otherwise></c:choose
                                ><input type="hidden" id="zhuanjitupian" name="zhuanjitupian" value="${Info.html(readMap.zhuanjitupian)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">歌曲名称<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入歌曲名称"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写歌曲名称"
                                    id="gequmingcheng"
                                    name="gequmingcheng"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">歌曲</label>
                            <div class="col-sm-10">
                                <div class="input-group" style="width: 250px">
                                    <input type="text" class="form-control" id="gequ" name="gequ" value="" />

                                    <span class="input-group-btn"
                                        ><button
                                            type="button"
                                            class="btn btn-default"
                                            onclick="layer.open({type:2,title:'上传文件',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=gequ'})"
                                        >
                                            上传文件
                                        </button></span
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">歌词</label>
                            <div class="col-sm-10">
                                <textarea id="geci" name="geci" style="max-width: 750px; width: 100%; height: 300px"></textarea>
                                <script>
                                    (function () {
                                        var um = UM.getEditor("geci");
                                    })();
                                </script>
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
</div>
<%@ include file="foot.jsp" %>

