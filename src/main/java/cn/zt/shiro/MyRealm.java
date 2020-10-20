package cn.zt.shiro;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import cn.zt.dao.UserDao;
import cn.zt.entity.User;

public class MyRealm extends AuthorizingRealm {
	private static Logger log = LogManager.getLogger(AuthorizingRealm.class);

	@Resource
	private UserDao userDao;

	String pass;

	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		Object principal = principals.getPrimaryPrincipal();
		if ("admin".equals(principal)) {
			info.addRole("admin");
		}
		if ("user".equals(principal)) {
			info.addRole("list");
		}
		info.addRole("user");
		return info;
	}

	/**
	 * 用户验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 1. token 中获取登录的 username! 注意不需要获取password.
		Object principal = token.getPrincipal();

		// 2. 利用 username 查询数据库得到用户的信息.
		User user = userDao.findByUsername((String) principal);
		if (user != null) {
			pass = user.getPassword();
		} else {
			pass = "pass wrong!";
		}

		// 当前 Realm 的name
		String realmName = getName();
		// 返回值实例化
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal, pass, realmName);
		
		return info;
	}

	/**
	 * 将一些数据放到ShiroSession中,以便于其它地方使用
	 * 
	 * @see 比如Controller,使用时直接用HttpSession.getAttribute(key)就可以取到
	 */
	@SuppressWarnings("unused")
	private void setSession(Object key, Object value) {
		Subject currentUser = SecurityUtils.getSubject();
		if (null != currentUser) {
			Session session = currentUser.getSession();
			log.debug("Session默认超时时间为[" + session.getTimeout() + "]毫秒");
			if (null != session) {
				session.setAttribute(key, value);
			}
		}
	}
}
