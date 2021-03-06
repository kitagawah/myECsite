package com.internousdev.ecsite.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;
public class ItemCreateCompleteDAO {
	private DateUtil dateUtil = new DateUtil();

	private String sql="INSERT INTO item_info_transaction(item_Name,item_Price,item_Stock,insert_date) VALUES(?,?,?,?)";

	public void createItem(String itemName,String itemPrice,String itemStock)throws SQLException{
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, itemName);
			preparedStatement.setString(2, itemPrice);
			preparedStatement.setString(3, itemStock);
			preparedStatement.setString(4, dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connection.close();
		}
	}

}
