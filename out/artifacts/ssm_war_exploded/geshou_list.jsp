<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 歌手 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        歌手编号

                        <input type="text" class="form-control" style="" name="geshoubianhao"
                               value="${param.geshoubianhao}"/>
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/>
                    </div>
                    <div class="form-group">
                        地区

                        <select class="form-control class_diqu6" data-value="${param.diqu}" data-rule-required="true"
                                data-msg-required="请填写地区" id="diqu" name="diqu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM diqu ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.diqumingcheng}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_diqu6").val($(".class_diqu6").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        性别

                        <select
                                class="form-control class_xingbie7"
                                data-value="${param.xingbie}"
                                data-rule-required="true"
                                data-msg-required="请填写性别"
                                id="xingbie"
                                name="xingbie"
                        >
                            <option value="">请选择</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                        <script>
                            $(".class_xingbie7").val($(".class_xingbie7").attr("data-value"));
                        </script>
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
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th>歌手编号</th>
                        <th>照片</th>
                        <th>姓名</th>
                        <th>地区</th>
                        <th>性别</th>
                        <th>公司</th>

                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"
                    ><c:set var="i" value="${i+1}"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label> ${i} </label>
                            </td>
                            <td>${map.geshoubianhao}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${'' == map.zhaopian }"> -</c:when><c:otherwise><img width="100"
                                                                                                       src="${map.zhaopian}"/></c:otherwise
                                ></c:choose>
                            </td>
                            <td>${map.xingming}</td>
                            <td><ssm:sql var="mapdiqu4"
                                         type="find">SELECT diqumingcheng,id FROM diqu where id='${map.diqu}'</ssm:sql>
                                ${mapdiqu4.diqumingcheng}</td>
                            <td>${map.xingbie}</td>
                            <td>${map.gongsi}</td>

                            <td align="center">
                                <a href="geshou_detail.do?id=${map.id}">详情</a>

                                <a href="geshou_updt.do?id=${map.id}">编辑</a>

                                <a href="geshou_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <%@ include file="/page.jsp" %>

        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

