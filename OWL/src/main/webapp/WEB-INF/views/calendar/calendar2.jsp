<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
    <link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
    <link rel="stylesheet" type="text/css" href="resources/plugins/toast-calendar/dist/tui-calendar.css">
    <link rel="stylesheet" type="text/css" href="resources/plugins/toast-calendar/css/default.css">
    <link rel="stylesheet" type="text/css" href="resources/plugins/toast-calendar/css/icons.css">
</head>
<body>
	<div class="row">
		 <div class="col-sm-2">
			<div  class="lnb-calendars">
            <div  class="lnb-calendars-d1">
            	<div class="lnb-calendars-item">
	            	<label>
                        <input class="tui-full-calendar-checkbox-square" type="checkbox" value="all" checked>
                        <span></span>
                        <strong>View all</strong>
                    </label>
            	</div>
            	<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="1" checked=""><span style="border-color: rgb(158, 95, 255); background-color: rgb(158, 95, 255);"></span><span>My Calendar</span></label></div>
            	<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="1" checked=""><span style="border-color: rgb(158, 95, 255); background-color: rgb(158, 95, 255);"></span><span>My Calendar</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="2" checked=""><span style="border-color: rgb(0, 169, 255); background-color: rgb(0, 169, 255);"></span><span>Company</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="3" checked=""><span style="border-color: rgb(255, 85, 131); background-color: rgb(255, 85, 131);"></span><span>Family</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="4" checked=""><span style="border-color: rgb(3, 189, 158); background-color: rgb(3, 189, 158);"></span><span>Friend</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="5" checked=""><span style="border-color: rgb(187, 220, 0); background-color: rgb(187, 220, 0);"></span><span>Travel</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="6" checked=""><span style="border-color: rgb(157, 157, 157); background-color: rgb(157, 157, 157);"></span><span>etc</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="7" checked=""><span style="border-color: rgb(255, 187, 59); background-color: rgb(255, 187, 59);"></span><span>Birthdays</span></label></div>
				<div class="lnb-calendars-item"><label style=""><input type="checkbox" class="tui-full-calendar-checkbox-round" value="8" checked=""><span style="border-color: rgb(255, 64, 64); background-color: rgb(255, 64, 64);"></span><span>National Holidays</span></label></div>
			</div>
        </div>
		</div>
		
		<div class="col-sm-10">
		<div >
        <div id="menu">
            <span class="dropdown">
                <button id="dropdownMenu-calendarType" class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="true">
                    <i id="calendarTypeIcon" class="calendar-icon ic_view_month" style="margin-right: 4px;"></i>
                    <span id="calendarTypeName">Dropdown</span>&nbsp;
                    <i class="calendar-icon tui-full-calendar-dropdown-arrow"></i>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu-calendarType">
                    <li role="presentation">
                        <a class="dropdown-menu-title" role="menuitem" data-action="toggle-daily">
                            <i class="calendar-icon ic_view_day"></i>Daily
                        </a>
                    </li>
                    <li role="presentation">
                        <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weekly">
                            <i class="calendar-icon ic_view_week"></i>Weekly
                        </a>
                    </li>
                    <li role="presentation">
                        <a class="dropdown-menu-title" role="menuitem" data-action="toggle-monthly">
                            <i class="calendar-icon ic_view_month"></i>Month
                        </a>
                    </li>
                    <li role="presentation">
                        <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weeks2">
                            <i class="calendar-icon ic_view_week"></i>2 weeks
                        </a>
                    </li>
                    <li role="presentation">
                        <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weeks3">
                            <i class="calendar-icon ic_view_week"></i>3 weeks
                        </a>
                    </li>
                    <li role="presentation" class="dropdown-divider"></li>
                    <li role="presentation">
                        <a role="menuitem" data-action="toggle-workweek">
                            <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-workweek" checked>
                            <span class="checkbox-title"></span>Show weekends
                        </a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" data-action="toggle-start-day-1">
                            <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-start-day-1">
                            <span class="checkbox-title"></span>Start Week on Monday
                        </a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" data-action="toggle-narrow-weekend">
                            <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-narrow-weekend">
                            <span class="checkbox-title"></span>Narrower than weekdays
                        </a>
                    </li>
                </ul>
            </span>
            <span id="menu-navi">
                <button type="button" class="btn btn-default btn-sm move-today" data-action="move-today">Today</button>
                <button type="button" class="btn btn-default btn-sm move-day" data-action="move-prev">
                    <i class="calendar-icon ic-arrow-line-left" data-action="move-prev"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm move-day" data-action="move-next">
                    <i class="calendar-icon ic-arrow-line-right" data-action="move-next"></i>
                </button>
            </span>
            <span id="renderRange" class="render-range"></span>
        </div>
        <div id="calendar"></div>
    </div>
		</div> 
	</div>

    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.min.js"></script>
    <script src="https://uicdn.toast.com/tui.dom/v3.0.0/tui-dom.js"></script>
    <script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.min.js"></script>
    <script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chance/1.0.13/chance.min.js"></script>
     <script src="resources/plugins/toast-calendar/dist/tui-calendar.js"></script>
    <script src="resources/plugins/toast-calendar/js/data/calendars.js"></script>
    <script src="resources/plugins/toast-calendar/js/data/schedules.js"></script>
    <script src="./js/theme/dooray.js"></script>
    <script src="resources/plugins/toast-calendar/js/app.js"></script>
</body>
</html>
