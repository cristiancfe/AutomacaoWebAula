#language: pt

Funcionalidade: Busca no Google

Cenario: Carregar a pagina home do Google Brasil
  Dado que esteja na pagina home do Google brasil
  Quando pesquisar pelo termo "Livelo"
  Entao validar que foram retornados resultados 
