Then(/^I log in as "(.*?)" teacher account$/) do |email|
  password = "qa(teacher)"
  fill_in('session_auth_key',:with => email)
  fill_in('session_password',:with => password)
  click_button('Login')
  steps %Q{
    Then I should see "Welcome"
    Then I should see "#search-page-btn.button" css
  }
end

Then(/^I log in as "(.*?)" student account$/) do |username|
  password = "qa(student)"
  fill_in('student_username',:with => username)
  fill_in('student_password',:with => password)
  click_button('Login')
  steps %Q{
    Then I should see "Welcome, #{username}!"
    Then I should see "Add Class"
  }
end

Given(/^I logout$/) do
  click_link('account-toggle')
  click_link('Logout')
end

Given(/^I navigate to favorites$/) do
  click_link('account-toggle')
  click_link('Favorites')
end