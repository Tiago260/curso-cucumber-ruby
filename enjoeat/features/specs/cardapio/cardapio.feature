#language: pt

Funcionalidade: Cardápio
    Para que eu possa decidir o que pretento comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio 

    @cardapio
    Cenário: Produto
        Dado que acesso a lista de restaurantes
        Quando eu acesso um restaurante "Burger House"
        Então vejo os seguintes itens disponiveis no cardápio:
            | produto        | descricao                       | preco    |
            | CLASSIC BURGER | O clássico. Não tem como errar. | R$ 18,50 |
            | BATATAS FRITAS | Batatas fritas crocantes        | R$ 5,50  |
            | REFRIGERANTE   | O refri mais gelado da cidade.  | R$ 4,50  |

    Cenário: Carrinho vazio
        Quando eu acesso um restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"