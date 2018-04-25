When(/^I am on Appimation home page/) do
  visit('/')
  find(:css, '#start_button')
  find(:xpath,'//button[@id = "start_button"]')
  
  find(:css, '#signup-b')
  find(:xpath,'//button[@id = "signup"]')
  
  find(:css, 'section#cta')
  find(:xpath,'//section[@id = "cta"]')
  
  find(:css, 'input#name')
  find(:xpath,'//input[@id = "name"]')
  
  find(:css, 'input#email')
  find(:xpath,'//input[@id = "email"]')

  find(:css, 'textarea#contactus-message')
  find(:xpath,'//textarea[@id = "contactus-message"]')

  find(:css, 'input#contactus-button')
  find(:xpath,'//input[@id = "contactus-button"]')

  find(:css, 'a.fa-facebook')
  find(:xpath,'//a[@class = "icon fa-facebook"]')

  find(:css, 'div.features-row')
  find(:xpath,'//div[@class = "features-row"')

  find(:css, 'div.features-row:first-of-type section:first-of-type')
  find(:xpath,'//img[@src = "static/images/features/chain.png"]/parent::section')
end