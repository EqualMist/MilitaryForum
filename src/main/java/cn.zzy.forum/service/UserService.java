package cn.zzy.forum.service;

import cn.zzy.forum.entity.User;

public interface UserService {
    int register(User user);
    int login(User user);
    User getUserByUsername(String username);
}
