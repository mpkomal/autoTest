Feature: End to end test of Learzillion functionality

@end2end
Scenario: As a Teacher, I create a quiz assignment and assign to a student and student takes the quiz

  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I click "Classes (1)" link
  Then I should see "QA Class1" within ".classes-body"
  Then I click "QA Class1" link
  Then I should see "0 assignments"
  Then I click "New assignment" link
  Then I select quiz id "2745" from the assignables page
  Then I select playlist id "139" from the assignables page
  Then I click using xpath "id" and value "assign"
  And I fill in "assignment-due-on" field with "11/10/2016"
  And I select "assignments_builder_class_enrollments_0_all_students" checkbox
  Then I press "Done"
  Then I should see "2 assignments created."
  Then I logout

  When I am on the "student login" page
  Then I log in as "QA Student" student account
  Then I click "QA Class1" link
  Then I click "Quiz" link
  Then I answer the following quiz questions:
    | question | answer |
    | 0        | 64706  |
    | 1        | 64716  |
    | 2        | 64719  |
    | 3        | 64723  |
    | 4        | 64728  |
  Then I logout
  
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I click "Classes (1)" link
  Then I click "QA Class1" link
  Then I remove the following assignments from my class:
  | name                                         |
  | Tell, write, and measure time to the minute |
  | Tell, write, and measure time to the minute |
  Then I logout