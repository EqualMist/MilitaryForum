package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.DiscussionDao;
import cn.zzy.forum.dao.ReplyDao;
import cn.zzy.forum.dao.ReportDao;
import cn.zzy.forum.dao.UserDao;
import cn.zzy.forum.entity.Discussion;
import cn.zzy.forum.entity.Reply;
import cn.zzy.forum.entity.Report;
import cn.zzy.forum.service.ReportService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("reportService")
public class ReportServiceImpl implements ReportService{

    @Resource
    private ReportDao reportDao;
    @Resource
    private DiscussionDao discussionDao;
    @Resource
    private ReplyDao replyDao;
    @Resource
    private UserDao userDao;

    @Override
    public List<Report> findAll() {
        return reportDao.findAll();
    }

    @Override
    public int addReport(Report report) {
        return reportDao.addReport(report);
    }

    @Override
    public int changeReport(int id) {
        int status = reportDao.changeReport(id);
        int status2 = 0;
        int user_id = 0;
        Report tempReport = reportDao.getDiscussionidByReportid(id);
        if(status > 0){
            if(tempReport.getType().equals("discussion")){

                Discussion tempDiscussion = discussionDao.getUseridByDiscussionid(tempReport.getTarget_id());
                int discussionStatus = discussionDao.changeDiscussionStatus(tempDiscussion.getId());
                if((tempDiscussion != null) && (discussionStatus > 0)){
                    /**
                     * 找到发帖用户id
                     */
                    user_id = tempDiscussion.getUser_id();
                }
            } else if(tempReport.getType().equals("reply")){
                Reply tempReply = replyDao.getUseridByReplyid(tempReport.getTarget_id());
                int replyStatus = replyDao.changeReplyStatus(tempReply.getId());
                if((tempReply != null) && (replyStatus > 0)){
                    /**
                     * 找到回帖用户id
                     */
                    user_id = tempReply.getReply_user_id();
                }
            }


            /**
             * 扣除用户10点声望
             */
            status2 = userDao.deductRenown(user_id);
            /**
             * 改变帖子和回复的状态
             */

        }
        return status2;
    }
}
