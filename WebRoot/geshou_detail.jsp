<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">歌手详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">歌手编号：</div>
                    <div class="detail-content">${map.geshoubianhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">姓名：</div>
                    <div class="detail-content">${map.xingming}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">公司：</div>
                    <div class="detail-content">${map.gongsi}</div>
                </div>
                <div class="detail detail-image">
                    <div class="detail-title">照片：</div>
                    <div class="detail-content">
                        <img src="${map.zhaopian}" style="width: 350px" />
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">地区：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapdiqu5" type="find">SELECT diqumingcheng,id FROM diqu where id='${map.diqu}'</ssm:sql>${mapdiqu5.diqumingcheng}
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">性别：</div>
                    <div class="detail-content">${map.xingbie}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">个人简介：</div>
                    <div class="detail-content">${map.gerenjianjie}</div>
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

