package cn.zzy.forum.dao;

import cn.zzy.forum.entity.Thumb;
import org.springframework.stereotype.Repository;

@Repository
public interface ThumbDao {
    Thumb findThumb(String type,int user_id, int target_id);

    Thumb findThumbDiscussion(int user_id, int target_id);

    Thumb findThumbReply(int user_id, int target_id);

    int addThumbDiscussion(Thumb thumb);

    int addThumbReply(Thumb thumb);

    int cancelThumbDiscussion(Thumb thumb);

    int cancelThumbReply(Thumb thumb);
}
