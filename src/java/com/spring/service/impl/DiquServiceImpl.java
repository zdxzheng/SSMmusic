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

@Service("DiquService")
public class DiquServiceImpl implements DiquService {

    @Resource
    private DiquMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Diqu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Diqu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Diqu> list = dao.selectPage(example);

        PageInfo<Diqu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Diqu diqu = new Diqu();
        diqu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(diqu);
    }

    @Override
    public Diqu find(Object id) {
        Diqu diqu = new Diqu();
        diqu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(diqu);
    }

    @Override
    public int insert(Diqu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Diqu pojo) {
        return dao.update(pojo);
    }
}
