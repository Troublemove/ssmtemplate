package cn.zt.controller.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;

import cn.zt.base.ResultJson;
import cn.zt.service.UserService;

@Controller
public class LoginController {
	private static Logger log = LogManager.getLogger(LoginController.class);

	@Resource(name = "UserService")
	private UserService userService;

	/**
	 * 登录页面
	 * 
	 * @param userModel
	 * @return
	 */
	@RequestMapping(value = "/index")
	public String index() {
		if (SecurityUtils.getSubject().isAuthenticated()) {
			return "system/main";
		} else {
			return "system/login";
		}
	}

	/**
	 * 登录验证
	 * 
	 * @param userModel
	 * @return
	 */
	@RequestMapping(value = "/tologin", method = RequestMethod.POST)
	@ResponseBody
	public ResultJson login(@RequestParam(value = "logname", required = true) String userName,
			@RequestParam(value = "logpass", required = true) String userPass,
			@RequestParam(value = "logcaptcha", required = true) String captcha, HttpSession session) {

		// 先验证验证码
		if (!session.getAttribute(Constants.KAPTCHA_SESSION_KEY).equals(captcha)) {
			return new ResultJson("250");
		}

		session.removeAttribute(Constants.KAPTCHA_SESSION_KEY);

		try {
			Subject subject = SecurityUtils.getSubject();
			UsernamePasswordToken token = new UsernamePasswordToken(userName, userPass);

			subject.login(token);
			log.info("登录成功");
		} catch (AuthenticationException e) {
			log.error(e);
			return new ResultJson("300");
		}
		
		// 过期时间 ms -1000L(永不过期)
		SecurityUtils.getSubject().getSession().setTimeout(1000 * 60 * 10);
		session.setAttribute("currentUser", userName);
		return new ResultJson("200");
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	@RequestMapping(value = "/mainJsp")
	public ModelAndView toMain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/main");
		return mv;
	}

}
