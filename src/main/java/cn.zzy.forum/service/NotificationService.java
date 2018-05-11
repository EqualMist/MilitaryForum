package cn.zzy.forum.service;

import cn.zzy.forum.entity.Notification;

import java.util.List;

public interface NotificationService {
    List<Notification> findNotification(int userid);
    int sendToAll(Notification notification);
    int changeIsRead(int id);
    int sendToUser(Notification tempNotification);
    int countIsNotRead(int user_id);
}
