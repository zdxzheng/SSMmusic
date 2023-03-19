<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css" />
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑专辑:</div>
            <div class="panel-body">
                <form action="zhuanjiupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑编号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入专辑编号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="zhuanjibianhao"
                                    name="zhuanjibianhao"
                                    value="${Info.html(mmm.zhuanjibianhao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑名称<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入专辑名称"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写专辑名称"
                                    id="zhuanjimingcheng"
                                    name="zhuanjimingcheng"
                                    value="${Info.html(mmm.zhuanjimingcheng)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑图片</label>
                            <div class="col-sm-10">
                                <div class="input-group" style="width: 250px">
                                    <input type="text" class="form-control" id="zhuanjitupian" name="zhuanjitupian" value="${Info.html(mmm.zhuanjitupian)}" />

                                    <span class="input-group-btn"
                                        ><button
                                            type="button"
                                            class="btn btn-default"
                                            onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=zhuanjitupian'})"
                                        >
                                            上传图片
                                        </button></span
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发行歌手</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_faxinggeshou17"
                                    data-value="${Info.html(mmm.faxinggeshou)}"
                                    id="faxinggeshou"
                                    name="faxinggeshou"
                                    style="width: 250px"
                                >
                                    <ssm:sql var="select" type="select">SELECT * FROM geshou ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.id}">${m.xingming}</option>
                                    </c:forEach>
                                </select>
                                <script>
                                    $(".class_faxinggeshou17").val($(".class_faxinggeshou17").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发行时间</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})"
                                    style="width: 120px"
                                    id="faxingshijian"
                                    name="faxingshijian"
                                    readonly="readonly"
                                    value="${Info.html(mmm.faxingshijian)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">价格<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入价格"
                                    style="width: 150px"
                                    step="0.01"
                                    data-rule-required="true"
                                    data-msg-required="请填写价格"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="jiage"
                                    name="jiage"
                                    value="${Info.html(mmm.jiage)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专辑详情</label>
                            <div class="col-sm-10">
                                <textarea id="zhuanjixiangqing" name="zhuanjixiangqing" style="max-width: 750px; width: 100%; height: 300px">
${Info.html(mmm.zhuanjixiangqing)}</textarea
                                >
                                <script>
                                    (function () {
                                        var um = UM.getEditor("zhuanjixiangqing");
                                    })();
                                </script>
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

