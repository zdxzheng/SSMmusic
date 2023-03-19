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

@Service("GeshouService")
public class GeshouServiceImpl implements GeshouService {

    @Resource
    private GeshouMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Geshou> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Geshou> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Geshou> list = dao.selectPage(example);

        PageInfo<Geshou> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Geshou geshou = new Geshou();
        geshou.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(geshou);
    }

    @Override
    public Geshou find(Object id) {
        Geshou geshou = new Geshou();
        geshou.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(geshou);
    }

    @Override
    public int insert(Geshou pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Geshou pojo) {
        return dao.update(pojo);
    }
}
