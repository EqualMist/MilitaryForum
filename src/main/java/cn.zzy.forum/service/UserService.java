package cn.zzy.forum.service;

import cn.zzy.forum.entity.User;

import java.util.Date;

public interface UserService {
    int register(User user);
    int login(User user);
    int activateMailBox(String email,String uuid);
    User getUserByUsername(String username);
    User getUserByEmail(String email);
    User getUserById(int id);
    int modifyUser(User user);
    int updateAvatar(String userEmail, String avatarPath);
    int searchsign(String email);
    int signone(String email,Date day);
    int signtwo(String email, Date day);
    int changePassword(User user);
}
