class GooglePage < SitePrism::Page
  set_url 'https://www.google.com.br'

  element: input_search, '[name="q"]'
  element: btn_search, '.aajZCb .N089b'

  def search(query)
    input_search.set query
    btn_search.click
  end
end

