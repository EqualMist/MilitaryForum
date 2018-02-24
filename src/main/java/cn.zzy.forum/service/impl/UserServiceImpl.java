package cn.zzy.forum.service.impl;

import cn.zzy.forum.dao.UserDao;
import cn.zzy.forum.entity.User;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;//这东西没问题

    @Override
    public int register(User user) {
        int status = -1;
        status = userDao.register(user);
        return status;
    }

    @Override
    public int login(User user) {
        int status = -1;
        status = userDao.checkUserByUsername(user.getUsername());//检查用户是否存在
        if(status == 1){
            status = userDao.login(user);//如果存在则检查用户名和密码是否匹配
            if(status != 1){ status = -1; }
        }
        return status;
    }

    @Override
    public User getUserByUsername(String username) {
        User user = new User();
        user = userDao.getUserByUsername(username);
        System.out.println(user.toString());
        return user;
    }

}
