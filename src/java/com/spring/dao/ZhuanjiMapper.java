package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhuanjiMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhuanji> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhuanji> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhuanji pojo);
    // 查询一行数据
    Zhuanji find(Zhuanji pojo);
    // 插入数据
    int insert(Zhuanji pojo);
    // 更新数据
    int update(Zhuanji pojo);
}
