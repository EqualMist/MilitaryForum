package cn.zzy.forum.controller;

import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.Reply;
import cn.zzy.forum.entity.Report;
import cn.zzy.forum.entity.User;
import cn.zzy.forum.service.DiscussionService;
import cn.zzy.forum.service.ReplyService;
import cn.zzy.forum.service.ReportService;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/reportController")
public class ReportController {

    @Resource
    private ReportService reportService;
    @Resource
    private DiscussionService discussionService;
    @Resource
    private ReplyService replyService;
    @Resource
    private UserService userService;

    /**
     * 显示所有举报
     */
    @RequestMapping(value = "/findAll")
    @ResponseBody
    private Map<String, Object> findAll(){
        List<Report> tempReportList = reportService.findAll();
        Map<String, Object> map = new HashMap<>();
        int i = 1;
        if(tempReportList != null){
            for(Report tempReport:tempReportList) {
                if(tempReport.getType().equals("discussion")){
                    Discussion tempDiscussion = discussionService.show(tempReport.getTarget_id());
                    User tempUser = userService.getUserById(tempReport.getUser_id());
                    Map<String, Object> discussionMap = new HashMap<>();
                    discussionMap.put("id",tempReport.getId());
                    discussionMap.put("type",tempReport.getType());
                    discussionMap.put("target_id",tempReport.getTarget_id());
                    discussionMap.put("title",tempDiscussion.getTitle());
                    discussionMap.put("username",tempUser.getUsername());
                    discussionMap.put("reason",tempReport.getReason());
                    discussionMap.put("status",tempReport.getStatus());
                    map.put("report_discussion"+i,discussionMap);
                    i++;
                } else if(tempReport.getType().equals("reply")){
                    Reply tempReply = replyService.show(tempReport.getTarget_id());
                    User tempUser = userService.getUserById(tempReport.getUser_id());
                    Map<String, Object> replyMap = new HashMap<>();
                    replyMap.put("id",tempReport.getId());
                    replyMap.put("type",tempReport.getType());
                    replyMap.put("target_id",tempReport.getTarget_id());
                    replyMap.put("replybody",tempReply.getReplybody());
                    replyMap.put("discussion_id",tempReply.getDiscussion_id());
                    replyMap.put("username",tempUser.getUsername());
                    replyMap.put("reason",tempReport.getReason());
                    replyMap.put("status",tempReport.getStatus());
                    map.put("report_reply"+i,replyMap);
                    i++;
                }
            }
        }

        return map;
    }

    /**
     * 添加举报
     */
    @RequestMapping(value = "/addReport")
    @ResponseBody
    private Map<String, Object> addReport(Report report){
        Map<String,Object> map = new HashMap<>();
        int status = reportService.addReport(report);
        map.put("status", status);
        return map;

    }

    /**
     * 更改举报状态
     */
    @RequestMapping(value = "/changeReport")
    @ResponseBody
    private Map<String, Object> changeReport(int id){
        //Map<String,Object> map = new HashMap<>();
        int status = reportService.changeReport(id);
        //map.put("status", status);
        List<Report> tempReportList = reportService.findAll();
        Map<String, Object> map = new HashMap<>();
        int i = 1;
        if(tempReportList != null){
            for(Report tempReport:tempReportList) {
                if(tempReport.getType().equals("discussion")){
                    Discussion tempDiscussion = discussionService.showReport(tempReport.getTarget_id());
                    User tempUser = userService.getUserById(tempReport.getUser_id());
                    Map<String, Object> discussionMap = new HashMap<>();
                    discussionMap.put("id",tempReport.getId());
                    discussionMap.put("type",tempReport.getType());
                    discussionMap.put("target_id",tempReport.getTarget_id());
                    discussionMap.put("title",tempDiscussion.getTitle());
                    discussionMap.put("username",tempUser.getUsername());
                    discussionMap.put("reason",tempReport.getReason());
                    discussionMap.put("status",tempReport.getStatus());
                    map.put("report_discussion"+i,discussionMap);
                    i++;
                } else if(tempReport.getType().equals("reply")){
                    Reply tempReply = replyService.showReort(tempReport.getTarget_id());
                    User tempUser = userService.getUserById(tempReport.getUser_id());
                    Map<String, Object> replyMap = new HashMap<>();
                    replyMap.put("id",tempReport.getId());
                    replyMap.put("type",tempReport.getType());
                    replyMap.put("target_id",tempReport.getTarget_id());
                    replyMap.put("replybody",tempReply.getReplybody());
                    replyMap.put("discussion_id",tempReply.getDiscussion_id());
                    replyMap.put("username",tempUser.getUsername());
                    replyMap.put("reason",tempReport.getReason());
                    replyMap.put("status",tempReport.getStatus());
                    map.put("report_reply"+i,replyMap);
                    i++;
                }
            }
        }
        return map;

    }
}
