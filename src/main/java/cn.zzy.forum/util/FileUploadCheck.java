package cn.zzy.forum.util;

import java.util.Arrays;
import java.util.List;

public class FileUploadCheck {

    //支持的文件类型
    public static final List<String> ALLOW_TYPES = Arrays.asList("image/jpg","image/jpeg","image/png","image/gif");

    //校验文件类型是否是被允许的
    public static boolean allowUpload(String postfix){
        return ALLOW_TYPES.contains(postfix);
    }
}