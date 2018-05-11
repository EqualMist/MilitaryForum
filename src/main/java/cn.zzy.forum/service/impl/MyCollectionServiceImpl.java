package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.MyCollectionDao;
import cn.zzy.forum.entity.MyCollection;
import cn.zzy.forum.service.MyCollectionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("collectionService")
public class MyCollectionServiceImpl implements MyCollectionService {

    @Resource
    private MyCollectionDao myCollectionDao;

    @Override
    public List<MyCollection> findAll(int user_id) {
        return myCollectionDao.findAll(user_id);
    }

    @Override
    public MyCollection findCollection(int user_id, int discussion_id) {
        return myCollectionDao.findCollection(user_id,discussion_id);
    }


    @Override
    public int addCollection(MyCollection myCollection) {
        return myCollectionDao.addCollection(myCollection);
    }

    @Override
    public int cancelCollection(MyCollection myCollection) {
        return myCollectionDao.cancelCollection(myCollection);
    }

    @Override
    public List<MyCollection> findCollectionUsers(int discussion_id) {
        return myCollectionDao.findCollectionUsers(discussion_id);
    }
}
