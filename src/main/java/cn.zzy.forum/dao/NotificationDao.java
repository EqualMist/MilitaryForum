package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Notification;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NotificationDao {
    List<Notification> findNotification(int userid);
    int sendToAll(Notification notification);
    int changeIsRead(int id);
    int sendToUser(Notification tempNotification);
    int countIsNotRead(int user_id);
}
