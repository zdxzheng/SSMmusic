package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface GeshouMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Geshou> selectAll(SelectExample example);

    // 按分页查询数据
    List<Geshou> selectPage(SelectExample example);
    // 删除数据
    int delete(Geshou pojo);
    // 查询一行数据
    Geshou find(Geshou pojo);
    // 插入数据
    int insert(Geshou pojo);
    // 更新数据
    int update(Geshou pojo);
}
