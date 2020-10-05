package cn.zt.base;

public class ResultJson {

	private String status; // 返回状态
	private String msg; // 返回信息

	public ResultJson(String status) {
        this.status = status;
    }

	public ResultJson(String status, String msg) {
        this.status = status;
        this.msg = msg;
    }

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
