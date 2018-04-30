@Event_scheduler
Feature: As a End user 
am succesfully logged on to home page and verify all feilds with invalid data

@Log_in
Scenario:
Given I am on Event Scheduler Home Page
When I am click on the Login button
Then I should be able to see the Event Scheduler Page
Given I am on Log In pop up
When I am giving valid Email and Password and i click on OK button
Then I shoul be able to see "Logged in!"

@Create_Scheduler
Scenario:
Given I am on Event page
When I am click on create new event
Then I should be able to see the Create New Event pop up

@All_feilds_blank
Scenario:
Given I am on Create New Event pop up
When I click on OK button
Then I should be able to see the proper Error message of the feilds

@Time_feild_invalid_data
Scenario:
Given I am on Create New Event pop up
When  I have given the invalid data and click on OK button
Then I Should be Able to see the ERROR "Please enter a valid time, between 00:00 and 23:59"    