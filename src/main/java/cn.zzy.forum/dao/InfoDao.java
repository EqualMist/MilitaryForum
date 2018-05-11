package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Info;

import java.util.List;

public interface InfoDao {
    List<Info> searchInfo(String keyword);
}
