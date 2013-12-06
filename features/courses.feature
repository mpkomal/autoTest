Feature: Viewing Content in a course

Scenario: As a Teacher, I view a course on 7th grade English Language Arts
  When I am on the "teacher login" page
  Then I log in as "QAteacher@lz.com" teacher account
  Then I view "ELA" courses in grades "6-8" in the mega menu
  Then I click "6th Grade English Language Arts" link
  Then I should see "div.resource-list" css
  Then I should see these sub-collections in the course:
    | name                                                      |
    | Reading "The Wind's Visit" (poetry)                       |
    | Reading "D.C." (student-written poetry)                   |
    | Reading "The Twelfth Song of Thunder" (poetry)            |
    | Reading "Saved by a Seal"                                 |
    | Reading "The Reformation of Jimmy Valentine-Safe Cracker" |
  And I should see these lessons within "209-reading-literature:-saved-by-a-seal-(fiction)" lesson set on the course page:
    | name                                                       |
    | 1. Previewing a text using title and genre                 |
    | 2. Analyzing point of view                                 |
    | 3. Analyzing how setting impacts a story                   |
    | 4. Identify the main conflict in a story                   |
    # Only visible lessons will show. Need to add a step to scroll through carosel.
    # | 5. Infer and cite evidence of character traits             |
    # | 6. Identify the climax of a story                          |
    # | 7. Identify the resolution of a story                      |
    # | 8. Analyze the structure of a story using a story mountain |
  Then I click using xpath "class" and value "resource-title"
  Then I should see "Read Aloud Video" within "div.modal-header"
  Then I click using xpath "class" and value "ss-icon"
