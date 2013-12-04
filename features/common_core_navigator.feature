Feature: search for content using the common core navigator 

Scenario: As a Teacher, I find Math lessons for 2nd Grade for Solving addition and subtraction problems
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I click "Navigator" link
  Then I click "2nd grade" link
  And I click using xpath "id" and value "lesson_set_607"
  Then I should see these lessons in the lesson set
  | name                                                                      |
  | Understand word problems by creating fill-in-the-blank sentences          |
  | Solve word problems by drawing picture models                             |
  | Solve word problems by drawing bar models                                 |
  | Solve word problem with missing parts by drawing bar models               |
  | Solving a multi-step word problem with a bar model                        |
  | Organize information in a multi-step word problem by drawing a bar model  |
  | Write equations to solve word problems                                    |
  