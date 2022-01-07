Before do
  Capybara.page.driver.browser.manage.window.maximize
end

After do |scenario|
  screenshot = Capybara.page.save_screenshot("reports/screenshots/#{scenario.__id__}.png") 
  attach(screenshot, "image/png") 
  Capybara.current_session.quit 
end