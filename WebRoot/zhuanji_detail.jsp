<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">专辑详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">专辑编号：</div>
                    <div class="detail-content">${map.zhuanjibianhao}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">专辑名称：</div>
                    <div class="detail-content">${map.zhuanjimingcheng}</div>
                </div>
                <div class="detail detail-image">
                    <div class="detail-title">专辑图片：</div>
                    <div class="detail-content">
                        <img src="${map.zhuanjitupian}" style="width: 350px" />
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">发行歌手：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapgeshou10" type="find">SELECT xingming,id FROM geshou where id='${map.faxinggeshou}'</ssm:sql>${mapgeshou10.xingming}
                    </div>
                </div>
                <div class="detail detail-date">
                    <div class="detail-title">发行时间：</div>
                    <div class="detail-content">${map.faxingshijian}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">价格：</div>
                    <div class="detail-content">${map.jiage}</div>
                </div>
                <div class="detail detail-editor">
                    <div class="detail-title">专辑详情：</div>
                    <div class="detail-content">${map.zhuanjixiangqing}</div>
                </div>
            </div>

            <div class="button-list mt10">
                <div class="">
                    <button type="button" class="btn btn-default" onclick="history.go(-1);">返回</button>
                    <button type="button" class="btn btn-default" onclick="window.print()">打印本页</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

