Then /^I should see these lessons:$/ do |table|
  table.hashes.each do |lesson|
    assert page.has_content?(lesson["name"])
  end
end

Then /^I should NOT see these lessons:$/ do |table|
  table.hashes.each do |lesson|
    assert page.has_no_content?(lesson["name"])
  end
end