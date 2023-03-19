package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface QufengMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Qufeng> selectAll(SelectExample example);

    // 按分页查询数据
    List<Qufeng> selectPage(SelectExample example);
    // 删除数据
    int delete(Qufeng pojo);
    // 查询一行数据
    Qufeng find(Qufeng pojo);
    // 插入数据
    int insert(Qufeng pojo);
    // 更新数据
    int update(Qufeng pojo);
}
