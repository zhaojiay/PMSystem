package com.neu.dao;

import com.neu.entity.Users;

public interface UsersDao {
	Users login(String uname,String password) throws Exception;
}
