Feature: Viewing Lessons and Lesson Resources

Scenario: As a Teacher, I view a Lesson video and resources by navigating through search
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I select Grade "2"
  And I search for "fractions of rectangles"
  Then I should see "Describe fractions of rectangles"
  And I click "Describe fractions of rectangles" link
  And I should see "Partition rectangles and circles into equal shares | 2.G.3"
  And I should see these lessons in the lesson set
    | name                                                      |
    | Describe fractions of rectangles                          |
    | Partition rectangles into equal shares multiple ways      | 
    | Describe fractions of rectangles by counting equal shares |
    | Count fractions of a whole using fraction strips          |
    | Compare equal shares from different wholes                |
  And I should see these resources:
    | name                |
    | Slides              |
    | Parent letter       |
    | Discussion protocol |
    | Notes template      |
  And I should see "div.video-wrapper" css
#  Then I view resource with ID "10370"

Scenario: As a Teacher, I view a Lesson video and resources by using a quick code
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I search for "LZ2440" using top site-nav search
  And I should see "This is the student view."
  And I should see these lessons in the lesson set
    | name                                                      |
    | Describe fractions of rectangles                          |
    | Partition rectangles into equal shares multiple ways      | 
    | Describe fractions of rectangles by counting equal shares |
    | Count fractions of a whole using fraction strips          |
    | Compare equal shares from different wholes                |
  And I should NOT see these resources:
    | name                |
    | Slides              |
    | Parent letter       |
    | Discussion protocol |
    | Notes template      |

Scenario: As a Student, I view a Lesson video by using a quick code
  When I am on the "student login" page
  Then I log in as "QA Student" student account
  Then I search for "LZ2440" using top site-nav search
  And I should see "Ready for practice?"
  And I should see these lessons in the lesson set
    | name                                                      |
    | Describe fractions of rectangles                          |
    | Partition rectangles into equal shares multiple ways      | 
    | Describe fractions of rectangles by counting equal shares |
    | Count fractions of a whole using fraction strips          |
    | Compare equal shares from different wholes                |
  And I should NOT see these resources:
    | name                |
    | Slides              |
    | Parent letter       |
    | Discussion protocol |
    | Notes template      |

Scenario: As a unauthenticated user, I view a Lesson video by using a quick code on lessons page
  When I am on the "lessons" page
  Then I search for "LZ2440" using top site-nav search
  And I should not see "Ready for practice?"
  And I should see these lessons in the lesson set
    | name                                                      |
    | Describe fractions of rectangles                          |
    | Partition rectangles into equal shares multiple ways      | 
    | Describe fractions of rectangles by counting equal shares |
    | Count fractions of a whole using fraction strips          |
    | Compare equal shares from different wholes                |
  And I should NOT see these resources:
    | name                |
    | Slides              |
    | Parent letter       |
    | Discussion protocol |
    | Notes template      |

## TODO
Scenario: As a Teacher, I view a Lesson video and resources by navigating through search
Scenario: As a Teacher, I view a Lesson video and resources by navigating through a course
Scenario: As a Teacher, I view a Lesson video and resources by navigating through favorites
Scenario: As a Teacher, I view a Lesson video and resources by using a quick code
Scenario: As a Student, I view a Lesson video and resources by navigating through search
Scenario: As a Student, I view a Lesson video and resources by navigating through a course
Scenario: As a Student, I view a Lesson video and resources by navigating through favorites
Scenario: As a Student, I view a Lesson video and resources by using a quick code
Scenario: As a Edmodo user, I view a Lesson video
Scenario: As a Google Authenticated user, I view a Lesson video