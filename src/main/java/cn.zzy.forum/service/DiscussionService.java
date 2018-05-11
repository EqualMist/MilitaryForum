package cn.zzy.forum.service;

import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.Info;

import java.util.List;

public interface DiscussionService {
    List<Discussion> showAll();
    Discussion show(int id);
    int addDiscussion(Discussion discussion);
    Discussion showReport(int id);
    Discussion getTitle(int discussion_id);
    Discussion getDiscussionByid(int discussion_id);
    List<Discussion> showAllByuserid(int user_id);
    int deleteDiscussion(int discussion_id);
    int getCountDiscussion(int user_id);
    List<Discussion> showHot();
    List<Discussion> showGood();
    List<Discussion> searchDiscussions(String keyword);
    List<Info> searchInfo(String keyword);
}
