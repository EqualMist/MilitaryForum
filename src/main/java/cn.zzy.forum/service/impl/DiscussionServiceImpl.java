package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.DiscussionDao;
import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.service.DiscussionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("discussionService")
public class DiscussionServiceImpl implements DiscussionService {

    @Resource
    private DiscussionDao discussionDao;//这东西没问题

    @Override
    public List<Discussion> showAll() {
        return discussionDao.showAll();
    }

    @Override
    public Discussion show(int id) {
        return discussionDao.show(id);
    }
}
