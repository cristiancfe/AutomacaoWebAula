class AuthenticationPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

  element :input_email, '#email'
  element :input_password, '#passwd'
  element :btn_login, '#SubmitLogin'

  def login_with(user)
    input_email.set user[:email]
    input_password.set user[:password]
    btn_login.click
  end
end
