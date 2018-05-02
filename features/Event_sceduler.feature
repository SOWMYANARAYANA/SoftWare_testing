@Event_Scheduler
Feature: As a End user 
I am succesfully logged on to home page 
I am create an event with all invalid inputs and verify each validation

@Smoke
Scenario:Trying to Login with Valid credentials
Given I am on Event Scheduler Home Page
When I am click on the Log In button
Then I Should be able to see "Logged in!"

@Create_Scheduler_With_Blank_Data
Scenario:Trying to create an event with blank data
Given I am on Dashboard page
When I am create an event with blank fields
Then I should be able to see the proper Error message of the feilds

@Create_Scheduler_With_Invalid_Data
Scenario:Trying to create an event with Invalid Credentials
Given I am on Dashboard page
When I am create am with invalid data 
Then I should be able to see the "Time can't be blank."

