
### Punch Out Form ###
PunchOut_container = '//*[@class="orangehrm-card-container"][.//*[text()="Punch Out"]]'

PunchOutDate_field = PunchOut_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Date"]] //input'
PunchOutTime_field = PunchOut_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Time"]] //input'
PunchOutNote_field = PunchOut_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Note"]] //textarea'
PunchOut_Button = PunchOut_container + ' //button[text()=" Out "]'

PunchOutDate_field = PunchOut_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Date"]] //i'
PunchOutTime_field = PunchOut_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Time"]] //i'

### Punch In form ###

PunchIn_container = '//*[@class="orangehrm-card-container"][.//*[text()="Punch In"]]'

PunchInDate_field = PunchIn_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Date"]] //input'
PunchInTime_field = PunchIn_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Time"]] //input'
PunchInNote_field = PunchIn_container + ' //*[contains(@class, "oxd-grid-item")][.//*[text()="Note"]] //textarea'
PunchIn_Button = PunchIn_container + ' //button[text()=" In "]'