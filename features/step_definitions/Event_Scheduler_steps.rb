# Given(/^I am on demoqa home page$/) do
# @browser.navigate.to "http://demoqa.com/"

# end


Given("I am on Event Scheduler Home Page") do
	@browser.navigate.to "http://eventscheduling.herokuapp.com/"
	sleep 3
end

When("I am click on the Login button") do
	@browser.find_element(xpath: ".//*[@value='Sign up']").displayed?
	sleep 3
	@browser.find_element(xpath: ".//*[@value='Log In']").click
	sleep 3
end

Then("I should be able to see the Event Scheduler Page") do
	@browser.find_element(id: "inputEmail").displayed?
	sleep 3
end

Given("I am on Log In pop up") do
	@browser.find_element(id: "inputEmail")
end

When("I am giving valid Email and Password and i click on OK button") do
	@browser.find_element(id: "inputEmail").send_keys "n@gmail.com"
	sleep 3
	@browser.find_element(id: "inputPassword").send_keys "9591901771"
	sleep 3
	@browser.find_element(id: "signup_button").click
end

Then("I shoul be able to see {string}") do |var|
 var1 =	@browser.find_element(xpath: "//div[2]/div/div/p").text
 if var == var1
 	puts "#{var}"
 else
 	raise "User can't logged in"
 end
	sleep 3
end

Given("I am on Event page") do
	@browser.find_element(xpath: ".//*[@id='event_form']/div[1]/label")
	sleep 3
end

When("I am click on create new event") do
	@browser.find_element(xpath: ".//*[@value='Create New Event']").click
	sleep 3
end

Then("I should be able to see the Create New Event pop up") do
	@browser.find_element(id: "event_name").displayed?
	sleep 3
end

Given("I am on Create New Event pop up") do
	@browser.find_element(id: "event_name")
end

When("I click on OK button") do
	@browser.find_element(id: "signup_button").click
	sleep 3
end

Then("I should be able to see the proper Error message of the feilds") do
  @browser.find_element(xpath: ".//*[@id='event_form']/div[1]/div[1]/span").displayed?
	sleep 3

end

When("I have given the invalid data and click on OK button") do
	@browser.find_element(id: "event_name").send_keys "marriage"
	@browser.find_element(id: "venue_name").send_keys "Mysore"
	@browser.find_element(id: "datepicker").send_keys "03-12-2018"	
	@browser.find_element(id: "event_time").send_keys "12"
	sleep 3
end

Then("I Should be Able to see the ERROR {string}") do |string|
	@browser.find_element(xpath: ".//*[@id='event_form']/div[3]/div[2]/span").displayed?
 sleep 3
end


