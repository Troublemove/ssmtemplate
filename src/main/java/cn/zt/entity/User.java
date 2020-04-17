package cn.zt.entity;

public class User {
    private Integer id;

    private String username;

    private String password;

    private String mobile;

    private String email;

    private String sex;

    private String nickname;
    
    private String auth;

    public User() {
		super();
	}

	public User(Integer id, String username, String password, String mobile, String email, String sex, String nickname,
			String auth) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
		this.email = email;
		this.sex = sex;
		this.nickname = nickname;
		this.auth = auth;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", mobile=" + mobile
				+ ", email=" + email + ", sex=" + sex + ", nickname=" + nickname + ", auth=" + auth + "]";
	}
	
}