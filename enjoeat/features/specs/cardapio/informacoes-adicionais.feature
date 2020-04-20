#language: pt

Funcionalidade: informações adicionais
    Para que eu possa ver as informações adicionais
    Sendo um usuario que escolheu um restaurante
    Posso ver a categoria, descricao detalhada e horários de funcionamento

    @infos
    Cenario: Detalhes do restaurante
        Dado que acesso a lista de restaurantes
        Quando eu acesso um restaurante "Burger House"
        Então eu vejo as seguintes informacoes adicionais:
            | Categoria | Hamburgers                               |
            | Descricao | 40 anos se especializando em trash food. |
            | Horarios  | Funciona todos os dias, de 10h às 22h    |