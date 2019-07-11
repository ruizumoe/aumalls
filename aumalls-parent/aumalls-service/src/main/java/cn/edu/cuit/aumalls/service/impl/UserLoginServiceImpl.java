package cn.edu.cuit.aumalls.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cuit.aumalls.service.UserLoginService;
import en.edu.cuit.aumalls.mapper.UserMapper;

@Service("userLoginService")
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	private UserMapper usermapper;

	public boolean findUser(String username, String password) {
		int count = usermapper.findUserbyunameandpwd(username,password);
		if(count > 0) {
			return true;
		}
		return false;
	}

	
	


}
