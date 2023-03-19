<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 收藏 </span>
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
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <form action="shoucang_batch.do" method="post" id="form-batch">
                <div class="list-table">
                    <table width="100%" border="1" class="table table-list table-bordered table-hover">
                        <thead>
                            <tr align="center">
                                <th width="60" data-field="item">序号</th>
                                <th>标题</th>
                                <th>收藏时间</th>
                                <th width="220" data-field="handler">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="i" value="0" /><c:forEach items="${list}" var="map"
                                ><c:set var="i" value="${i+1}" />
                                <tr id="${map.id}" pid="">
                                    <td width="30" align="center">
                                        <label>
                                            <input type="checkbox" name="ids" class="ids" value="${map.id}" />
                                            ${i}
                                        </label>
                                    </td>
                                    <td>${map.biaoti}</td>
                                    <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                    <td align="center">
                                        <a target="_blank" href="__map.biao__detail.do?id=${map.xwid}">详情</a>

                                        <a href="shoucang_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                        <!--qiatnalijne-->
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="" style="margin-top: 10px">
                    <label><input type="checkbox" value="1" onclick="$('.list-table input.ids').prop('checked' , this.checked)" /> 全选/全不选</label>
                    <input type="submit" name="delete" value="批量删除" />
                </div>
            </form>

            <%@ include file="/page.jsp" %>

        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

