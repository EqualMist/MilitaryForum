package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.DiscussionDao;
import cn.zzy.forum.dao.ReplyDao;
import cn.zzy.forum.entity.Reply;
import cn.zzy.forum.service.ReplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {
    @Resource
    private ReplyDao replyDao;
    @Resource
    private DiscussionDao discussionDao;

    @Override
    public List<Reply> showAllReplies(int discussion_id) {
        return replyDao.showAllReplies(discussion_id);
    }

    @Override
    public int addReply(Reply reply) {
        int i =0;
        if (reply!=null) {
            i = discussionDao.addReplyNum(reply.getDiscussion_id());
        }
        if (i > 0) {
            return replyDao.addReply(reply);
        }
        else {
            return 0;
        }
    }

    @Override
    public Reply show(int id) {
        return replyDao.show(id);
    }

    @Override
    public Reply showReort(int id) {
        return replyDao.showReport(id);
    }

    @Override
    public int getCountReply(int user_id) {
        return replyDao.getCountReply(user_id);
    }
}
