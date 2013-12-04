Then /^I should see these lessons in the lesson set$/ do |table|
  table.hashes.each do |lesson_set|
    assert page.has_content?(lesson_set["name"])
  end
end