package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ShoucangMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Shoucang> selectAll(SelectExample example);

    // 按分页查询数据
    List<Shoucang> selectPage(SelectExample example);
    // 删除数据
    int delete(Shoucang pojo);
    // 查询一行数据
    Shoucang find(Shoucang pojo);
    // 插入数据
    int insert(Shoucang pojo);
    // 更新数据
    int update(Shoucang pojo);
}
