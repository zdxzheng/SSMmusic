package com.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import com.spring.util.PageInfoUtil;
import com.spring.util.SelectExample;
import java.util.*;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("KuaixunService")
public class KuaixunServiceImpl implements KuaixunService {

    @Resource
    private KuaixunMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Kuaixun> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Kuaixun> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Kuaixun> list = dao.selectPage(example);

        PageInfo<Kuaixun> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Kuaixun kuaixun = new Kuaixun();
        kuaixun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(kuaixun);
    }

    @Override
    public Kuaixun find(Object id) {
        Kuaixun kuaixun = new Kuaixun();
        kuaixun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(kuaixun);
    }

    @Override
    public int insert(Kuaixun pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Kuaixun pojo) {
        return dao.update(pojo);
    }
}
