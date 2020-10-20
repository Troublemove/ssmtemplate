package cn.zt.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Properties;

/**
 * 获取操作系统相关信息
 * 
 * @author Trouble
 *
 */
public class SysInfo {

	public static void main(String[] args) throws UnknownHostException {
		SysInfo si = new SysInfo();
		System.out.println(si.getIpAddress());
		System.out.println(si.getMACAddress());
		System.out.println(si.getSysUserName());
		System.out.println(si.getSysProp());
	}

	/**
	 * 获取本机的ＩＰ地址
	 * 
	 * @return
	 * @throws UnknownHostException
	 */
	public String getIpAddress() throws UnknownHostException {
		InetAddress address = InetAddress.getLocalHost();
		return address.getHostAddress();
	}

	/**
	 * 获取操作系统类型
	 * @return
	 */
	public String getOs() {
		String os = System.getProperty("os.name").toLowerCase();
		String osType = "";
		if (os.indexOf("linux") > 0) {
			osType = "linux";
		} else if (os.indexOf("mac") >= 0 && os.indexOf("os") > 0 && os.indexOf("x") < 0) {
			osType = "mac os";
		} else if (os.indexOf("mac") >= 0 && os.indexOf("os") > 0 && os.indexOf("x") > 0) {
			osType = "mac os x";
		} else if (os.indexOf("windows") >= 0) {
			osType = "windows";
		} else if (os.indexOf("os/2") >= 0) {
			osType = "os/2";
		} else if (os.indexOf("solaris") >= 0) {
			osType = "solaris";
		} else if (os.indexOf("sunos") >= 0) {
			osType = "sunos";
		} else if (os.indexOf("mpe/ix") >= 0) {
			osType = "mpe/ix";
		} else if (os.indexOf("hp-ux") >= 0) {
			osType = "hp-ux";
		} else if (os.indexOf("aix") >= 0) {
			osType = "aix";
		} else if (os.indexOf("os/390") >= 0) {
			osType = "os/390";
		} else if (os.indexOf("freebsd") >= 0) {
			osType = "freebsd";
		} else if (os.indexOf("irix") >= 0) {
			osType = "irix";
		} else if (os.indexOf("digital") >= 0 && os.indexOf("unix") > 0) {
			osType = "digital unix";
		} else if (os.indexOf("netware") >= 0) {
			osType = "netware";
		} else if (os.indexOf("osf1") >= 0) {
			osType = "osf1";
		} else if (os.indexOf("openvms") >= 0) {
			osType = "openvms";
		}
		return osType;
	}

	/**
	 * 获得网卡地址
	 * 
	 * @return
	 */
	public String getMACAddress() {
		String address = "";
		String os = System.getProperty("os.name");
		if (os != null && os.startsWith("Windows")) {
			try {
				String command = "cmd.exe /c ipconfig /all";
				Process p = Runtime.getRuntime().exec(command);
				BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
				String line;
				while ((line = br.readLine()) != null) {
					if (line.indexOf("Physical Address") > 0) {
						int index = line.indexOf(":");
						index += 2;
						address = line.substring(index);
						break;
					}
				}
				br.close();
				return address.trim();
			} catch (IOException e) {
			}
		}
		return address;
	}

	/**
	 * 获得操作系统帐号
	 * 
	 * @return
	 */
	public String getSysUserName() {
		return System.getProperty("user.name");
	}

	/**
	 * 获得系统属性集
	 * @return
	 */
	public Properties getSysProp() {
		Properties props = System.getProperties(); // 获得系统属性集
//		String osName = props.getProperty("os.name"); // 操作系统名称
//		String osArch = props.getProperty("os.arch"); // 操作系统构架
//		String osVersion = props.getProperty("os.version"); // 操作系统版本
		return props;
	}
}
