class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @form_sign_up = Element.new(:css, '#signup')
    @button_close_try_now = Element.new(:css, '#signup .closecross')
    @input_name_contact_us = Element.new(:css, '#name')
    @button_sign_up = Element.new(:css, "#signup-b")
    @input_email_sign_up = Element.new(:css, "#signup input[type='email'][name = 'login']")
    @input_password_sign_up = Element.new(:css, "#signup input[type='password'][name = 'password1']")
    @input_password_confirm_sign_up = Element.new(:css, "#signup input[type='password'][name = 'password2']")
    @input_project_name_sign_up = Element.new(:css, "#signup input[type='text'][name = 'project_name']")
    @button_log_in = Element.new(:css, "#login-b")
    @input_email_log_in = Element.new(:css, "#login input[type='email'][name = 'login']")
    @input_password_log_in = Element.new(:css, "#login input[type='password'][name = 'password']")
    @button_log_in_inner = Element.new(:css, "#login .innerButton")
    @error_incorrect_login = Element.new(:xpath, "//span[text() = 'Username or password is not correct']")
  end

  def isVisible
    @button_start.isVisible
    @input_name_contact_us.isVisible
  end

  def load
    visit('/legacy')
  end

  def openTryNow
    @button_start.click
    @form_sign_up.isVisible
    @button_close_try_now.isVisible
  end

  def closeTryNow
    @button_close_try_now.click
  end

  def enterName(name)
    @input_name_contact_us.send_keys(name)
  end

  def clearName
    @input_name_contact_us.clear
  end

  def startSignUp
    @button_sign_up.isVisible
    @button_sign_up.click
  end

 def isSignUpVisible
  @form_sign_up.isVisible
 end

  def fillSignUpForm
    @input_email_sign_up.send_keys("testMail@mail.com")
    @input_password_sign_up.send_keys("testPassword")
    @input_password_confirm_sign_up.send_keys("testPassword")
    @input_project_name_sign_up.send_keys("test project")
  end

  def isSignUpClosed
    @form_sign_up.isInVispible
  end
  
  def startLogIn
    @button_log_in.isVisible
    @button_log_in.click
  end

  def fillLogIn
    @input_email_log_in.send_keys("testMail@mail.com")
    @input_password_log_in.send_keys("testPassword")
  end
  
  def submit_login
    @button_log_in_inner.isVisible
    @button_log_in_inner.click
  end

  def isLogInErrorVisible
    @error_incorrect_login.visible?
  end
end