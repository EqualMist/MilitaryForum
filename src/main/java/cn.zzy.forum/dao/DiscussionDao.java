package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Discussion;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiscussionDao {
    List<Discussion> showAll();
    Discussion show(int id);
    int addDiscussion(Discussion discussion);
    int addViewNum(int id);
    int addReplyNum(int discussion_id);
    Discussion getUseridByDiscussionid(int target_id);
    int changeDiscussionStatus(int id);
    Discussion showReport(int id);
    Discussion getTitle(int discussion_id);
    int addDiscussionThumbnum(int target_id);
    int deleteDiscussionThumbnum(int target_id);
    Discussion getDiscussionByid(int discussion_id);
    List<Discussion> showAllByuserid(int user_id);
    int deleteDiscussion(int discussion_id);
    int getCountDiscussion(int user_id);
    List<Discussion> showHot();
    List<Discussion> showGood();
    List<Discussion> searchDiscussions(String keyword);
}
