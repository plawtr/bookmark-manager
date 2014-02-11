Feature: Saving Links 

In order to revisit a link 
As a web surfer
I want to save a link

	Scenario: Saving
		Given I am on the homepage
	 	When I fill in "new_link" with "http://google.com"
	 	And press "Save"
	 	Then I should see "http://google.com"

