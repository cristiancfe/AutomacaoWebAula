Dado('que esteja na pagina home do Google brasil') do        
  @google_home_page = GoogleHomePage.new
  @google_home_page.load 
end

Quando('pesquisar pelo termo {string}') do |query| 
  @google_home_page.search(query)
  @google_results_page = GoogleResultsPage.new   
end                                                                                                                                               
Entao('validar que foram retornados resultados') do                  
  expect(@google_results_page.current_url).to have_content 'q=Livelo'
  sleep(4)   
end  
                                                                   