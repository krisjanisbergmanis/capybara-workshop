When(/^I am on Appimation home page/) do
  # visit('/')
  # unless find(:css, '#logo').visible?
  #   raise "Logo not visible"
  # end
  @pages.page_home.load
  @pages.page_home.isVisible
end



When(/^I open Try now/) do
  # find(:css, '#start_button').click
  # unless find(:css, '#signup').visible?
  #   raise "element not visible"
  # end
  @pages.page_home.openTryNow
end


Then("I close Try now") do
  # find(:css, '#signup .closecross').click
  @pages.page_home.closeTryNow
end


When("I enter {string} and {string} in name in contact us") do |name, name2|
  # unless find(:css, '#name').visible?
  #   raise "name not visible"
  # end
  # find(:css, '#name').send_keys(name)
  # sleep(2)
  # find(:css, '#name').native.clear
  #
  # find(:css, '#name').send_keys(name2)
  # sleep(2)

  @pages.page_home.enterName(name)
  @pages.page_home.clearName
  sleep(2)
  @pages.page_home.enterName(name2)
  sleep(2)
end

When("I click sign up") do
  @pages.page_home.startSignUp
end

Then("I see signup window") do
  @pages.page_home.isSignUpVisible
end

When("I fill signup information") do
  @pages.page_home.fillSignUpForm
end

And("I close signup window") do
  @pages.page_home.closeTryNow
end

Then("Sign up window is closed") do
  @pages.page_home.isSignUpClosed
end

When("I click log in") do
  @pages.page_home.startLogIn
end

When("I fill login information") do
  @pages.page_home.fillLogIn
end

And("I confirm login") do
   @pages.page_home.submit_login
end

Then("I see error incorrect login") do
  @pages.page_home.isLogInErrorVisible
end