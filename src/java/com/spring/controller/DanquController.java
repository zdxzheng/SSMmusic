package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 单曲 模块访问入口
 */
@Controller
public class DanquController extends BaseController {

    @Autowired
    private DanquMapper dao;

    @Autowired
    private DanquService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/danqu_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 创建初始条件为：1=1
        where += getWhere(); // 从方法中获取url 上的参数，并写成 sql条件语句
        example.setWhere(where); // 将条件写进sql里面
        example.setOrder(order + " " + sort); // 设置查询的排序情况

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page); // 取两个数的最大值，防止page 小于1
        List<Danqu> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "danqu_list"; // 使用视图文件：WebRoot\danqu_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("gequbianhao").equals("")) {
            where += " AND gequbianhao LIKE '%" + Request.get("gequbianhao") + "%' ";
        }
        if (!Request.get("geshou").equals("")) {
            where += " AND geshou ='" + Request.get("geshou") + "' ";
        }
        if (!Request.get("qufeng").equals("")) {
            where += " AND qufeng ='" + Request.get("qufeng") + "' ";
        }
        if (!Request.get("gequmingcheng").equals("")) {
            where += " AND gequmingcheng LIKE '%" + Request.get("gequmingcheng") + "%' ";
        }
        return where;
    }

    /**
     * 发布人列表
     */
    @RequestMapping("/danqu_list_faburen")
    public String listfaburen() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：发布人=当前登录用户
        String where = " faburen='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Danqu> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "danqu_list_faburen";
    }

    /**
     *  前台列表页
     *
     */
    @RequestMapping("/danqulist")
    public String index() {
        String order = Request.get("order", "id"); //获取浏览器上地址栏参数  order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); //获取浏览器上地址栏参数  sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 初始化为所有数据
        where += " AND issh='是' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取当前页
        page = Math.max(1, page);
        List<Danqu> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        request.setAttribute("where", where);
        assign("orderby", order);
        assign("sort", sort);
        return "danqulist";
    }

    @RequestMapping("/danqu_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "danqu_add";
    }

    @RequestMapping("/danqu_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Danqu mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "danqu_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/danquinsert")
    public String insert() {
        String tmp = "";
        Danqu post = new Danqu(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setGequbianhao(Request.get("gequbianhao"));

        post.setTupian(Request.get("tupian"));

        post.setGeshou(Request.get("geshou"));

        post.setQufeng(Request.get("qufeng"));

        post.setGequmingcheng(Request.get("gequmingcheng"));

        post.setJiage(Request.getDouble("jiage"));

        post.setFaburiqi(Request.get("faburiqi"));

        post.setGequ(Request.get("gequ"));

        post.setGeci(Info.download(Request.get("geci")));

        post.setFaburen(Request.get("faburen"));

        post.setIssh(Request.get("issh", "否"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/danquupdate")
    public String update() {
        // 创建实体类
        Danqu post = new Danqu();
        // 将前台表单数据填充到实体类
        if (!Request.get("gequbianhao").equals("")) post.setGequbianhao(Request.get("gequbianhao"));
        if (!Request.get("tupian").equals("")) post.setTupian(Request.get("tupian"));
        if (!Request.get("geshou").equals("")) post.setGeshou(Request.get("geshou"));
        if (!Request.get("qufeng").equals("")) post.setQufeng(Request.get("qufeng"));
        if (!Request.get("gequmingcheng").equals("")) post.setGequmingcheng(Request.get("gequmingcheng"));
        if (!Request.get("jiage").equals("")) post.setJiage(Request.getDouble("jiage"));
        if (!Request.get("faburiqi").equals("")) post.setFaburiqi(Request.get("faburiqi"));
        if (!Request.get("gequ").equals("")) post.setGequ(Request.get("gequ"));
        if (!Request.get("geci").equals("")) post.setGeci(Info.download(Request.get("geci")));
        if (!Request.get("faburen").equals("")) post.setFaburen(Request.get("faburen"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/danqu_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Danqu map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "danqu_detail"; // 详情页面：WebRoot\danqu_detail.jsp
    }

    /**
     *  前台详情
     */
    @RequestMapping("/danqudetail")
    public String detailweb() {
        int id = Request.getInt("id");
        Danqu map = service.find(id);

        request.setAttribute("map", map);
        return "danqudetail"; // 前台详情页面：WebRoot\danqudetail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/danqu_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("danqu").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
