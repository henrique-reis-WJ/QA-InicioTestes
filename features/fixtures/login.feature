#language:pt

Funcionalidade: Realizar Login e Compra

   Contexto:
        Dado que eu acesso a pagina inicial

    @login
    Cenario: Usuário Cadastrado
        Dado que quero fazer Login
        Quando preencho meus dados "roni_cost@example.com" e "roni_cost3@example.com"
        E estarei logado
        
    Cenario: Compra
        E que escolhi o produto
        Quando adiciono ao carrinho
        Então devo ler a mensagem You added to your shopping cart