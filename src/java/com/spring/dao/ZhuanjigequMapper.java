package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhuanjigequMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhuanjigequ> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhuanjigequ> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhuanjigequ pojo);
    // 查询一行数据
    Zhuanjigequ find(Zhuanjigequ pojo);
    // 插入数据
    int insert(Zhuanjigequ pojo);
    // 更新数据
    int update(Zhuanjigequ pojo);
}
