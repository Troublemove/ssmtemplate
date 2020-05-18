package cn.zt.controller.system;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.zt.controller.login.LoginController;

@Controller
@RequestMapping(value="/system")
public class IndexController {
	private static Logger log = LogManager.getLogger(LoginController.class);
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="/index")
	public ModelAndView toIndex() {
		log.info("login to 首页");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("system/index");
        return mv;
	}
}
