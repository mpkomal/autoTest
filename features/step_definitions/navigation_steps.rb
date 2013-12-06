Given(/^I switch the subdomain to "(.*?)"$/) do |subdomain|
  domain = $app_host.split("/").last
  Capybara.app_host = "http://#{subdomain}.#{domain}"
end

Then(/^I navigate to lesson id "(.*?)"$/) do |id|
  visit("/lessons/#{id}")
end

# Add "I should see" statments to these
When /^I am on the "([^"]*)" page$/ do |page_name|
  case page_name 
    when /home/
      visit('/')
      page.has_content?('Join our vibrant community')
    when /lessons/
      visit('/lessons')
    when /teacher login/
      visit('/login')
      page.has_content?("Welcome! We're glad you're here.")
    when /student login/
      visit('/student/enhanced_login')
      page.has_content?('Welcome student')
    when /teacher signup/
      visit('/signup')
    when /student signup/
      visit('/student/enhanced_login#signup')
    else  
      raise "Can't find mapping from \"#{page_name}\" to a path."  
    end  
  end

Then(/^I click on "(.*?)" courses in the mega menu$/) do |subject|
  case subject
    when /math/
      find(:xpath, "//a[@href='#math-courses']").click
      page.has_content?('Grades 2-5')
      page.has_content?('Grades 6-8')
      page.has_content?('High School')
    when /ELA/
      find(:xpath, "//a[@href='#ela-courses']").click
      page.has_content?('Grades 2-5')
      page.has_content?('Grades 6-8')
      page.has_content?('High School')
    else  
      raise "Can't find mapping from \"#{subject}\" to a path."  
  end 
end

Then(/^I view "(.*?)" courses in grades "(.*?)" in the mega menu$/) do |subject, grades|
  case subject
    when /math/
      find(:xpath, "//a[@href='#math-courses']").click
      puts "Selected Math"
    
    case grades
      when /2-5/
        find(:xpath, "//a[@href='#learnzillion-math-2-5']").click
        within '#math-courses' do
          assert page.has_content?('2nd Grade Math')
          assert page.has_content?('3rd Grade Math')
          assert page.has_content?('4th Grade Math')
          assert page.has_content?('5th Grade Math')
        end
      when /6-8/
        find(:xpath, "//a[@href='#learnzillion-math-6-8']").click
        within '#math-courses' do
          page.has_content?('6th Grade Math')
          page.has_content?('7th Grade Math')
          page.has_content?('8th Grade Math')
        end
      when /High School/
        find(:xpath, "//a[@href='#learnzillion-math-HS']").click
        within '#math-courses' do
          page.has_content?('Algebra')
          page.has_content?('Functions')
          page.has_content?('Geometry')
          page.has_content?('Number and Quantity')
        end
      else  
        raise "Can't find mapping from \"#{grades}\" to a path."  
    end
    
  when /ELA/
    find(:xpath, "//a[@href='#ela-courses']").click
    puts "Selected ELA"
    
    case grades
      when /2-5/
        find(:xpath, "//a[@href='#learnzillion-ela-2-5']").click
        within '#ela-courses' do
          page.has_content?('2nd Grade English Language Arts')
          page.has_content?('3rd Grade English Language Arts')
          page.has_content?('4th Grade English Language Arts')
          page.has_content?('5th Grade English Language Arts')
        end
      when /6-8/
        find(:xpath, "//a[@href='#learnzillion-ela-6-8']").click
        within '#ela-courses' do
          page.has_content?('6th Grade English Language Arts')
          page.has_content?('7th Grade English Language Arts')
          page.has_content?('8th Grade English Language Arts')
        end
      when /High School/
        find(:xpath, "//a[@href='#learnzillion-ela-HS']").click
        within '#ela-courses' do
          page.has_content?('High School English Language Arts')
          end
        else
          raise "Can't find mapping from \"#{grades}\" to a path."
    end
  else
    raise "Can't find mapping from \"#{subject}\" to path."
  end
end