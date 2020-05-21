package cn.zt.controller.user;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

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
	public ModelAndView userInfo(PageInfo<?> pageInfo) {
		ModelAndView mv = new ModelAndView();
		int pageNum  = (pageInfo.getPageNum() == 0)? 1 : pageInfo.getPageNum();
		int pageSize  = (pageInfo.getPageSize() == 0)? 10 : pageInfo.getPageSize();
		
		PageInfo<User> user = userService.findAllUser(pageNum, pageSize);
		
		mv.addObject("pageInfo", user);
		mv.addObject("userList", user.getList());
		mv.setViewName("user/userInfo");
        return mv;
	}
}
