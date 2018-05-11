package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.DiscussionDao;
import cn.zzy.forum.dao.InfoDao;
import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.Info;
import cn.zzy.forum.service.DiscussionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("discussionService")
public class DiscussionServiceImpl implements DiscussionService {

    @Resource
    private DiscussionDao discussionDao;

    @Resource
    private InfoDao infoDao;

    @Override
    public List<Discussion> showAll() {

        return discussionDao.showAll();
    }

    @Override
    public Discussion show(int id) {
        int i = 0;
        i = discussionDao.addViewNum(id);
        if (i>0 ) {
            return discussionDao.show(id);
        }
        else {
            return null;
        }
    }

    @Override
    public int addDiscussion(Discussion discussion) {
        int status = 0;
        status = discussionDao.addDiscussion(discussion);
        return status;
    }

    @Override
    public Discussion showReport(int id) {
        return discussionDao.showReport(id);

    }

    @Override
    public Discussion getTitle(int discussion_id) {
        return discussionDao.getTitle(discussion_id);
    }

    @Override
    public Discussion getDiscussionByid(int discussion_id) {
        return discussionDao.getDiscussionByid(discussion_id);
    }

    @Override
    public List<Discussion> showAllByuserid(int user_id) {
        return discussionDao.showAllByuserid(user_id);
    }

    @Override
    public int deleteDiscussion(int discussion_id) {
        return discussionDao.deleteDiscussion(discussion_id);
    }

    @Override
    public int getCountDiscussion(int user_id) {
        return discussionDao.getCountDiscussion(user_id);
    }

    @Override
    public List<Discussion> showHot() {
        return discussionDao.showHot();
    }

    @Override
    public List<Discussion> showGood() {
        return discussionDao.showGood();
    }

    @Override
    public List<Discussion> searchDiscussions(String keyword) {
        return discussionDao.searchDiscussions(keyword);
    }

    @Override
    public List<Info> searchInfo(String keyword) {
        return infoDao.searchInfo(keyword);
    }
}
