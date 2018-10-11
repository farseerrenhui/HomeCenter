package home.web.mapper;

import org.apache.ibatis.annotations.Param;

import home.web.bean.User;

public interface UserMapper {
	User getUserByAccountAndPwd(@Param("account")String account,@Param("pwd") String pwd);
}
