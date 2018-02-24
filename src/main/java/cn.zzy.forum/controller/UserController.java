package cn.zzy.forum.controller;

import cn.zzy.forum.entity.User;
import cn.zzy.forum.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/userController")
@SessionAttributes("userSignIn")
public class UserController {

    @Resource
    private UserService userService;

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
     * 用户登录
     * @param user
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> login(User user, ModelMap modelMap) {
        Map<String, Object> map = new HashMap<>();
        int status = userService.login(user);
        map.put("status", status);
        if (status == 1){ modelMap.addAttribute("userSignIn",userService.getUserByUsername(user.getUsername())); }
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
}