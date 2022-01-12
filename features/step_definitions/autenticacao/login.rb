Dado('estar na pagina de autenticacao') do                                    
  @authentication_page = AuthenticationPage.new
  @authentication_page.load 
end                                                                           
                                                                              
Dado('que possua um usuario {string}') do |user_type|                            
   @user = {email: 'potato@testezap.com', password: '123456&'}
end                                                                         
                                                                            
Quando('realizar o login com e-mail na tela de autenticacao') do              
  @authentication_page.login_with(@user) 
end                                                                           
                                                                              
Entao('validar que o login foi realizado com sucesso') do                 
  @my_account_page = MyAccountPage.new
  expect(@my_account_page).to have_btn_sign_out 
end                                                                           