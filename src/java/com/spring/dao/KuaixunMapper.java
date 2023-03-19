package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface KuaixunMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Kuaixun> selectAll(SelectExample example);

    // 按分页查询数据
    List<Kuaixun> selectPage(SelectExample example);
    // 删除数据
    int delete(Kuaixun pojo);
    // 查询一行数据
    Kuaixun find(Kuaixun pojo);
    // 插入数据
    int insert(Kuaixun pojo);
    // 更新数据
    int update(Kuaixun pojo);
}
