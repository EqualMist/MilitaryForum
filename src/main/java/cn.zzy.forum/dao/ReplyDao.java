package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Reply;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyDao {
    List<Reply> showAllReplies(int discussion_id);
    int addReply(Reply reply);
    Reply getUseridByReplyid(int target_id);
    Reply show(int id);
    int changeReplyStatus(int id);
    Reply showReport(int id);
    int addReplyThumbnum(int target_id);
    int deleteReplyThumbnum(int target_id);
    int getCountReply(int user_id);
}
