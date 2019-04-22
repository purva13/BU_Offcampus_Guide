Feature:
    As a User
    I want to successfully login in given valid EmailId and Password
    So I can see the Dashboard

Scenario: See Login Page
    When I am on Home Page
    Then I should see "Welcome to The Off Campus Housing Guide"
    Then I should see "Log in"
    Then I should see "Register or Log In With GitHub"
    And I should see "Register or Log In With Facebook"

Scenario: Successfully Log in
    When I am on Home Page
    #Then I login with facebook
    
    Then I should see "Off Campus Housing Guide Off Campus Housing Guide Homepage" 
    Then I should see "Welcome to The Off Campus Housing Guide Log in Register or Log In With GitHub Register or Log In With Facebook"

