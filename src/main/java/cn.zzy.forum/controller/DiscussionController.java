package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.Info;
import cn.zzy.forum.service.DiscussionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/discussionController")
public class DiscussionController {

    @Resource
    private DiscussionService discussionService;

    /**
     * 查询所有帖子
     * @return
     */
    @RequestMapping(value = "/showAll")
    @ResponseBody
    private List<Discussion> showAll(){
        return discussionService.showAll();
    }

    /**
     * 查看某一篇帖子
     * @return
     */
    @RequestMapping(value = "/show")
    @ResponseBody
    private Discussion show(int id){
        return discussionService.show(id);
    }

    /**
     * 发帖
     *
     */
    @RequestMapping(value = "/addDiscussion")
    @ResponseBody
    private Map<String, Object> addDiscussion(Discussion discussion, HttpServletRequest request){
            String username = request.getParameter("user_name");
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            String title = request.getParameter("title");
            String body = request.getParameter("contentbody");
            Discussion tempDiscussion = new Discussion();
            tempDiscussion.setUsername(username);
            tempDiscussion.setUser_id(user_id);
            tempDiscussion.setTitle(title);
            tempDiscussion.setBody(body);
            Map<String,Object> map = new HashMap<>();
            int status = discussionService.addDiscussion(tempDiscussion);
            System.out.println("status"+status);
            map.put("status",status);
            return map;
    }

    /**
     * 查找某个用户的帖子
     */
    @RequestMapping(value = "/showAllByuserid")
    @ResponseBody
    private List<Discussion> showAllByuserid(int user_id){
        return discussionService.showAllByuserid(user_id);

    }

    /**
     * 删除某个用户的帖子
     */
    @RequestMapping(value = "/deleteDiscussion")
    @ResponseBody
    private int deleteDiscussion(int discussion_id){
        return discussionService.deleteDiscussion(discussion_id);

    }

    /**
     * 查询热门帖子
     * @return
     */
    @RequestMapping(value = "/showHot")
    @ResponseBody
    private List<Discussion> showHot(){
        return discussionService.showHot();
    }

    /**
     * 查询精华帖子
     * @return
     */
    @RequestMapping(value = "/showGood")
    @ResponseBody
    private List<Discussion> showGood(){
        return discussionService.showGood();
    }

    /**
     * 根据关键字查询帖子
     */
    @RequestMapping(value = "/searchDiscussions")
    @ResponseBody
    private List<Discussion> searchDiscussions(String keyword){
        //System.out.println("keyword:"+keyword);
        return discussionService.searchDiscussions(keyword);
    }


    /**
     * 根据关键字查询帖子
     */
    @RequestMapping(value = "/searchInfo")
    @ResponseBody
    private List<Info> searchInfo(String keyword){
        return discussionService.searchInfo(keyword);
    }
}
