package cn.zzy.forum.controller;

import cn.zzy.forum.entity.User;
import cn.zzy.forum.service.DiscussionService;
import cn.zzy.forum.service.ReplyService;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/userController")
@SessionAttributes("userSignIn")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private DiscussionService discussionService;
    @Resource
    private ReplyService replyService;

    /**
     * 用户注册
     * @param user
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> register(User user) {
        Map<String,Object> map = new HashMap<>();
        int status = userService.register(user);
        map.put("status",status);
        return map;
    }

    /**
     * 用户邮箱激活
     */
    @RequestMapping(value = "/activate",method = RequestMethod.GET)
    @ResponseBody
    public void activateMailBox (HttpServletRequest request, HttpServletResponse response) {

        String data = request.getParameter("data");
        String[] spliteArray = data.split("-");
        userService.activateMailBox(spliteArray[0],spliteArray[1]);
        try {
            response.sendRedirect("/view/user/activation.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * 用户登录
     * @param user
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> login(User user, ModelMap modelMap, HttpSession session) {
        Map<String, Object> map = new HashMap<>();
        int status = userService.login(user);
        map.put("status", status);
        if (status == 1) {
            //获取登录用户的所有信息，存放在session中
            modelMap.addAttribute("userSignIn",userService.getUserByEmail(user.getEmail()));
            //获取登录用户id,存放在session中
            session.setAttribute("userid",userService.getUserByEmail(user.getEmail()).getId());
        }
        return map;
    }

    /**
     * 用户登出
     * @param session
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session,ModelMap modelMap) {
        modelMap.remove("userSignIn");
        session.removeAttribute("userSignIn");
        return "home";//视图解析器会拼凑字符串,最后会变成这样"/view/home.jsp"
    }

    /**
     * 用户信息修改
     *
     */
    @RequestMapping(value = "/modifyUser", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> modifyUser(User user) {
        System.out.println("tel:"+user.getTel());
        System.out.println("qq:"+user.getQq());
        System.out.println("info:"+user.getInfo());
        Map<String, Object> map = new HashMap<>();
        int status = userService.modifyUser(user);
        System.out.println(status);
        map.put("status", status);
        return map;
    }

    /**
     * 根据前台传来的用户id获取用户信息
     *
     */
    @RequestMapping(value = "/getUserByuserid", method = RequestMethod.POST)
    @ResponseBody
    private User getUserByuserid (User user, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        /**
         * ajax传来id，后台用request接受到的id与user.getId()，都能接受传来的值
         */
//        System.out.println("user.getId():"+user.getId());
//        System.out.println("id:"+id);
        return userService.getUserById(id);
    }

    /**
     * 用户查找签到天数及上次签到日期
     * @param email
     * @return
     */
    @RequestMapping(value = "/searchsign", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> searchsign(String email) {
        Map<String,Object> map = new HashMap<>();
        User user = userService.getUserByEmail(email);
        System.out.println(user.getCounts()+"xxxxx"+ (Date)user.getLastsign());
        map.put("counts",user.getCounts());
        Date lastsign = user.getLastsign();
        Date nowsign = new Date();
        Date nowsign1 = new Date();
        int status = -1;
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(nowsign);
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        nowsign = calendar.getTime();
        System.out.println(sdf.format(nowsign));

        Calendar calendar1 = Calendar.getInstance();
        calendar1.setTime(lastsign);
        /*calendar.add(Calendar.DAY_OF_MONTH,);*/
        lastsign = calendar1.getTime();
        System.out.println(sdf.format(lastsign));
        String d1 = sdf.format(lastsign);
        String d2 = sdf.format(nowsign);

        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(nowsign1);
        nowsign1 = calendar2.getTime();
        System.out.println(sdf.format(nowsign1));
        String d3 = sdf.format(nowsign1);

        if(d1.equals(d2)) //表示今天为上次签到的后一天
        {
            status = 1;
        }
        else if(d3.equals(d1)){  //今天已经签到了
            status = 0;
        }
        else if(!d1.equals(d2)&&!d3.equals(d1)){
            status = 2; //既不是前一天也不是今天
        }
        System.out.println(status);
        map.put("status",status);

        return map;
    }

    /**
     * 用户签到
     * @param user
     * @return
     */
    @RequestMapping(value = "/usersign", method = RequestMethod.POST)
    @ResponseBody

    public Map<String, Object> usersign(User user, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        String email = request.getParameter("email");
        int status = Integer.parseInt(request.getParameter("status"));
        System.out.println(email + " " + status);
        Date day = new Date();
        int statu = -1;
        if(status == 2)
        {
            statu = userService.signone(email,day);
        }
        else if(status == 1){
            statu = userService.signtwo(email,day);
        }
        map.put("status", status);

        return map;
    }

    /**
     * 修改密码
     * @param user
     * @return
     */
    @RequestMapping(value = "/changePassword", method = RequestMethod.POST)
    @ResponseBody
    public String changePassword(HttpSession session,ModelMap modelMap,User user) {
        int status = 0;
        status = userService.changePassword(user);
        if(status >0){
            modelMap.remove("userSignIn");
            session.removeAttribute("userSignIn");
        }
        return "user/login";//视图解析器会拼凑字符串,最后会变成这样"/view/user/login.jsp"
    }

    /**
     * 获取右侧用户信息
     * @param user_id
     * @return
     */
    @RequestMapping(value = "/getUserDiscussionReply", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object>getUserDiscussionReply(int user_id){
        Map<String,Object> map = new HashMap<>();
        User user = userService.getUserById(user_id);
        String username = user.getUsername();
        int discussionCount = discussionService.getCountDiscussion(user_id);
        int replyCount = replyService.getCountReply(user_id);
        map.put("username",username);
        map.put("discussionCount",discussionCount);
        map.put("replyCount",replyCount);
        return map;
    }

}