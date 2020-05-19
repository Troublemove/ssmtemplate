package cn.zt.controller.user;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.zt.entity.User;
import cn.zt.service.UserService;

/**
 * 用户控制器
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

	private static Logger log = LogManager.getLogger(UserController.class);

	@Resource(name = "UserService")
	private UserService userService;

	/**
	 * 用户管理
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/userInfo")
	public ModelAndView userInfo() {
		log.info("login to 首页");
		ModelAndView mv = new ModelAndView();
		
		List<User> user = userService.findAllUser();
		
		mv.addObject("userList", user);
		mv.setViewName("user/userInfo");
        return mv;
	}
}
