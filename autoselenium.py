from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.get("https://arknights.ml/user")

driver.find_element_by_id("email").send_keys("***")
driver.find_element_by_id("passwd").send_keys("***")
driver.find_element_by_id("login").click()
time.sleep(2)
try:
  driver.find_element_by_id("checkin").click()
except Exception:
  print('已经签过了')
time.sleep(2)
result = driver.find_elements_by_class_name("btn-flat")[1].text
print(result)
driver.quit()
