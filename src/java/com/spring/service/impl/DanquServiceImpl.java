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

@Service("DanquService")
public class DanquServiceImpl implements DanquService {

    @Resource
    private DanquMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Danqu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Danqu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Danqu> list = dao.selectPage(example);

        PageInfo<Danqu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Danqu danqu = new Danqu();
        danqu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(danqu);
    }

    @Override
    public Danqu find(Object id) {
        Danqu danqu = new Danqu();
        danqu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(danqu);
    }

    @Override
    public int insert(Danqu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Danqu pojo) {
        return dao.update(pojo);
    }
}
