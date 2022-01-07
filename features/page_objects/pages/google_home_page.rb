class GoogleHomePage < SitePrism::Page
  set_url 'https://www.google.com.br'

  element :input_search, '[name="q"]'
  element :btn_search, '.gNO89b'

  def search(query)
    input_search.set query
    btn_search.click
  end
end

