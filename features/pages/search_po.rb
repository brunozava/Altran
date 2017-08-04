class SearchPage <SitePrism::Page
    set_url ''
    element :search_field, '.gsfi[title=Pesquisar]'
    element :search_button, 'input[value="Pesquisa Google"]'
    element :search_result, 'a[href="http://www.altran.pt/"]'

    def do_search(content)
        self.search_field.set content
        self.search_button.click
    end

    def acess_url
        self.search_result.click
    end
end