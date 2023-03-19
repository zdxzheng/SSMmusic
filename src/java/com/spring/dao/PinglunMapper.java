package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface PinglunMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Pinglun> selectAll(SelectExample example);

    // 按分页查询数据
    List<Pinglun> selectPage(SelectExample example);
    // 删除数据
    int delete(Pinglun pojo);
    // 查询一行数据
    Pinglun find(Pinglun pojo);
    // 插入数据
    int insert(Pinglun pojo);
    // 更新数据
    int update(Pinglun pojo);
}
