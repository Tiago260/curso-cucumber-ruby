Dado("que o produto desejado e {string}") do |produto|
    @produto_nome = produto
end

Dado("o valor do produto e de {string}") do |valor|
    @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
#.times executa o codigo de acordo com o numero que a variavel "quantidade" está recebendo.
    quantidade.times do
#procurando um elemento dentro de da class ou buscando pelo filho
    find(".menu-item-info-box ", text: @produto_nome.upcase).find(".add-to-cart").click
    end
end

Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
    @cart = find('#cart')
#concatenando parametros da string
    expect(@cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor total deve ser de {string}") do |valor_total|
    total = @cart.find("tr", text: "Total:").find("td")
    expect(total.text).to eq valor_total
end