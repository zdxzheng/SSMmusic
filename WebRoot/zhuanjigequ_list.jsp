<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 专辑歌曲 </span>
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
                        专辑名称

                        <input type="text" class="form-control" style="" name="zhuanjimingcheng" value="${param.zhuanjimingcheng}" />
                    </div>
                    <div class="form-group">
                        发行歌手

                        <select class="form-control class_faxinggeshou18" data-value="${param.faxinggeshou}" id="faxinggeshou" name="faxinggeshou">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM geshou ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.xingming}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_faxinggeshou18").val($(".class_faxinggeshou18").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        歌曲名称

                        <input type="text" class="form-control" style="" name="gequmingcheng" value="${param.gequmingcheng}" />
                    </div>
                    <div class="form-group">歌曲</div>
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
                            <th>专辑编号</th>
                            <th>专辑名称</th>
                            <th>发行歌手</th>
                            <th>专辑图片</th>
                            <th>歌曲名称</th>
                            <th>歌曲</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="i" value="0" /><c:forEach items="${list}" var="map"
                            ><c:set var="i" value="${i+1}" />
                            <tr id="${map.id}" pid="">
                                <td width="30" align="center">
                                    <label> ${i} </label>
                                </td>
                                <td>${map.zhuanjibianhao}</td>
                                <td>${map.zhuanjimingcheng}</td>
                                <td><ssm:sql var="mapgeshou13" type="find">SELECT xingming,id FROM geshou where id='${map.faxinggeshou}'</ssm:sql>${mapgeshou13.xingming}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${'' == map.zhuanjitupian }"> -</c:when><c:otherwise><img width="100" src="${map.zhuanjitupian}" /></c:otherwise
                                    ></c:choose>
                                </td>
                                <td>${map.gequmingcheng}</td>
                                <td><audio src="${map.gequ}" controls="">您的浏览器不支持 audio 标签。</audio></td>
                                <td align="center">
                                    <a href="zhuanjigequ_detail.do?id=${map.id}">详情</a>

                                    <a href="zhuanjigequ_updt.do?id=${map.id}">编辑</a>

                                    <a href="zhuanjigequ_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

