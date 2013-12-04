When /search for "(.*?)"$/ do |query|
  within '#search_input_row' do
  	fill_in "query", :with => query
    click_button('Search lessons')
  end
end

When /I (.*select) Grade "([^"]+)"$/ do |select, grade|
  within '#filters' do
    # TODO: (duplication) utilize something like dom_id
    element_id = "filter_grade_level_#{grade}"
    case select
    when 'select'
      check(element_id)
    when 'deselect', 'unselect'
      uncheck(element_id)
    else
      raise 'Not supported'
    end
  end
end

Then(/^I search for "(.*?)" using top site\-nav search$/) do |query|
  within '#site-nav' do
  	fill_in "query", :with => query
    find('#query').native.send_keys(:return)
  end
end