add_button = '//button[text()=" Add "]'



### ADD EMPLOYEE - SECTION ####
container_section = '//*[@class="orangehrm-background-container"][.//*[text()="Add Employee"]]'
first_name_field = container_section+'//*[@name="firstName"]'
middle_name_field = container_section+'//*[@name="middleName"]'
last_name_field = container_section+'//*[@name="lastName"]'
employee_id_field = container_section+'//div[./*[text()="Employee Id"]] /following-sibling::div/input'
employee_save_button = container_section+' //button[text()=" Save " ]'

create_login_details_switch = container_section +'//div[./*[text()="Create Login Details"]] //input/following-sibling::span'

username_field = container_section +'//div[./*[text()="Username"]]/following-sibling::div//input'
password_field = container_section +'//div[./*[text()="Password"]]/following-sibling::div//input'
confirm_password_field = container_section + '//div[./*[text()="Confirm Password"]]/following-sibling::div//input'