#language: pt


Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    #Contexto: Lista de restaurantes
    #    Dado que eu tenha uma lista de restaurantes
#
    #    
    #Cenario: Todos os restaurantes
#
    #    Quando acesso a lista de restaurantes
    #    Então vejo todas as opções disponíveis
#
#
    #Cenario: Categorias
#
    #    Quando acesso a lista de restaurantes
    #    Então cada restaurante deve exibir sua categoria
#
    #Cenario: Tempo de entrega
#
    #    Quando acesso a lista de restaurantes
    #    Então cada restaurante deve exibir o tempo de entrega
#
    #Cenario: Nota de avaliação
#
    #    Quando acesso a lista de restaurantes
    #    Então cada restaurante deve exibir sua nota de avaliação

# Quando se usa table nos steps o navegador não fica abrindo e fechando
    Cenario: Restaurantes disponíveis

        Dado que temos os seguintes restaurantes
        | nome           | categoria  | entrega    | avaliacao |
        | BREAD & BAKERY | Padaria    | 25 minutos | 4.9       |
        | BURGER HOUSE   | Hamburgers | 30 minutos | 3.5       |
        | COFFEE CORNER  | Cafeteria  | 20 minutos | 4.8       |
        Quando acesso a lista de restaurantes
        Então devo ver todos os restaurantes desta lista