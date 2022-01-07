Dado('que esteja na pagina home do Google brasil') do        
  visit  'https://www.google.com.br'
  find('[name="q"]').set 'Linkedin'
  click_button 'Google'
  sleep(4)
end