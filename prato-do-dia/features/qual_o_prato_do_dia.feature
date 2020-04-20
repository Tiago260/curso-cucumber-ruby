#language:pt

Funcionalidade: Qual o prato do dia
    Queremos saber qual o prato do dia na capital pulista

    #Cenario: Hoje é o dia de Virado a Paulista
    #    Dado que hoje é "segunda-feira"
    #    Quando eu pergunto qual e o prato do dia
    #    Então a resposta deve ser "Virado a Paulista"

    #Cenario: Hoje é o dia de Dobradinha
    #    Dado que hoje é "terca-feira"
    #    Quando eu pergunto qual e o prato do dia
    #    Então a resposta deve ser "Dobradinha"

    #Cenario: Hoje é o dia de Feijoada
    #    Dado que hoje é "quarta-feira"
    #    Quando eu pergunto qual e o prato do dia
    #    Então a resposta deve ser "Feijoada"

    Esquema do Cenario: Prato do dia
        Dado que hoje é <dia>
        Quando eu pergunto qual e o prato do dia
        Então a resposta deve ser <resposta>

        Exemplos:
        | dia             | resposta            |
        | "segunda-feira" | "Virado a Paulista" |
        | "terca-feira"   | "Dobradinha"        |
        | "quarta-feira"  | "Feijoada"          |
        | "quinta-feira"  | "macarronada"       |
        | "sexta-feira"   | "Filé de merluza"   |
        | "sábado"        | "Veja o cardápio"   |
        | "domingo"       | "Fechado"           |
        | "xpto"          | "Dia inválido"      |