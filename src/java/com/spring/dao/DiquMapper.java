package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface DiquMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Diqu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Diqu> selectPage(SelectExample example);
    // 删除数据
    int delete(Diqu pojo);
    // 查询一行数据
    Diqu find(Diqu pojo);
    // 插入数据
    int insert(Diqu pojo);
    // 更新数据
    int update(Diqu pojo);
}
