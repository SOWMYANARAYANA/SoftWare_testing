Given("I am on Event Scheduler Home Page") do
	@browser.navigate.to "http://eventscheduling.herokuapp.com/"
	sleep 3
end

When("I am click on the Log In button") do
	@browser.find_element(xpath: "//*[@value='Log In']").click
	sleep 3
	@browser.find_element(xpath: "//*[@id='myModal']/div/div/div/h4").displayed?
	sleep 3
	@browser.find_element(name: 'email').send_keys "n@gmail.com"
	sleep 3
	@browser.find_element(name: 'password').send_keys "9591901771"
	sleep 3
	@browser.find_element(name: 'commit').click
	sleep 3
end

Then("I Should be able to see {string}") do |var|
	var1 = @browser.find_element(xpath: "//div[2]/div/div/p").text
	if var == var1
		puts "#{var}"
	else 
		raise "#{var1} Not Found"
	end
	sleep 3
end

Given("I am on Dashboard page") do
	@browser.find_element(xpath: "//*[@value='Sign Out']").displayed?
	sleep 3
end

When("I am create an event with blank fields") do
	@browser.find_element(xpath: "//*[@value='Create New Event']").click
	sleep 3
	@browser.find_element(xpath: "//*[@id='myModalLabel']").displayed?
	sleep 3
	@browser.find_element(id: "signup_button").click
	sleep 3
end

Then("I should be able to see the proper Error message of the feilds") do
	@browser.find_element(xpath: "//*[@id='event_form']/div[1]/div[1]/span").displayed?
	sleep 3
end

When("I am create am with invalid data") do
	@browser.find_element(id: "event_name").send_keys "marriage"
	sleep 2
	@browser.find_element(id: "venue_name").send_keys "Mysore"
	sleep 2
	@browser.find_element(id: "datepicker").send_keys "03-12-2018"
	sleep 2	
	@browser.find_element(id: "event_time").send_keys "01"
	sleep 3
	@browser.find_element(name:"event[description]").send_keys "jhhhsduyttttwruytuytweyutwuytu"
	sleep 3
	@browser.find_element(name: "commit").click
end

Then("I should be able to see the {string}") do |var2|
	sleep 3
	p var3 = @browser.find_element(xpath: "//div[3]/div[2]/span").text
	if var2==var3
		puts "#{var2}"
	else
		raise "#{var2} Not Found"
	end
end
