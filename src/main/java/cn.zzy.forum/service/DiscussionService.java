package cn.zzy.forum.service;

import cn.zzy.forum.entity.Discussion;

import java.util.List;

public interface DiscussionService {
    List<Discussion> showAll();
    Discussion show(int id);
}
