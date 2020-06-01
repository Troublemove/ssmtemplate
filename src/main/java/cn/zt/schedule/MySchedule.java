package cn.zt.schedule;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class MySchedule {
	
	private static Logger log = LogManager.getLogger(MySchedule.class);
	
	@Scheduled(cron="* * 1 * * *")
	public void aa() throws Exception {
		log.info(" =========  shedule -- aa  ========== ");
	}
	
}
