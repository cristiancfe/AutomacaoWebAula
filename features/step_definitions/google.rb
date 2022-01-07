Dado('que esteja na pagina home do Google brasil') do        
  # visit 'https://www.google.com.br'
  # find('[name="q"]').set 'Compass Livelo'
  # click_button 'Google'
 

@google_page = Google.Page.new
@google_page.load
@google_page.search('Compass Livelo')

 sleep(4)

end