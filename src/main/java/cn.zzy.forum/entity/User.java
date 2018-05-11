package cn.zzy.forum.entity;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import java.util.Date;
import java.util.UUID;

/**用户类
 *
 */
public class User {

    private int id; //uid
    private String uuid;    //uuid唯一标识
    private String username;    //用户名
    private String password;    //密码
    private int activation; //激活状态：0为未激活，1为激活
    private String avatar;  //头像
    private String email;   //邮箱
    private String tel; //电话
    private int status; //登录状态
    private int renown; //声望值
    private int counts; //连续签到天数
    private Date lastsign;  //签到最后日期
    private String qq;  //用户qq
    private String info;  //用户简介

    /**
     * 无参构造方法
     */
    public User(){
        id = -1;
        username = "undefined";
        password = "undefined";
        avatar = "/static/image/avatar/ougen.jpg";  //设置默认头像
        email = "undefined";
        tel = "";
        activation = 0;
        uuid = UUID.randomUUID().toString().replace("-",""); //邮箱激活码
        status = 0;
        renown = 100;
        counts = 1;
        lastsign = new Date();
        qq = "";
        info = "";
    }

    @Override
    public String toString() {
        return id+","+username+","+password+","+avatar+","+email+","+tel+","+status+","+activation;
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

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public int getActivation() {
        return activation;
    }

    public void setActivation(int activation) {
        this.activation = activation;
    }

    public int getRenown() {
        return renown;
    }

    public void setRenown(int renown) {
        this.renown = renown;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public Date getLastsign() {
        return lastsign;
    }

    public void setLastsign(Date lastsign) {
        this.lastsign = lastsign;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    /**
     * 邮件发送
     * @param email
     * @param content
     * @return
     */
    public static int sendEmail(String email, String content){
        int status =0;
        SimpleEmail mailUtil = new SimpleEmail();
        //服务器地址
        mailUtil.setHostName("smtp.163.com");
        //发件地址:邮箱，授权码
        mailUtil.setAuthentication("akihachang@163.com", "123zzy456zzy");
        //设置内容编码
        mailUtil.setCharset("utf-8");

        //目的邮箱
        try {
            mailUtil.addTo(email);
            mailUtil.setFrom("akihachang@163.com");
            //设置主题、内容
            mailUtil.setSubject("欢迎激活军事论坛的账号，请点击以下链接完成验证!");
            mailUtil.setMsg(content);
            mailUtil.setContent(content, "text/html;charset = utf-8");
            mailUtil.setSSL(true);
            status = Integer.parseInt(mailUtil.send());
        } catch (EmailException e) {
            // TODO Auto-generated catch block
            //邮箱错误
            e.printStackTrace();
        }
        finally {
            return status;
        }
    }

}
