package cn.zzy.forum.service;

import cn.zzy.forum.entity.Report;

import java.util.List;

public interface ReportService {
    List<Report> findAll();
    int addReport(Report report);
    int changeReport(int id);
}
