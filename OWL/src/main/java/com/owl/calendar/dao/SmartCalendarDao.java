package com.owl.calendar.dao;

import java.sql.SQLException;

import com.owl.calendar.dto.SmartCalendar;

public interface SmartCalendarDao {
	public int insertCalendar(SmartCalendar calendar) throws ClassNotFoundException, SQLException;

	public int updateCalendar(SmartCalendar calendar) throws ClassNotFoundException, SQLException;

	public int deleteCalendar(SmartCalendar calendar) throws ClassNotFoundException, SQLException;
}