package cn.zt.controller.example;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.zt.base.ResultJson;

/**
 * 数据备份
 *
 */
@Controller
@RequestMapping(value="/dbback")
public class DbBack {

	/**
	 * 数据备份
	 * @return
	 */
	@RequestMapping(value="/dbback")
	@ResponseBody
	public ResultJson dbback(@RequestParam(value = "out", required = true) String out) {
		try {
			this.dbExport();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResultJson("500");
		}
		return new ResultJson("200");
	}
	
	private void dbExport() throws Exception {
		StringBuffer cmd = new StringBuffer();
		cmd.append("cmd /c")
			.append("mysqldump -h ").append("192.168.1.143")
			.append(" -u").append("root")
			.append(" -p").append("aaaaaa")
			.append(" -P").append("3306")
			.append(" ").append("test")
			.append(" > ").append("C:\\Users\\ZHANGJX\\Desktop\\test.sql");
		Process p = Runtime.getRuntime().exec(cmd.toString());
		// 生成sql脚本需要占用线程及时间
		p.waitFor();
	}
}
