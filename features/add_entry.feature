Feature: Sign Up
  
  As a new User
  I want to be able to Sign Up for a new account
  
Scenario: As a User I want to be able to navigate from the homepage to the sign up page
  Given I am on the home page
  When I click on the "Sign up" link
  Then I should be on the "Sign up" page
  And I should see the "Username" field
  And I should see the "Email" field
  And I should see the "Password" field
  And I should see the "Confirm Password" field
