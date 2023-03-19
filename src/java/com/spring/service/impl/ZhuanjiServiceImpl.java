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

@Service("ZhuanjiService")
public class ZhuanjiServiceImpl implements ZhuanjiService {

    @Resource
    private ZhuanjiMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Zhuanji> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhuanji> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhuanji> list = dao.selectPage(example);

        PageInfo<Zhuanji> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhuanji zhuanji = new Zhuanji();
        zhuanji.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhuanji);
    }

    @Override
    public Zhuanji find(Object id) {
        Zhuanji zhuanji = new Zhuanji();
        zhuanji.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhuanji);
    }

    @Override
    public int insert(Zhuanji pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhuanji pojo) {
        return dao.update(pojo);
    }
}
