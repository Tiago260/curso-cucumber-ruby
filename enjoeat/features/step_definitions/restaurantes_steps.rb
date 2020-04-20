=begin
Dado("que eu tenha uma lista de restaurantes") do
    @restaurant_data = [
        { name: 'BREAD & BAKERY', category: 'Padaria', delivy_time: '25 minutos', rating: 4.9 },
        { name: 'BURGER HOUSE', category: 'Hamburgers', delivy_time: '30 minutos', rating: 3.5 },
        { name: 'COFFEE CORNER', category: 'Cafeteria', delivy_time: '20 minutos', rating: 4.8 },
        { name: 'GREEN FOOD', category: 'Saudável', delivy_time: '40 minutos', rating: 4.1 },
        { name: 'ICE CREAM', category: 'Sorvetes', delivy_time: '1 hora', rating: 0 },
        { name: 'TASTY TREATS', category: 'Doces', delivy_time: '20 minutos', rating: 4.4 }
    ]
end

Quando("acesso a lista de restaurantes") do
    visit '/restaurants'
end

Então("vejo todas as opções disponíveis") do

    restaurantes = all('.restaurant-item')
#size pega o array da class
    expect(restaurantes.size).to be > 0
end

Então("cada restaurante deve exibir sua categoria") do

    restaurantes = all('.restaurant-item')
#.each_with_index trás a informação e o index
#value pega toda a informação da tabela criada nos steps
#index pega a possição da massa de teste no codigo
    @restaurant_data.each_with_index do |value, index|
       expect(restaurantes[index]).to have_text value[:category]
    end

end

Então("cada restaurante deve exibir o tempo de entrega") do

    restaurantes = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
       expect(restaurantes[index]).to have_text value[:delivy_time]
    end

end

Então("cada restaurante deve exibir sua nota de avaliação") do

    restaurantes = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
       expect(restaurantes[index]).to have_text value[:rating]
    end

end
=end

Dado("que temos os seguintes restaurantes") do |table|
    #hashes para pegar a tabela inteira criada no step do BDD
    @restaurant_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
    visit '/restaurants'
end

Então("devo ver todos os restaurantes desta lista") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value['nome'].upcase
        expect(restaurants[index]).to have_text value['categoria']
        expect(restaurants[index]).to have_text value['entrega']
        expect(restaurants[index]).to have_text value['avaliacao']
    end
end