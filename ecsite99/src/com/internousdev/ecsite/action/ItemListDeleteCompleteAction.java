package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteActionDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport{


	private String result;

	public String execute() throws SQLException{
		ItemListDeleteCompleteActionDAO itemListDeleteCompleteActionDAO = new ItemListDeleteCompleteActionDAO();

		itemListDeleteCompleteActionDAO.itemListDelete();

		result = SUCCESS;
		return result;
	}

}