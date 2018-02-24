package cn.zzy.forum.entity;

import java.util.Date;

/**
 *
 */
public class Discussion {

    private int id;
    private String title;
    private String body;
    private int user_id;
    private  String username;
    private int last_user_id;
    private Date created_at;
    private Date updated_at;

    /**
     * 无参构造函数
     */
    public Discussion(){
        id = -1;
        title = "undefind";
        body = "undefind";
        user_id = -1;
        username = "undefind";
        last_user_id = -1;
        created_at = null;
        updated_at = null;
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
}
