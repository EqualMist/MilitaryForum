package cn.zzy.forum.entity;


import java.util.Date;

/**帖子回复类
 *
 */
public class Reply {
    private int id; //帖子回复id
    private int discussion_id;  //所回复帖子的id
    private String replybody;   //帖子回复内容
    private Date replytime; //回复时间
    private int reply_user_id;  //回帖人id
    private String reply_username;  //回帖人用户名
    private String avatar;  //回帖人头像
    private int thumb_num;  //点赞数
    private int renown; //回帖人声望
    private int blacklist;  //帖子是否诶举报：0未举报，1被举报


    /**
     * 无参构造方法
     * @return
     */
    public Reply() {
        id = -1;
        replybody = "undifined";
        replytime = new Date();
        reply_user_id = -1;
        reply_username = "undefined";
        avatar = "undefined";
        thumb_num = 0;
        blacklist = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDiscussion_id() {
        return discussion_id;
    }

    public void setDiscussion_id(int discussion_id) {
        this.discussion_id = discussion_id;
    }

    public String getReplybody() {
        return replybody;
    }

    public void setReplybody(String replybody) {
        this.replybody = replybody;
    }

    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    public int getReply_user_id() {
        return reply_user_id;
    }

    public void setReply_user_id(int reply_user_id) {
        this.reply_user_id = reply_user_id;
    }

    public String getReply_username() {
        return reply_username;
    }

    public void setReply_username(String reply_username) {
        this.reply_username = reply_username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getThumb_num() {
        return thumb_num;
    }

    public void setThumb_num(int thumb_num) {
        this.thumb_num = thumb_num;
    }

    public int getRenown() {
        return renown;
    }

    public void setRenown(int renown) {
        this.renown = renown;
    }

    public int getBlacklist() {
        return blacklist;
    }

    public void setBlacklist(int blacklist) {
        this.blacklist = blacklist;
    }
}
