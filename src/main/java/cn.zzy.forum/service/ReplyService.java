package cn.zzy.forum.service;

import cn.zzy.forum.entity.Reply;

import java.util.List;

public interface ReplyService {
    List<Reply> showAllReplies(int discussion_id);

    int addReply(Reply reply);

    Reply show(int id);

    Reply showReort(int id);

    int getCountReply(int user_id);
}
