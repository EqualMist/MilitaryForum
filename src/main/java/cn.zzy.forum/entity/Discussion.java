package cn.zzy.forum.entity;

import java.util.Date;

/** 帖子主体类
 *
 */
public class Discussion {

    private int id; //帖子id
    private String title;   //帖子标题
    private String body;    //贴子内容
    private int user_id;    //发帖人id
    private String username;   //发帖人用户名
    private String avatar;      //发帖人头像
    private int last_user_id;   //最后回帖人id
    private String last_username;   //最后回帖人姓名
    private Date created_at;    //发帖时间
    private Date updated_at;    //回复时间
    private int view_num;   //帖子浏览数
    private int thumb_num;  //帖子点赞数
    private int reply_num;  //帖子回复数
    private int renown; //  发帖人声望值
    private int blacklist;  //帖子是否被举报：0未举报，1被举报

    /**
     * 无参构造方法
     */
    public Discussion(){
        id = -1;
        title = "undefind";
        body = "undefind";
        user_id = -1;
        username = "undefind";
        avatar = "undefined";
        last_user_id = -1;
        created_at = new Date();
        updated_at = new Date();
        view_num = 0;
        thumb_num = 0;
        reply_num = 0;
        blacklist = 0;

    }

    @Override
    public String toString() {
        return id+","+title+","+body+","+user_id+","+username+","+last_user_id+","+created_at.toString()+","+updated_at.toString();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getLast_user_id() {
        return last_user_id;
    }

    public void setLast_user_id(int last_user_id) {
        this.last_user_id = last_user_id;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getView_num() {
        return view_num;
    }

    public void setView_num(int view_num) {
        this.view_num = view_num;
    }

    public int getThumb_num() {
        return thumb_num;
    }

    public void setThumb_num(int thumb_num) {
        this.thumb_num = thumb_num;
    }

    public String getLast_username() {
        return last_username;
    }

    public void setLast_username(String last_username) {
        this.last_username = last_username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getReply_num() {
        return reply_num;
    }

    public void setReply_num(int reply_num) {
        this.reply_num = reply_num;
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
