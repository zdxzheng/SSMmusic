package com.spring.service;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;

public interface ZhuanjigequService {
    // 查询总行数
    Integer count(SelectExample map);
    // 按分页查询数据
    List<Zhuanjigequ> selectPage(SelectExample example, int page, int pageSize);
    // 搜索全部数据
    List<Zhuanjigequ> selectAll(SelectExample example);
    // 按id删除一行数据
    int delete(Object id);
    // 查询一行数据
    Zhuanjigequ find(Object id);
    // 插入一行数据
    int insert(Zhuanjigequ pojo);
    // 更新一行数据
    int update(Zhuanjigequ pojo);
}
