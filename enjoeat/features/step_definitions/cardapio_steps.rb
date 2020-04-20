Dado("que acesso a lista de restaurantes") do
    visit '/restaurants'
end

Quando("eu acesso um restaurante {string}") do |restaurante|
    find(".restaurant-item", text: restaurante.upcase).click
end
  
Então("vejo os seguintes itens disponiveis no cardápio:") do |table|
    items = all(".menu-item-info-box")
  
    product_data = table.hashes
    product_data.each_with_index do |value, index|
        expect(items[index]).to have_text value['produto'].upcase
        expect(items[index]).to have_text value['descricao']
        expect(items[index]).to have_text value['preco']
    end
end

Então("eu vejo as seguintes informacoes adicionais:") do |table|
#rows_hash para trabalhar com chave e valor 
    infos = table.rows_hash
    detail = find('#detail')

        expect(detail).to have_text infos['Categoria']
        expect(detail).to have_text infos['Descricao']
        expect(detail).to have_text infos['Horarios']
end