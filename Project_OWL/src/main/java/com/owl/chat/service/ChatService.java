package com.owl.chat.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owl.chat.dao.ChatDao;
import com.owl.chat.dto.ChatRoom;
import com.owl.chat.dto.MyProjectsMates;
import com.owl.project.dao.ProjectDao;


@Service
public class ChatService {
	@Autowired
	private SqlSession sqlSession;

	public boolean insertChatRoom(ChatRoom room) {
		ChatDao dao = getChatDao();
		boolean result = false;

		try {
			result = dao.insertChatRoom(room) > 0 ? true : false;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	private ChatDao getChatDao() {
		return sqlSession.getMapper(ChatDao.class);
	}
	
	// chat  같은 프로젝트에 속해 있는 멤버 정보 
		public List<MyProjectsMates> getMyProjectsMates(String email, String name) {
			ChatDao dao = getChatDao();
			List<MyProjectsMates> myprojectsmates = new ArrayList<MyProjectsMates>();
			
			try {
				myprojectsmates = dao.getMyProjectsMates(email,name);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("디비에서 나온 넘의 길이는??"+ myprojectsmates.size());
			System.out.println("디비에서 먼가 나오기는 하니??" + myprojectsmates);
			
			return myprojectsmates;
			
			
		}
}
