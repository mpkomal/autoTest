Then /^I should see these sub-collections in the course:$/ do |table|
  table.hashes.each do |subcollection|
    page.has_content?(subcollection["name"])
  end
end

Then(/^I should see these lessons within "(.*?)" lesson set on the course page:$/) do |lessonset_xpath_id, table|
  table.hashes.each do |lessons|
        assert find(:xpath,".//*[@id='#{lessonset_xpath_id}']").has_text?(lessons["name"])
  end
end