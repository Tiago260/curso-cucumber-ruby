#language: pt

Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que dessistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Cenário: Remover 1 item
        Dado que eu tenho os seguintes itens no carrinho:
            | nome                   | preco    |
            | CUP CAKE               | R$ 8,70  |
            | DONUT                  | R$ 2,50  |
            | PÃO ARTESANAL ITALIANO | R$ 15,90 |
        Quando eu removo somente o item 1
        Então o valor total deve ser de "R$ 18,40"

    Cenário: Remover todos os itens
        Dado que eu tenho os seguintes itens no carrinho:
            | nome                   | preco    |
            | CUP CAKE               | R$ 8,70  |
            | DONUT                  | R$ 2,50  |
            | PÃO ARTESANAL ITALIANO | R$ 15,90 |
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
