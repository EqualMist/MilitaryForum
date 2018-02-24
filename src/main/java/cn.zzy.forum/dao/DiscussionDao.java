package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Discussion;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiscussionDao {
    List<Discussion> showAll();
    Discussion show(int id);
}
