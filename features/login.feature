Feature: Logging into LearnZillion
  In order to ensure all customers are up
  Customers should be able to
  Login into customer sites.

Scenario: Log into Learnzillion as a teacher
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account 

Scenario: Log into Learnzillion as a student
  When I am on the "student login" page
  Then I log in as "QA Student" student account

Scenario: Log into DCPS Learnzillion as a teacher
  Given I switch the subdomain to "DCPS"
  When I am on the "teacher login" page
  And I should see "LearnZillion for DC Public Schools"

Scenario: Log into collaborative Learnzillion as a teacher
  Given I switch the subdomain to "collaborative"
  When I am on the "teacher login" page
  And I should see "LearnZillion for DC Common Core Collaborative"

Scenario: Log into delawaredreamteam Learnzillion as a teacher
  Given I switch the subdomain to "delawaredreamteam"
  When I am on the "teacher login" page
  And I should see "LearnZillion for Delaware Dream Team"

Scenario: Log into dreamteam Learnzillion as a teacher
  Given I switch the subdomain to "dreamteam"
  When I am on the "teacher login" page
  And I should see "LearnZillion for DreamTeam"

Scenario: Log into hss Learnzillion as a teacher
  Given I switch the subdomain to "hss"
  When I am on the "teacher login" page
  And I should see "LearnZillion for Dr. Richard Izquierdo Health & Science Charter School"

Scenario: Log into lz Learnzillion as a teacher
  Given I switch the subdomain to "lz"
  When I am on the "teacher login" page
  And I should see "LearnZillion for US!"

Scenario: Log into progress Learnzillion as a teacher
  Given I switch the subdomain to "progress"
  When I am on the "teacher login" page
  And I should see "LearnZillion for The PROGRESS Project"

Scenario: Log into scsd Learnzillion as a teacher
  Given I switch the subdomain to "scsd"
  When I am on the "teacher login" page
  And I should see "LearnZillion for Syracuse City School District"

Scenario: Log into tlcs Learnzillion as a teacher
  Given I switch the subdomain to "tlcs"
  When I am on the "teacher login" page
  And I should see "LearnZillion for Tulsa Lighthouse Charter School"

Scenario: Log into toppp Learnzillion as a teacher
  Given I switch the subdomain to "toppp"
  When I am on the "teacher login" page
  And I should see "LearnZillion for Chavez Schools"

## TODO  
# Scenario: Log into Learnzillion with Google Auth
# Scenario: Log into Learnzillion through Edmodo
