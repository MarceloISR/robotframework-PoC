from AppiumLibrary import Select
from Selenium2Library import Selenium2Library


class DropdownKeywords:

    def __init__(self, parent_selector):
        self.selenium2_library = Selenium2Library()
        self.parent_selector = parent_selector

    def select_from_dropdown(self, option):
        dropdown_element = self.selenium2_library._find_element(self.parent_selector, '//*[@id*="select"]')
        select = Select(dropdown_element)
        select.select_by_visible_text(option)

    def get_selected_option(self):
        dropdown_element = self.selenium2_library._find_element(self.parent_selector, '//*[@id*="select"]')
        select = Select(dropdown_element)
        selected_option = select.first_selected_option
        return selected_option.text

    def verify_option_exists(self, option):
        dropdown_element = self.selenium2_library._find_element(self.parent_selector, '//*[@id*="select"]')
        select = Select(dropdown_element)
        options = select.options
        for option_element in options:
            if option_element.text == option:
                return True
        return False

    def check_all_options(self):
        dropdown_element = self.selenium2_library._find_element(self.parent_selector, '//*[@id*="select"]')
        select = Select(dropdown_element)
        for option_element in select.options:
            if not option_element.is_selected:
                option_element.click()

    def uncheck_all_options(self):
        dropdown_element = self.selenium2_library._find_element(self.parent_selector, '//*[@id*="select"]')
        select = Select(dropdown_element)
        for option_element in select.options:
            if option_element.is_selected:
                option_element.click()