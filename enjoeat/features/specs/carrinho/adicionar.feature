#language: pt

@bread_bakery
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar uma compra
    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar itens ao meu carrinho


    Cenário: Adicionar 1 unidade
        Dado que o produto desejado e "Cup Cake"
        E o valor do produto e de "R$ 8,70"
        Quando eu adiciono 1 unidade(s)
        Então deve ser adicionado 1 unidade(s) deste item
        E o valor total deve ser de "R$ 8,70"

    @temp
    Cenário: Adicionar 2 unidade
        Dado que o produto desejado e "Donut"
        E o valor do produto e de "R$ 2,50"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 5,00"

    Cenário: Adicionar varios items
        Dado que os produtos desejados são:
            | nome                   | preco    |
            | CUP CAKE               | R$ 8,70  |
            | DONUT                  | R$ 2,50  |
            | PÃO ARTESANAL ITALIANO | R$ 15,90 |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 27,10"