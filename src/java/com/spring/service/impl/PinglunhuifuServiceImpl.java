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

@Service("PinglunhuifuService")
public class PinglunhuifuServiceImpl implements PinglunhuifuService {

    @Resource
    private PinglunhuifuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Pinglunhuifu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Pinglunhuifu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Pinglunhuifu> list = dao.selectPage(example);

        PageInfo<Pinglunhuifu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Pinglunhuifu pinglunhuifu = new Pinglunhuifu();
        pinglunhuifu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(pinglunhuifu);
    }

    @Override
    public Pinglunhuifu find(Object id) {
        Pinglunhuifu pinglunhuifu = new Pinglunhuifu();
        pinglunhuifu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(pinglunhuifu);
    }

    @Override
    public int insert(Pinglunhuifu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Pinglunhuifu pojo) {
        return dao.update(pojo);
    }
}
