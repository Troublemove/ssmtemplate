package cn.zt.controller.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;

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
		String userName = request.getParameter("logname");//获取登录页的用户名
		String userPass = request.getParameter("logpass");//获取登录页的密码
		String captcha = request.getParameter("logcaptcha");//获取登录页的验证码
		
		// 第一次进页面
		if (null == userName) {
			return new ModelAndView("system/login");
		}
		
		HttpSession session = request.getSession();
		Subject subject = SecurityUtils.getSubject();
		// 过期时间 ms	-1000L(永不过期)
		SecurityUtils.getSubject().getSession().setTimeout(1000 * 60 * 30);
		
		UsernamePasswordToken token = new UsernamePasswordToken(userName, userPass);
		
		boolean res = true;
		try {
			subject.login(token);
		} catch (AuthenticationException e) {
			res = false;
			System.out.println(e.getMessage());
		}
		session.setAttribute("currentUser", userName);
		if (res) {
			if (session.getAttribute(Constants.KAPTCHA_SESSION_KEY).equals(captcha)) {
				log.info("login success");
				session.removeAttribute(Constants.KAPTCHA_SESSION_KEY);
				
				ModelAndView mav = new ModelAndView();
				mav.setViewName("redirect:/mainJsp");
				return mav;
			} else {
				log.info("login falure");
				return new ModelAndView("system/login");
			}
		} else {// 用户不存在
			return new ModelAndView("system/login");
		}
		
	}
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="/mainJsp")
	public ModelAndView toMain() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("system/main");
        return mv;
	}
	
}
