package com.neu.dao;

import java.sql.Connection;
import java.sql.ResultSet;

import com.neu.entity.Users;

public class UsersDaoImpl implements UsersDao {

	@Override
	public Users login(String uname, String password) throws Exception {
		DBUtils db = new DBUtils();
		String sql = "select * from users where uname = ? and password = ?";
		Connection connection = db.getConnection();
		ResultSet rs = db.executeQuery(connection, sql, uname, password);
		int id;
		Users users = null;
		while(rs.next()) {
			id = rs.getInt("id");
			uname = rs.getString("uname");
			password = rs.getString("password");
			users = new Users(id, uname, password);
		}
		return users;
	}

}
