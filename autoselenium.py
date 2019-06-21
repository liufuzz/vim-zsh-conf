from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.get("https://arknights.ml/user")

driver.find_element_by_id("email").send_keys("liufu9935@gmail.com")
driver.find_element_by_id("passwd").send_keys("mn123456")
driver.find_element_by_id("login").click()
time.sleep(2)
#driver.find_element_by_class_name("btn-flat").click()
#time.sleep(2)
result = driver.find_elements_by_class_name("btn-flat")[1].text
print(result)
driver.quit()
