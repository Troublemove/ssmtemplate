package cn.zt.controller.example;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/example")
public class ExampleController {
	
	private static Logger log = LogManager.getLogger(ExampleController.class);

	/**
	 * 瀑布流展示
	 * @return
	 */
	@RequestMapping(value="/waterfall")
	public ModelAndView toWaterfall() {
		log.info(" - 瀑布流展示 - ");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("example/waterfall");
        return mv;
	}
	
	/**
	 * 数据备份
	 * @return
	 */
	@RequestMapping(value="/waterfall")
	public ModelAndView toDbBack() {
		log.info(" - 数据备份 - ");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("example/dbback");
        return mv;
	}
}
