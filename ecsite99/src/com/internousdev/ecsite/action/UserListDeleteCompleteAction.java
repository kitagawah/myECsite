package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport{

	private String result;

	public String execute()throws SQLException{
		UserListDeleteCompleteDAO uldcDAO = new UserListDeleteCompleteDAO();

		uldcDAO.userListDelete();

		result = SUCCESS;
		return result;
		}

}
