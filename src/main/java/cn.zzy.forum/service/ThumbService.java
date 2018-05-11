package cn.zzy.forum.service;

import cn.zzy.forum.entity.Thumb;

public interface ThumbService {
    Thumb findThumb(String type, int user_id, int target_id);

    Thumb findThumbDiscussion(int user_id, int target_id);

    Thumb findThumbReply(int user_id, int target_id);

    int addThumbDiscussion(Thumb thumb);

    int addThumbReply(Thumb thumb);

    int cancelThumbDiscussion(Thumb thumb);

    int cancelThumbReply(Thumb thumb);
}
