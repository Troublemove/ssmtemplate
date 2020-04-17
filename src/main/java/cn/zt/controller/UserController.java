package cn.zt.controller;

import javax.annotation.Resource;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView login(User model) {
		log.info("login");
		User user = userService.findByUsername(model.getUsername());
		if (user == null || !user.getPassword().equals(model.getPassword())) {
			return new ModelAndView("redirect:/login.jsp");
		} else {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/index");
			return mav;
		}
	}
}
