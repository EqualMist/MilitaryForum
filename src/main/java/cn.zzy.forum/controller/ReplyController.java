package cn.zzy.forum.controller;


import cn.zzy.forum.entity.*;
import cn.zzy.forum.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/replyController")
public class ReplyController {

    @Resource
    private DiscussionService discussionService;
    @Resource
    private ReplyService replyService;
    @Resource
    private MyCollectionService myCollectionService;
    @Resource
    private NotificationService notificationService;
    @Resource
    private ThumbService thumbService;

    /**
     * 根据帖子id获取所有回复
     *
     */
    @RequestMapping(value = "/showAllReplies")
    @ResponseBody
    public ArrayList<Map> showAllReplies(int discussion_id, int user_id) {
        ArrayList<Map> list = new ArrayList<>();
        List<Reply> tempReplyList = replyService.showAllReplies(discussion_id);
        for(int i=0; i<tempReplyList.size(); i++){
            Reply tempReply = tempReplyList.get(i);
            int reply_id = tempReply.getId();
            Thumb tempThumb = thumbService.findThumbReply(user_id,reply_id);
            Map<String,Object> mapWithoutThumb = new HashMap<>();
            mapWithoutThumb.put("id",tempReply.getId());
            mapWithoutThumb.put("discussion_id",tempReply.getDiscussion_id());
            mapWithoutThumb.put("replybody",tempReply.getReplybody());
            mapWithoutThumb.put("replytime",tempReply.getReplytime());
            mapWithoutThumb.put("reply_user_id",tempReply.getReply_user_id());
            mapWithoutThumb.put("reply_username",tempReply.getReply_username());
            mapWithoutThumb.put("renown",tempReply.getRenown());
            mapWithoutThumb.put("avatar",tempReply.getAvatar());
            mapWithoutThumb.put("thumb_num",tempReply.getThumb_num());
            mapWithoutThumb.put("blacklist",tempReply.getBlacklist());
            mapWithoutThumb.put("floor_num",i+1);
            if(tempThumb == null){
                mapWithoutThumb.put("thumb","0");
            } else {
                mapWithoutThumb.put("thumb","1");
            }
            list.add(mapWithoutThumb);
        }
        return list;
    }

    /**
     *  发表回复
     */
    @RequestMapping(value = "/addReply")
    @ResponseBody
    public Map<String,Object> addReply(Reply reply, HttpServletRequest request) {
        int discussion_id = Integer.parseInt(request.getParameter("discussion_id"));
        String reply_username = request.getParameter("reply_username");
        int reply_user_id = Integer.parseInt(request.getParameter("reply_user_id"));
        String replybody = request.getParameter("replybody");
        Reply tempReply = new Reply();
        tempReply.setDiscussion_id(discussion_id);
        tempReply.setReply_username(reply_username);
        tempReply.setReply_user_id(reply_user_id);
        tempReply.setReplybody(replybody);
        Map<String,Object> map = new HashMap<>();
        int status = replyService.addReply(tempReply);
        /**
         * 回帖成功后，若该帖子被用户收藏，发送给收藏帖子的所有用户帖子被更新的通知
         */
        if(status > 0){
            Discussion tempDiscussion = discussionService.getTitle(discussion_id)  ;//找到帖子标题
            String tempTitle = tempDiscussion.getTitle();
            List<MyCollection> myCollectionList = myCollectionService.findCollectionUsers(discussion_id);
            if(myCollectionList != null){
                for(MyCollection tempMyCollection : myCollectionList){
                    int user_id = tempMyCollection.getUser_id();
                    Notification tempNotification = new Notification();
                    tempNotification.setContent("您收藏的帖子:"+tempTitle+"有新回复，前往查看;"+discussion_id);
                    tempNotification.setFrom_user(0);
                    tempNotification.setTo_user(user_id);
                    tempNotification.setLevel(1);
                    tempNotification.setIsRead(0);
                    int status2 = notificationService.sendToUser(tempNotification);
                }
            }

        }
        map.put("status", status);
        return map;
    }
}
