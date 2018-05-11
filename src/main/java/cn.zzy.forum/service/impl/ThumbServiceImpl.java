package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.DiscussionDao;
import cn.zzy.forum.dao.ReplyDao;
import cn.zzy.forum.dao.ThumbDao;
import cn.zzy.forum.dao.UserDao;
import cn.zzy.forum.entity.Thumb;
import cn.zzy.forum.service.ThumbService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("thumbService")
public class ThumbServiceImpl implements ThumbService{

    @Resource
    private ThumbDao thumbDao;
    @Resource
    private DiscussionDao discussionDao;
    @Resource
    private ReplyDao replyDao;
    @Resource
    private UserDao userDao;

    @Override
    public Thumb findThumb(String type,int user_id, int target_id) {
        return thumbDao.findThumb(type,user_id,target_id);
    }

    @Override
    public Thumb findThumbDiscussion(int user_id, int target_id) {
        return thumbDao.findThumbDiscussion(user_id,target_id);
    }

    @Override
    public Thumb findThumbReply(int user_id, int target_id) {
        return thumbDao.findThumbReply(user_id,target_id);
    }

    @Override
    public int addThumbDiscussion(Thumb thumb) {
        int status = thumbDao.addThumbDiscussion(thumb);
        int status1 = 0;
        /**
         * 添加对应帖子点赞量加1
         */
        if(status > 0){
            status1 = discussionDao.addDiscussionThumbnum(thumb.getTarget_id());
        }
        return status1;
    }

    @Override
    public int addThumbReply(Thumb thumb) {
        int status = thumbDao.addThumbReply(thumb);
        int status1 = 0;
        /**
         * 添加对应回帖点赞量加1
         */
        if(status > 0){
            status1 = replyDao.addReplyThumbnum((thumb.getTarget_id()));
        }
        return status1;
    }

    @Override
    public int cancelThumbDiscussion(Thumb thumb) {
        int status = thumbDao.cancelThumbDiscussion(thumb);
        int status1 = 0;
        /**
         * 减少对应帖子点赞量减1
         */
        if(status > 0){
            status1 = discussionDao.deleteDiscussionThumbnum(thumb.getTarget_id());
        }
        return status1;

    }

    @Override
    public int cancelThumbReply(Thumb thumb) {
        int status = thumbDao.cancelThumbReply(thumb);
        int status1 = 0;
        /**
         * 减少对应h回帖点赞量减1
         */
        if(status > 0){
            status1 = replyDao.deleteReplyThumbnum(thumb.getTarget_id());
        }
        return status1;
    }


}
