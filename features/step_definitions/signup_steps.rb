When(/^I am on Appimation home page/) do
  visit('/legacy')
end

When(/^I click sign up/) do
  find(:css, "#signup-b").click
end

Then(/^I see signup window/) do
  find(:css, "#signup").visible?
end

When(/^I fill signup information/) do
  find(:css, "#signup input[type='email'][name = 'login']").send_keys("testMail@mail.com")
  find(:css, "#signup input[type='password'][name = 'password1']").send_keys("testPassword")
  find(:css, "#signup input[type='password'][name = 'password2']").send_keys("testPassword")
  find(:css, "#signup input[type='text'][name = 'project_name']").send_keys("test project")
end

And(/^I close signup window/) do
  find(:css, "#signup .closecross").click
end

Then(/Sign up window is closed/) do
    find(:css, ".layer2[style='display: none;']").visible?
end

When(/^I click log in/) do
  find(:css, "#login-b").click
end

When(/^I fill login information/) do
  find(:css, "#login input[type='email'][name = 'login']").send_keys("testMail@mail.com")
  find(:css, "#login input[type='password'][name = 'password']").send_keys("testPassword")
end

And(/^I confirm login/) do
  find(:xpath, "//button[@class = 'button button-block innerButton'][text() = 'Login']").click
end

Then(/^I see error incorrect login/) do
  find(:xpath, "//span[text() = 'Username or password is not correct']").visible?
end