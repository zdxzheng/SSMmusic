<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li class="sub-menu">
    <a href="javascript:;">
        <i class="fa fa-angle-right"></i>
        <span>个人中心</span>
    </a>
    <ul class="sub">
        <li><a href="yonghu_updtself.do" target="main">修改个人资料</a></li>
        <li><a href="mod.do" target="main">修改密码</a></li>
        <li><a href="shoucang_list_username.do" target="main">我的歌单收藏</a></li>
        <li><a href="pinglun_list_pinglunren.do" target="main">我的评论</a></li>
    </ul>
</li>
