package cn.zzy.forum.entity;

/**
 * 举报类
 */
public class Report {
    private int id;  //自身id
    private String type;  //种类：例如discussion,reply
    private int target_id;  //种类对应id
    private int user_id;  //举报人id
    private String reason;  //举报原因
    private int status;  //举报处理状态:0未处理，1已处理


    /**
     * 无参构造方法
     */
    public Report(){
    id = -1;
    type = null;
    target_id = -1;
    user_id = -1;
    reason = null;
    status = 0;

    }

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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
