package cn.zzy.forum.entity;

/**
 * 收藏类
 */
public class MyCollection {
    private int id; //收藏自身id
    private int discussion_id;  //收藏帖子的id
    private int user_id;    //收藏的用户id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDiscussion_id() {
        return discussion_id;
    }

    public void setDiscussion_id(int discussion_id) {
        this.discussion_id = discussion_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
