package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface PinglunhuifuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Pinglunhuifu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Pinglunhuifu> selectPage(SelectExample example);
    // 删除数据
    int delete(Pinglunhuifu pojo);
    // 查询一行数据
    Pinglunhuifu find(Pinglunhuifu pojo);
    // 插入数据
    int insert(Pinglunhuifu pojo);
    // 更新数据
    int update(Pinglunhuifu pojo);
}
