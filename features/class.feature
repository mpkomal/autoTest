Feature: Testing basic functionality for a class

@wip
Scenario: As a Teacher, I archive a course
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I click "Classes (1)" link
  Then I should see "QA Class1" within ".classes-body"
  Then I select "Archive class" from "QA Class1" hover menu
  Then pause