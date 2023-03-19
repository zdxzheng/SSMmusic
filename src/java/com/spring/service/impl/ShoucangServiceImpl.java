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

@Service("ShoucangService")
public class ShoucangServiceImpl implements ShoucangService {

    @Resource
    private ShoucangMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Shoucang> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Shoucang> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Shoucang> list = dao.selectPage(example);

        PageInfo<Shoucang> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Shoucang shoucang = new Shoucang();
        shoucang.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(shoucang);
    }

    @Override
    public Shoucang find(Object id) {
        Shoucang shoucang = new Shoucang();
        shoucang.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(shoucang);
    }

    @Override
    public int insert(Shoucang pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Shoucang pojo) {
        return dao.update(pojo);
    }
}
