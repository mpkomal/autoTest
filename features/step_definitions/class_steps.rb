Then(/^I select playlist id "(.*?)" from the assignables page$/) do |id|
  page.execute_script("$('hashie_mash_#{id}').mouseover();")
  page.execute_script("$('#LessonSet-#{id}').click()");
end

Then(/^I select quiz id "(.*?)" from the assignables page$/) do |id|
  page.execute_script("$('hashie_mash_#{id}').mouseover();")
  page.execute_script("$('#Quiz-#{id}').click()");
end

# use to remove a single assignment
Then(/^I remove assignment title "(.*?)" from class$/) do |name|
  click_link(name, :match => :first)
  click_link('Remove', :match => :first)
  click_link('Yes', :match => :first)
  page.has_content?("Assignment was removed successfully.")
end

# use this to remove multiple assignments
Then /^I remove the following assignments from my class:$/ do |table|
  table.hashes.each do |assignment|
    page.has_content?(assignment["name"])
    click_link(assignment["name"], :match => :first)
    click_link('Remove', :match => :first)
    click_link('Yes', :match => :first)
    page.has_content?("Assignment was removed successfully.")
  end
end

Then(/^for question (\d+) I answer with radio button "(.*?)"$/) do |question, answer|
  user_answer = "assignment_quiz_response_responses_#{question}_response_answer_id_#{answer}"
  choose(user_answer)
end

#Answer multiple questions on a quiz and submit.
Then(/^I answer the following quiz questions:$/) do |table|
  table.hashes.each do |results|
    column1 = results["question"]
    column2 = results["answer"]
    
      user_answer = "assignment_quiz_response_responses_#{column1}_response_answer_id_#{column2}"
      choose(user_answer)
  end
    find(:xpath, ".//*[@name='commit' and @class='btn']").click
end

Then(/^I select "(.*?)" from "(.*?)" hover menu$/) do |menu_item, klass_id|
  # need to add an ID to _klass.html.haml on line 6
  # %li.klass{:class => (!klass.active? ? 'archived' : nil), :id => "klass-#{klass.id}"}

  find(:xpath, ".//*[@id='klass-59762']").click
  find(:xpath, ".//*[@id='hover-menu-59762']").click
  click_link('klass-archive-59762')
  click_link('Yes')
   # find(:xpath, ".//*[@id='klass-59762']").click
   # find(:xpath, ".//*[@id='hover-menu-59762']").click
   # find(:xpath, ".//*[@id='klass-archive-59762']").click

end
