Given /^I wait (\d+) seconds?$/ do |n|
  sleep(n.to_i)
end

Then /^pause$/ do
  STDIN.getc 
end

Then /^I clear cookies?$/ do
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
end