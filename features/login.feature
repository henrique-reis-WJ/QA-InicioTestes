#language:pt

Funcionalidade: Realizar Login e Compra

   Contexto:
        Dado que eu acesso a pagina inicial

    Cenario: Usuário Cadastrado
        Dado que quero fazer Login
        Quando preencho meus dados "roni_cost@example.com" e "roni_cost3@example.com"
        E devo ler a seguinte mensagem "Welcome, Veronica Costello"
        E que escolhi o produto
        E adiciono ao carrinho
        Então devo ler a mensagem You added Helios EverCool™ Tee