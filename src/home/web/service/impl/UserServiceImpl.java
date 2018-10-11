package home.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import home.web.bean.User;
import home.web.mapper.UserMapper;
import home.web.service.UserService;

/**
 * 
 * @author RenHui
 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
 */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User Login(String account, String pwd) {
//		return userMapper.getUserByAccountAndPwd(account, pwd);
		
		User user2 = userMapper.getUserByAccountAndPwd(account, pwd);
		
		User user = new User();
		user.setAccount("test");
		
		return user;
	}
	
}
