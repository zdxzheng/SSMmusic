package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface DanquMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Danqu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Danqu> selectPage(SelectExample example);
    // 删除数据
    int delete(Danqu pojo);
    // 查询一行数据
    Danqu find(Danqu pojo);
    // 插入数据
    int insert(Danqu pojo);
    // 更新数据
    int update(Danqu pojo);
}
