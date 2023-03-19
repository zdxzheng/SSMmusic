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

@Service("QufengService")
public class QufengServiceImpl implements QufengService {

    @Resource
    private QufengMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Qufeng> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Qufeng> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Qufeng> list = dao.selectPage(example);

        PageInfo<Qufeng> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Qufeng qufeng = new Qufeng();
        qufeng.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(qufeng);
    }

    @Override
    public Qufeng find(Object id) {
        Qufeng qufeng = new Qufeng();
        qufeng.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(qufeng);
    }

    @Override
    public int insert(Qufeng pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Qufeng pojo) {
        return dao.update(pojo);
    }
}
