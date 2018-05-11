package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Notification;
import cn.zzy.forum.service.NotificationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/notificationController")
public class NotificationController {
    @Resource
    private NotificationService notificationService;

    /**
     * 查找对应用户的所有通知
     */
    @RequestMapping(value = "/findNotification")
    @ResponseBody
    private Map<String, Object> findNotification(int userid){
        Map<String,Object> map = new HashMap<>();
        List<Notification> tempNotificationList =  notificationService.findNotification(userid);
        /**
         * 更新消息为已读状态
         */
        for(Notification tempNotification : tempNotificationList){
            if(tempNotification.getIsRead()==0){
                int status2 = notificationService.changeIsRead(tempNotification.getId());
            }
        }

        /**
         * 进行字符串切割，取出discussion_id
         */
        for(int i = 0; i < tempNotificationList.size(); i++){
            Notification tempNotification = tempNotificationList.get(i);
            if(tempNotification.getLevel()==1){
                Map<String,Object> mapLevel1 = new HashMap<>();
                String tempContent = tempNotification.getContent();
                String[] contentArray = tempContent.split(";");
                String tempTitle = contentArray[0];
                int discussion_id = Integer.parseInt(contentArray[1]);
                mapLevel1.put("id",tempNotification.getId());
                mapLevel1.put("content",tempTitle);
                mapLevel1.put("discussion_id",discussion_id);
                mapLevel1.put("from_user",tempNotification.getFrom_user());
                mapLevel1.put("to_user",tempNotification.getTo_user());
                mapLevel1.put("level",tempNotification.getLevel());
                map.put("notificationlevel1："+i,mapLevel1);

            } else if(tempNotification.getLevel()==0){
                Map<String,Object> mapLevel0 = new HashMap<>();
                mapLevel0.put("id", tempNotification.getId());
                mapLevel0.put("content", tempNotification.getContent());
                mapLevel0.put("from_user", tempNotification.getFrom_user());
                mapLevel0.put("level", tempNotification.getLevel());
                map.put("notificationlevel0："+i,mapLevel0);
            }
        }

        return map;
    }

    /**
     * 查找对应用户的所有未读通知数量
     */
    @RequestMapping(value = "/countIsNotRead")
    @ResponseBody
    private int countIsNotRead(int user_id){
        return notificationService.countIsNotRead(user_id);
    }

    /**
     * 管理员发送全站通知
     */
    @RequestMapping(value = "/sendToAll")
    @ResponseBody
    private Map<String, Object> sendToAll(Notification notification){
        Map<String,Object> map = new HashMap<>();
        int status = notificationService.sendToAll(notification);
        map.put("status", status);
        return map;
    }


}
