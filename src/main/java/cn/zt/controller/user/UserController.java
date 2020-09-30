package cn.zt.controller.user;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import cn.zt.entity.User;
import cn.zt.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 用户控制器
 */
@Controller
@RequestMapping(value = "/user")
@CrossOrigin
@Api(value = "user的操作类", description = "用户类")
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
	@ApiOperation(value = "根据id查询学生信息", notes = "查询学生", httpMethod = "POST", response = ModelAndView.class)
	public ModelAndView userInfo(PageInfo<?> pageInfo) {
		log.info("根据id查询学生信息");
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
