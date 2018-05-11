package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Thumb;
import cn.zzy.forum.service.DiscussionService;
import cn.zzy.forum.service.ReplyService;
import cn.zzy.forum.service.ThumbService;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/thumbController")
public class ThumbController {

    @Resource
    private ThumbService thumbService;
    @Resource
    private DiscussionService discussionService;
    @Resource
    private ReplyService replyService;
    @Resource
    private UserService userService;

    /**
     * 查找对应帖子或回复的点赞
     */
    @RequestMapping(value = "/findThumb")
    @ResponseBody
    private boolean findThumb(String type,int user_id,int target_id){
        Thumb thumb = new Thumb();
        if(type.equals("discussion")){
            thumb = thumbService.findThumbDiscussion(user_id,target_id);
        }else if(type.equals("reply")){
            thumb = thumbService.findThumbReply(user_id,target_id);
        }
        return thumb != null;
    }

    /**
     * 添加点赞
     */
    @RequestMapping(value = "/addThumb")
    @ResponseBody
    private Map<String,Object> addThumb(Thumb thumb){
        Map<String,Object> map = new HashMap<>();
        int status = 0;
        /**
         * 帖子
         */
        if(thumb.getType().equals("discussion")){
            status = thumbService.addThumbDiscussion(thumb);
            if(status == 0){
                map.put("status",status);
                map.put("message","failed");
                return map;
            }
            Thumb thumb1 = thumbService.findThumbDiscussion(thumb.getUser_id(),thumb.getTarget_id());
            if(thumb1 != null){
                map.put("isthumb",true);
                return map;
            }
            map.put("isthumb",false);
            return map;
            /**
             * 回帖
             */
        }else if(thumb.getType().equals("reply")){
            status = thumbService.addThumbReply(thumb);
            if(status == 0){
                map.put("status",status);
                map.put("message","failed");
                return map;
            }
            Thumb thumb1 = thumbService.findThumbReply(thumb.getUser_id(),thumb.getTarget_id());
            if(thumb1 != null){
                map.put("isthumb",true);
                return map;
            }
            map.put("isthumb",false);
            return map;
        }
        return map;
    }

    /**
     * 撤销点赞
     */
    @RequestMapping(value = "/cancelThumb")
    @ResponseBody
    private Map<String,Object> cancelThumb(Thumb thumb){
        Map<String,Object> map = new HashMap<>();
        int status = 0;
        /**
         * 帖子
         */
        if(thumb.getType().equals("discussion")){
            status = thumbService.cancelThumbDiscussion(thumb);
            if(status == 0){
                map.put("status",status);
                map.put("message","failed");
                return map;
            }
            Thumb thumb1 = thumbService.findThumbDiscussion(thumb.getUser_id(),thumb.getTarget_id());
            if(thumb1 != null){
                map.put("isthumb",true);
                return map;
            }
            map.put("isthumb",false);
            return map;
            /**
             * 回帖
             */
        }else if(thumb.getType().equals("reply")){
            status = thumbService.cancelThumbReply(thumb);
            if(status == 0){
                map.put("status",status);
                map.put("message","failed");
                return map;
            }
            Thumb thumb1 = thumbService.findThumbReply(thumb.getUser_id(),thumb.getTarget_id());
            if(thumb1 != null){
                map.put("isthumb",true);
                return map;
            }
            map.put("isthumb",false);
            return map;
        }
        return map;


    }
}
