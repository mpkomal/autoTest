
Feature: Adding and Removing lessons from favorites

Scenario: As a Teacher, I add and remove a lesson from my favorites
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  And I navigate to lesson id "3070"
  Then I press "add to favorites"
  When I navigate to favorites
  Then I should see these lessons:
  	|Interpret products by drawing pictures|
  And I navigate to lesson id "3070"
  Then I press "remove from favorites"
  When I navigate to favorites
  Then I should NOT see these lessons:
  	|Interpret products by drawing pictures|

@wip1
  Scenario: As a Student, I add and remove a lesson from my favorites
  When I am on the "student login" page
  Then I log in as "QA Student" student account
  Then I search for "LZ3070" using top site-nav search
  Then pause
  Then I press "add to favorites"
  When I navigate to favorites
  Then I should see these lessons:
  	|Interpret products by drawing pictures|
  Then I search for "LZ3070" using top site-nav search
  Then I press "remove from favorites"
  When I navigate to favorites
  Then I should NOT see these lessons:
  	|Interpret products by drawing pictures|