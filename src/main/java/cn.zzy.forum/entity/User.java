package cn.zzy.forum.entity;

/**
 *
 */
public class User {

    private int id;//uid
    private String username;//用户名
    private String password;//密码
    private String avatar;//头像
    private String email;//邮箱
    private String tel;//电话
    private int status;//登录状态

    /**
     * 无参构造函数
     */
    public User(){
        id = -1;
        username = "undefind";
        password = "undefind";
        avatar = "undefind";
        email = "undefind";
        tel = "undefind";
        status = 0;
    }

    @Override
    public String toString() {
        return id+","+username+","+password+","+avatar+","+email+","+tel+","+status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
