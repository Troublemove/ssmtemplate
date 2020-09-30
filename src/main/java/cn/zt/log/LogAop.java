package cn.zt.log;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * 日志AOP
 *	执行顺序
 *	around before advice
 *	before advice
 *	target method 执行
 *	around after advice
 *	after advice
 *	afterReturning
 */
@Component
@Aspect
public class LogAop {
	
	/**
	 * 
	 * 定义统一拦截的切入点
	 * 第一个*表示任意返回类型
	 * 第二个*表示任意类名，假如第二个*前面是两个.则表示包括包里面的子包
	 * 第三个*表示任意方法名，后面的小括号表示任意参数值
	 * 
	 */
	@Pointcut("execution (* cn.zt.controller..*.*(..))")
	public void logPoint() {
		
	}
	
	@Before("logPoint()")
	public void beforeAdvice() {
//		System.out.println("beforeAdvice");
	}
	
	@After("logPoint()")
	public void afterAdvice() {
//		System.out.println("afterAdvice");
	}
	
	@Around("logPoint()")
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		String targetName = pjp.getTarget().getClass().getName();
		String methodName = pjp.getSignature().getName();
//		System.out.println(targetName + "   ++++   " + methodName);
//		System.out.println("注解类型环绕通知..环绕前");
		return pjp.proceed();
	}
}
