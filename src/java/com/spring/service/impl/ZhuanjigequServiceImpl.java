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

@Service("ZhuanjigequService")
public class ZhuanjigequServiceImpl implements ZhuanjigequService {

    @Resource
    private ZhuanjigequMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Zhuanjigequ> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhuanjigequ> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhuanjigequ> list = dao.selectPage(example);

        PageInfo<Zhuanjigequ> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhuanjigequ zhuanjigequ = new Zhuanjigequ();
        zhuanjigequ.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhuanjigequ);
    }

    @Override
    public Zhuanjigequ find(Object id) {
        Zhuanjigequ zhuanjigequ = new Zhuanjigequ();
        zhuanjigequ.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhuanjigequ);
    }

    @Override
    public int insert(Zhuanjigequ pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhuanjigequ pojo) {
        return dao.update(pojo);
    }
}
