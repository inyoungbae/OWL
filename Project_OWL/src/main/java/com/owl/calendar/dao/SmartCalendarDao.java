package com.owl.calendar.dao;

import java.sql.SQLException;
import java.util.List;

import com.owl.calendar.dto.SmartCalendar;

public interface SmartCalendarDao {
	public int insertCalendar(SmartCalendar calendar) throws ClassNotFoundException, SQLException;

	public int updateCalendar(SmartCalendar calendar) throws ClassNotFoundException, SQLException;

	public int deleteMyCalendar(String email) throws ClassNotFoundException, SQLException;
	
	public int deleteProjectCalendar(String email, int projectIdx) throws ClassNotFoundException, SQLException;

	public List<SmartCalendar> getMyAllCalendars(String email) throws ClassNotFoundException, SQLException;

	public List<SmartCalendar> getProjectCalendars(int projectIdx) throws ClassNotFoundException, SQLException;
}
