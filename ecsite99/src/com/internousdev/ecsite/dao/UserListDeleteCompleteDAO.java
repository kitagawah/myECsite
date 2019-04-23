package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserListDeleteCompleteDAO {
	public int userListDelete()throws SQLException{
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		String sql = "DELETE FROM login_user_transaction";

		PreparedStatement preparedStatement;

		int result = 0;
		try{
			preparedStatement = connection.prepareStatement(sql);

			result = preparedStatement.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return result;
	}

}
