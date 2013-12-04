# DEFAULT GENERATED WEB_STEPS ARE NO LONGER AVAILABLE 
# BUT I WILL ADD THEM IN WHEN I NEED THEM
# EXAMPLES: https://github.com/cucumber/cucumber-rails/blob/master/features/support/legacy_web_steps_support.rb 

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )click "([^"]*)" link$/ do |link|
  click_link(link, :match => :first)
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then(/^I should see "(.*?)" within "(.*?)"$/) do |text, klass|
  within "#{klass}" do
    if page.respond_to? :should
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end

Then /^(?:|I )should see "([^"]*)" css$/ do |path|
  if page.respond_to? :should
    page.should have_css(path)
  else
    assert page.has_css?(path)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

When /^(?:|I )click using xpath "([^"]*)"$/ do |xpath_href_path|
  find(:xpath, "//a[@href='#{xpath_href_path}']", :match => :first).click
end

When /^(?:|I )click using xpath "([^"]*)" and value "([^"]*)"$/ do |xpath_type , xpath_path|
  find(:xpath, ".//*[@#{xpath_type}='#{xpath_path}']", :match => :first).click
end

Then(/^I fill in "(.*?)" field with "(.*?)"$/) do |field, string|
  fill_in field, :with => string
end
Then(/^I select "(.*?)" checkbox$/) do |checkbox|
  check(checkbox)
end