package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.MyCollection;
import cn.zzy.forum.service.DiscussionService;
import cn.zzy.forum.service.MyCollectionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mycollectionController")
public class MyCollectionController {

    @Resource
    private MyCollectionService myCollectionService;
    @Resource
    private DiscussionService discussionService;

    /**
     * 查找所有收藏
     */
    @RequestMapping(value = "/findAll")
    @ResponseBody
    private Map<String,Object> findAll(int user_id){
        Map<String,Object> map = new HashMap<>();
        int i = 0;
        List<MyCollection> myCollectionList = myCollectionService.findAll(user_id);
        if(myCollectionList!=null){
            for(MyCollection tempMyCollection : myCollectionList){
                Map<String,Object> discusisonMap = new HashMap<>();
                Discussion tempDiscussion = discussionService.getDiscussionByid(tempMyCollection.getDiscussion_id());
                discusisonMap.put("discussion_id",tempDiscussion.getId());
                discusisonMap.put("title",tempDiscussion.getTitle());
                discusisonMap.put("reply_num",tempDiscussion.getReply_num());
                discusisonMap.put("thumb_num",tempDiscussion.getThumb_num());
                discusisonMap.put("username",tempDiscussion.getUsername());
                map.put("discussion"+i,discusisonMap);
                i++;
            }
        }
        return map;
    }

    /**
     * 查找对应的帖子或回复的收藏
     */
    @RequestMapping(value = "/findCollection")
    @ResponseBody
    private Boolean findCollection(int user_id,int discussion_id){
        MyCollection mycollection = myCollectionService.findCollection(user_id,discussion_id);
        return mycollection != null;
    }

    /**
     * 添加收藏
     */
    @RequestMapping(value = "/addCollection")
    @ResponseBody
    private Map<String, Object> addCollection(MyCollection myCollection){
        Map<String,Object> map = new HashMap<>();
        int status = myCollectionService.addCollection(myCollection);
        if(status == 0){
            map.put("status",status);
            map.put("message","failed");
            return map;
        }
        MyCollection mycollection = myCollectionService.findCollection(myCollection.getUser_id(),myCollection.getDiscussion_id());
        if(mycollection != null){
            map.put("ismycollection",true);
            return map;
        }
        map.put("ismycollection",false);
        return map;
    }

    /**
     * 取消收藏
     */
    @RequestMapping(value = "/cancelCollection")
    @ResponseBody
    private Map<String, Object> cancelCollection(MyCollection myCollection){
        Map<String,Object> map = new HashMap<>();
        int status = myCollectionService.cancelCollection(myCollection);
        if(status == 0){
            map.put("status",status);
            map.put("message","failed");
            return map;
        }
        MyCollection mycollection = myCollectionService.findCollection(myCollection.getUser_id(),myCollection.getDiscussion_id());
        if(mycollection != null){
            map.put("ismycollection",true);
            return map;
        }
        map.put("ismycollection",false);
        return map;
    }

}
