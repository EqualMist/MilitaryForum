package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.service.DiscussionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
}
