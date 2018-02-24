package cn.zzy.forum.dao;

import cn.zzy.forum.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    int register(User user);
    int checkUserByUsername(String username);
    int login(User user);
    User getUserByUsername(String username);
}
