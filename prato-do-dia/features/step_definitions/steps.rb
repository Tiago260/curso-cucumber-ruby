module Enjoeat
    def prato_do_dia(dia)
        if dia == 'segunda-feira'
            'Virado a Paulista'
        elsif dia == 'terca-feira' 
            'Dobradinha'
        elsif dia == 'quarta-feira'
            'Feijoada'
        elsif dia == 'quinta-feira'
            'macarronada'
        elsif dia == 'sexta-feira'
            'Filé de merluza'
        elsif dia == 'sábado'
            'Veja o cardápio'
        elsif dia == 'domingo'
            'Fechado'
        else 
            'Dia inválido'
        end
    end
end
World Enjoeat

Dado("que hoje é {string}") do |dia|
    @hoje = dia
end  

Quando("eu pergunto qual e o prato do dia") do
    @resultado_obtido = prato_do_dia(@hoje)
end

Então("a resposta deve ser {string}") do |resultado_esperado|
    expect(@resultado_obtido).to eq resultado_esperado
end

