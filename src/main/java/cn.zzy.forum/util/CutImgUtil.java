package cn.zzy.forum.util;

import org.apache.log4j.Logger;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.File;
import java.io.InputStream;


public class CutImgUtil {

    private static Logger logger = Logger.getLogger(CutImgUtil.class);

    /**
     * 图片剪切工具类
     * @param input 图片输入流
     * @param x 截取时的x坐标
     * @param y 截取时的y坐标
     * @param desWidth 截取的宽度
     * @param desHeight 截取的高度
     * @param srcWidth 页面图片的宽度
     * @param srcHeight 页面图片的高度
     * @param newFilePath 保存路径+文件名
     * @return
     */
    public static boolean cutImg(InputStream input, int x, int y, int desWidth, int desHeight, int srcWidth,int srcHeight,String newFilePath){

        boolean cutFlag = true;

        try
        {
            //图片类
            Image img ;
            ImageFilter cropFilter;

            //读取图片
            BufferedImage bi = ImageIO.read(input);

            //当剪裁大小小于原始图片大小才执行
            if(srcWidth >= desWidth && srcHeight >= desHeight)
            {
                //获取原始图
                Image image = bi.getScaledInstance(srcWidth, srcHeight, Image.SCALE_DEFAULT);
                //获取新图
                cropFilter = new CropImageFilter(x, y, desWidth, desHeight);
                img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));
                BufferedImage tag = new BufferedImage(desWidth, desHeight, BufferedImage.TYPE_INT_RGB);
                Graphics g = tag.getGraphics();
                g.drawImage(img, 0, 0, null);
                g.dispose();

                File out = new File(newFilePath);
                // 输出文件
                ImageIO.write(tag, "JPEG", out);
            }

        } catch (Exception e)
        {
            cutFlag = false;
            e.printStackTrace();
            logger.error("剪切失败");
        }
        return cutFlag;

    }
}