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
 * 专辑 模块访问入口
 */
@Controller
public class ZhuanjiController extends BaseController {

    @Autowired
    private ZhuanjiMapper dao;

    @Autowired
    private ZhuanjiService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/zhuanji_list")
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
        List<Zhuanji> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "zhuanji_list"; // 使用视图文件：WebRoot\zhuanji_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("zhuanjimingcheng").equals("")) {
            where += " AND zhuanjimingcheng LIKE '%" + Request.get("zhuanjimingcheng") + "%' ";
        }
        if (!Request.get("faxinggeshou").equals("")) {
            where += " AND faxinggeshou ='" + Request.get("faxinggeshou") + "' ";
        }
        return where;
    }

    /**
     *  前台列表页
     *
     */
    @RequestMapping("/zhuanjilist")
    public String index() {
        String order = Request.get("order", "id"); //获取浏览器上地址栏参数  order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); //获取浏览器上地址栏参数  sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 初始化为所有数据

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取当前页
        page = Math.max(1, page);
        List<Zhuanji> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        request.setAttribute("where", where);
        assign("orderby", order);
        assign("sort", sort);
        return "zhuanjilist";
    }

    @RequestMapping("/zhuanji_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "zhuanji_add";
    }

    @RequestMapping("/zhuanji_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Zhuanji mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "zhuanji_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/zhuanjiinsert")
    public String insert() {
        String tmp = "";
        Zhuanji post = new Zhuanji(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setZhuanjibianhao(Request.get("zhuanjibianhao"));

        post.setZhuanjimingcheng(Request.get("zhuanjimingcheng"));

        post.setZhuanjitupian(Request.get("zhuanjitupian"));

        post.setFaxinggeshou(Request.get("faxinggeshou"));

        post.setFaxingshijian(Request.get("faxingshijian"));

        post.setJiage(Request.getDouble("jiage"));

        post.setZhuanjixiangqing(Info.download(Request.get("zhuanjixiangqing")));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/zhuanjiupdate")
    public String update() {
        // 创建实体类
        Zhuanji post = new Zhuanji();
        // 将前台表单数据填充到实体类
        if (!Request.get("zhuanjibianhao").equals("")) post.setZhuanjibianhao(Request.get("zhuanjibianhao"));
        if (!Request.get("zhuanjimingcheng").equals("")) post.setZhuanjimingcheng(Request.get("zhuanjimingcheng"));
        if (!Request.get("zhuanjitupian").equals("")) post.setZhuanjitupian(Request.get("zhuanjitupian"));
        if (!Request.get("faxinggeshou").equals("")) post.setFaxinggeshou(Request.get("faxinggeshou"));
        if (!Request.get("faxingshijian").equals("")) post.setFaxingshijian(Request.get("faxingshijian"));
        if (!Request.get("jiage").equals("")) post.setJiage(Request.getDouble("jiage"));
        if (!Request.get("zhuanjixiangqing").equals("")) post.setZhuanjixiangqing(Info.download(Request.get("zhuanjixiangqing")));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/zhuanji_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Zhuanji map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "zhuanji_detail"; // 详情页面：WebRoot\zhuanji_detail.jsp
    }

    /**
     *  前台详情
     */
    @RequestMapping("/zhuanjidetail")
    public String detailweb() {
        int id = Request.getInt("id");
        Zhuanji map = service.find(id);

        request.setAttribute("map", map);
        return "zhuanjidetail"; // 前台详情页面：WebRoot\zhuanjidetail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/zhuanji_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("zhuanji").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
