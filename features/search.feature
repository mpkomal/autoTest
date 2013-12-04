Feature: Search for lessons as a teacher or student

Scenario: As a Teacher, I search for a 2nd grade Math Lesson on Describing fractions of rectangles
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I select Grade "2"
  And I search for "fractions of rectangles"
  Then I should see "Describe fractions of rectangles"

Scenario: As a Student, I search for a 2nd grade Math Lesson on Describing fractions of rectangles
  When I am on the "student login" page
  Then I log in as "QA Student" student account
  Then I am on the "lessons" page
  Then I select Grade "2"
  And I search for "fractions of rectangles"
  Then I should see "Describe fractions of rectangles"

Scenario: As a unauthenticated user, I search for a 2nd grade Math Lesson on Describing fractions of rectangles
  Given I am on the "lessons" page
  Then I should see "Signup"
  Then I should see "Login"
  And I should not see "Dashboard"
  Then I select Grade "2"
  And I search for "fractions of rectangles"
  Then I should see "Describe fractions of rectangles"

Scenario: As a Teacher, I search for a lesson from the course page using search on the site-nav
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I click on "math" courses in the mega menu
  Then I click "2nd Grade Math" link
  And I should see "Measure objects to determine difference in lengths"
  Then I search for "fractions of rectangles" using top site-nav search
  And I should see "Describe fractions of rectangles"

## TODO
# Scenario: As a customer admin, I search for lessonsets
# Scenario: As a teacher, I search using a QuickCode
# Scenario: As a student, I search using a QuickCode
# Scenario: As a unauthenticated user, I search using a QuickCode from the homepage