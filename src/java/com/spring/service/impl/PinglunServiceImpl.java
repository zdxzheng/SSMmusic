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

@Service("PinglunService")
public class PinglunServiceImpl implements PinglunService {

    @Resource
    private PinglunMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Pinglun> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Pinglun> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Pinglun> list = dao.selectPage(example);

        PageInfo<Pinglun> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Pinglun pinglun = new Pinglun();
        pinglun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(pinglun);
    }

    @Override
    public Pinglun find(Object id) {
        Pinglun pinglun = new Pinglun();
        pinglun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(pinglun);
    }

    @Override
    public int insert(Pinglun pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Pinglun pojo) {
        return dao.update(pojo);
    }
}
