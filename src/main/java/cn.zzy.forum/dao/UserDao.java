package cn.zzy.forum.dao;

import cn.zzy.forum.entity.User;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public interface UserDao {
    int login(User user);
    int register(User user);
    int checkUserByUsername(String username);
    int checkUserByEmail(String email);
    int checkUserByActivation(String email);
    User getUserByUsername(String username);
    User getUserByEmail(String email);
    User getUserById(int id);
    int activateMailBox(String email,String uuid);
    int modifyUser(String tel,String qq,String info,String email);
    int updateAvatar(String userEmail, String avatarPath);
    int searchsign(String email);
    int signone(String email, Date day);
    int signtwo(String email,Date day);
    int deductRenown(int user_id);
    int changePassword(User user);
}
