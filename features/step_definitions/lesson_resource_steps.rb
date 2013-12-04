Then /^I should see these resources:$/ do |table|
  table.hashes.each do |resource|
    assert page.has_content?(resource["name"])
  end
end

Then /^I should NOT see these resources:$/ do |table|
  table.hashes.each do |resource|
    assert page.has_no_content?(resource["name"])
  end
end

Then(/^I view resource with ID "(.*?)"$/) do |resource_id|
  find(:xpath, "//a[@href='#resource-preview-modal_document_#{resource_id}']", :match => :first).click
  assert page.has_content?('If you cannot see preview it is probably being blocked on the school or district level. We are working to resolve this.')
end