package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.UserDao;
import cn.zzy.forum.entity.User;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public int register(User user) {
        int status = -1;
        int status1 = -1;
        status = userDao.checkUserByEmail(user.getEmail());
        status1 = userDao.checkUserByUsername(user.getUsername());
        /*   System.out.println("检查重复账号结果为:"+status+" "+status1);*/
        if(status == 0 && status1 == 0){    //没有重复账号
            user.sendEmail(user.getEmail(),"http://localhost:8080/userController/activate?data="+user.getEmail()+"-"+user.getUuid());
            status = userDao.register(user);
            /*   System.out.println("插入数据库结果为"+status);*/
            if (status != 1) {
                status = -1;
            }
        }
        return status;
    }

    @Override
    public int login(User user) {
        int status = -1;  //默认账号不存在状态
        int status1 = -1;

        if(userDao.checkUserByEmail(user.getEmail())==1)    //查看是否存在该账号
        {
            status1 = userDao.checkUserByActivation(user.getEmail());   //查看是否激活
            if(status1==0)
            {
                status = 2;  //网页提示未激活，请去邮箱激活
            }
            else if(status1==1)
            {
                status = userDao.login(user);   //激活状态下查看是否账号密码输入正确
                if(status !=1)
                {
                    status = 0; //网页提示账号或密码输入错误
                }
            }
        }
        else
        {
            status = -1; //账号不存在
        }
        System.out.println("账号状态："+status+"邮箱激活状态"+status1);
        return status;
    }

    @Override
    public User getUserByUsername(String username) {
        User user = new User();
        user = userDao.getUserByUsername(username);
        System.out.println(user.toString());
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = new User();
        user = userDao.getUserByEmail(email);
        /*  System.out.println("user:"+user.toString());*/
        return user;
    }

    @Override
    public User getUserById(int id) {
        User user = new User();
        user = userDao.getUserById(id);
        /*  System.out.println("user:"+user.toString());*/
        return user;
    }

    @Override
    public int activateMailBox(String email,String uuid){   //向邮箱发送激活链接
        int status = -1;
        status = userDao.activateMailBox(email,uuid);
        if(status == 1)
        {
            System.out.println("发送激活链接成功");
        }
        return status;
    }

    @Override
    public int modifyUser(User user){
        int status = -1;
        status = userDao.modifyUser(user.getTel(),user.getQq(),user.getInfo(),user.getEmail());
        return status;
    }

    @Override
    public int updateAvatar(String userEmail, String avatarPath) {
        int status = -1;
        status = userDao.updateAvatar(userEmail,avatarPath);
        if(status == 1)
        {
            System.out.println("头像上传数据库成功");
        }
        return status;
    }

    @Override
    public int searchsign(String email){
        int counts = -1;
        counts = userDao.searchsign(email);
        System.out.println(counts);
        return counts;
    }

    @Override
    public int signone(String email,Date day){
        int statu = -1;
        statu = userDao.signone(email,day);
        System.out.println(statu);
        return statu;
    }

    @Override
    public int signtwo(String email,Date day){
        int statu = -1;
        statu = userDao.signtwo(email,day);
        System.out.println(statu);
        return statu;
    }

    @Override
    public int changePassword(User user) {
        return userDao.changePassword(user);
    }


}
