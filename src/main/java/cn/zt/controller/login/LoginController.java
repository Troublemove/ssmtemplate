package cn.zt.controller.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;

import cn.zt.entity.User;
import cn.zt.service.UserService;

@Controller
public class LoginController {
	private static Logger log = LogManager.getLogger(LoginController.class);
	
	@Resource(name = "UserService")
	private UserService userService;
	
	/**
	 * 登录
	 * @param userModel
	 * @return
	 */
	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		if (null == request.getParameter("logname")) {
			
		}
		String userName = StringUtils.trim(request.getParameter("logname"));//获取登录页的用户名
		String userPass = StringUtils.trim(request.getParameter("logpass"));//获取登录页的密码
		String captcha = StringUtils.trim(request.getParameter("logcaptcha"));//获取登录页的验证码
		
		HttpSession session = request.getSession();
		
		User user = userService.findByUsername(userName);
		
		if (StringUtils.isEmpty(userName) || !user.getPassword().equals(userPass) || StringUtils.isEmpty(captcha)) {
			log.info("login falure");
			return new ModelAndView("system/login");
		} else {
			log.info("login success");
			session.removeAttribute(Constants.KAPTCHA_SESSION_KEY);
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:/mainJsp");
			return mav;
		}
	}
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="/mainJsp")
	public ModelAndView index() {
		log.info("login to index");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("system/main");
        return mv;
	}
}
