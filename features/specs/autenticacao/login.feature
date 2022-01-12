#language: pt

Funcionalidade: Autenticacao - Validar o Login no E-commerce
  Como um usuario do E-commerce
  Quero realizar login na pagina de Autenticacao do E-commerce
  Para finalizar compras ou guardar produtos para comprar mais tarde

Contexto: que o usuario esteja na pagina de Autenticacao
  * estar na pagina de autenticacao 

@login_com_sucesso
Cenario: Validar login do usuario pela pagina do E-commerce
  Dado que possua um usuario "existente"
  Quando realizar o login com e-mail na tela de autenticacao
  Entao validar que o login foi realizado com sucesso 

Esquema do Cenario: Validar a tentativa de Autenticacao de usuario pela tela de autenticacao do E-commerce
  Dado possuir um usuario "tipo_usuario"
  Quando realizar o login com e-mail na tela de autenticacao
  Entao validar que o login nao foi realizado 

  Exemplos:
    |tipo_usuario|
    |sem_cadastro|
    |exitente_senha_invalida|