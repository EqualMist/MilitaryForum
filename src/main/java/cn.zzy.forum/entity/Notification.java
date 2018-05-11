package cn.zzy.forum.entity;

/**
 * 通知类
 */
public class Notification {
    private int id;  //通知自身id
    private String content;  //通知内容
    private int from_user;  //通知发送人id
    private int to_user;  //通知接收人id
    private int level;  //通知等级：0全站通知，1个人通知
    private int isRead; //通知是否已读

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getFrom_user() {
        return from_user;
    }

    public void setFrom_user(int from_user) {
        this.from_user = from_user;
    }

    public int getTo_user() {
        return to_user;
    }

    public void setTo_user(int to_user) {
        this.to_user = to_user;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getIsRead() {
        return isRead;
    }

    public void setIsRead(int isRead) {
        this.isRead = isRead;
    }
}
