<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">单曲详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">歌曲编号：</div>
                    <div class="detail-content">${map.gequbianhao}</div>
                </div>
                <div class="detail detail-image">
                    <div class="detail-title">图片：</div>
                    <div class="detail-content">
                        <img src="${map.tupian}" style="width: 350px" />
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">歌手：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapgeshou22" type="find">SELECT xingming,id FROM geshou where id='${map.geshou}'</ssm:sql>${mapgeshou22.xingming}
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">曲风：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapqufeng23" type="find">SELECT qufengmingcheng,id FROM qufeng where id='${map.qufeng}'</ssm:sql>${mapqufeng23.qufengmingcheng}
                    </div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">歌曲名称：</div>
                    <div class="detail-content">${map.gequmingcheng}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">价格：</div>
                    <div class="detail-content">${map.jiage}</div>
                </div>
                <div class="detail detail-datetime">
                    <div class="detail-title">发布日期：</div>
                    <div class="detail-content">${map.faburiqi}</div>
                </div>
                <div class="detail detail-audio">
                    <div class="detail-title">歌曲：</div>
                    <div class="detail-content">
                        <audio src="${map.gequ}" controls="">您的浏览器不支持 audio 标签。</audio>
                    </div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">发布人：</div>
                    <div class="detail-content">${map.faburen}</div>
                </div>
                <div class="detail detail-editor">
                    <div class="detail-title">歌词：</div>
                    <div class="detail-content">${map.geci}</div>
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

