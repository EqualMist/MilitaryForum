package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.NotificationDao;
import cn.zzy.forum.entity.Notification;
import cn.zzy.forum.service.NotificationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("notificationService")
public class NotificationServiceImpl implements NotificationService{

    @Resource
    private NotificationDao notificationDao;

    @Override
    public List<Notification> findNotification(int userid) {
        return notificationDao.findNotification(userid);
    }

    @Override
    public int sendToAll(Notification notification) {
        return notificationDao.sendToAll(notification);
    }

    @Override
    public int changeIsRead(int id) {
        return notificationDao.changeIsRead(id);
    }

    @Override
    public int sendToUser(Notification tempNotification) {
        return notificationDao.sendToUser(tempNotification);
    }

    @Override
    public int countIsNotRead(int user_id) {
        return notificationDao.countIsNotRead(user_id);
    }
}
