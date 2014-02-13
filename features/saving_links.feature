Feature: Saving Links 

In order to revisit a link 
As a web surfer
I want to save a link

	Scenario: Saving
		Given I am on the homepage
	 	When I fill in "url" with "http://google.com"
	 	And I fill in "title" with "google" 
	 	And press "Add link"
	 	Then I should see "google"



