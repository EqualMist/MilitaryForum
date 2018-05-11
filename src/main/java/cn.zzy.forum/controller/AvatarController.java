package cn.zzy.forum.controller;


import cn.zzy.forum.service.UserService;
import cn.zzy.forum.util.CutImgUtil;
import cn.zzy.forum.util.FileUploadCheck;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;


@Controller
public class AvatarController {

    private static Logger logger = Logger.getLogger(AvatarController.class);
    @Resource
    private UserService userService;
    @RequestMapping(value = "/avatarUpload.do",method = RequestMethod.POST)
    public String faceLoginController(HttpServletRequest request,HttpServletResponse response,Model model,
                                      @RequestParam("imgFile") MultipartFile imgFile,String userEmail){

        //剪裁图片坐标
        String x = request.getParameter("x");
        String y = request.getParameter("y");
        String w = request.getParameter("w");
        String h = request.getParameter("h");
        /* System.out.println("剪裁图片坐标"+x+y+w+h);*/
        //原始图片坐标
        String boundx = request.getParameter("boundx");
        String boundy = request.getParameter("boundy");
        /* System.out.println("原始图片坐标"+boundx+boundy);*/
        //切图参数
        int imgX = (int) Double.parseDouble(x);
        int imgY = (int) Double.parseDouble(y);
        int imgW = (int) Double.parseDouble(w);
        int imgH = (int) Double.parseDouble(h);
        int srcX = (int) Double.parseDouble(boundx);
        int srcY = (int) Double.parseDouble(boundy);
        /*System.out.println("切图参数"+imgeX+imgeY+imegW+imgeH+srcX+srcY);*/
        //文件保存文件夹
        //    String path =  "D://"+"fileUpload"+File.separator;
        String path =  request.getSession().getServletContext().getRealPath("/")+"static/image/avatar/"+File.separator;


        /**
         * 文件重名时，在文件名后添加邮箱与1-100随机数进行区分
         */
        String temp = String.valueOf((int)(Math.random()*100));
        String newName = userEmail+temp+".jpg";
        /*System.out.println("路径"+path+"新名字"+newName);*/
        String AvatarPath = "/static/image/avatar/"+newName;
        System.out.println("该图片路径:"+AvatarPath);
        try
        {
            //处理头像附件
            if(imgFile !=null)
            {
                //判断是否为图片文件
                if(FileUploadCheck.allowUpload(imgFile.getContentType()))
                {
                    /*System.out.println("执行图片操作");*/
                    boolean cut = CutImgUtil.cutImg(imgFile.getInputStream(), imgX, imgY, imgW, imgH, srcX, srcY, path+newName);
                    if(cut)
                    {
                        //当头像剪切成功进行用户信息数据库存储
                        userService.updateAvatar(userEmail,AvatarPath);
                        return "/user/avatar";
                        /*   System.out.println(userEmail+" "+" "+newName);*/
                    }

                }
                else{
                    System.out.println("格式不是图片");
                }
            }

        } catch (Exception e)
        {
            e.printStackTrace();
            logger.error("上传失败");
        }
        return "/user/avatar";
    }
}

