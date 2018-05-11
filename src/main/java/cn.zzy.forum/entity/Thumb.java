package cn.zzy.forum.entity;

/**
 * 点赞类
 */
public class Thumb {
    private int id;  //自身id
    private String type;  //种类：例如discussion,reply
    private int target_id;  //种类对应id
    private int user_id;  //点赞人id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getTarget_id() {
        return target_id;
    }

    public void setTarget_id(int target_id) {
        this.target_id = target_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
