package home.web.service;

import home.web.bean.User;

public interface UserService {
	
	public User Login(String account,String pwd);
}
