package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Report;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReportDao {
    List<Report> findAll();
    int addReport(Report report);
    int changeReport(int id);
    Report getDiscussionidByReportid(int id);
}
