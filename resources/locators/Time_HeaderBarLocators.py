
topBarBody = '//*[@class="oxd-topbar-body"] //nav[@role="navigation"]'


### TimeSheets ###
TimeSheet_Menu = topBarBody + ' //li[.//*[text()="Timesheets "]]'
Attendance_Menu = topBarBody + ' //li[.//*[text()="Attendance "]]'
Reports_Menu = topBarBody + ' //li[.//*[text()="Reports "]]'
ProjectsInfo_Menu = topBarBody + ' //li[.//*[text()="Project Info "]]'

### Timesheets Submenu ###
MyTimesheets_submenu = TimeSheet_Menu + '//ul //a[text()="My Timesheets"]'
EmployeeTimesheets_submenu = TimeSheet_Menu + '//ul //a[text()="Employee Timesheets"]'

### Attendance Submenu ###
MyRecords_submenu = Attendance_Menu + '//ul //a[text()="My Records"]'
PunchInOut_submenu = Attendance_Menu + '//ul //a[text()="Punch In/Out"]'
EmployeeRecords_submenu = Attendance_Menu + '//ul //a[text()="Employee Records"]' 
Configuration_submenu = Attendance_Menu + '//ul //a[text()="Configuration"]'

### Reports Submenu ###
ProjectReports_submenu = Reports_Menu + '//ul //a[text()="Project Reports"]'
EmployeeReports_submenu = Reports_Menu + '//ul //a[text()="Employee Reports"]'
AttendanceSummary_submenu = Reports_Menu + '//ul //a[text()="Attendance Summary"]'

### Project Info ###
Customers_submenu = ProjectsInfo_Menu + '//ul //a[text()="Customers"]'
Project_submenu  = ProjectsInfo_Menu + '//ul //a[text()="Projects"]'