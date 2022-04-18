login = Login.new
carrinho = Carrinho.new

Dado("que eu acesso a pagina inicial") do
    login.AcessarPagina
  end

  Dado("que quero fazer Login") do
    login.ClicarLogin
  end

  Quando("preencho meus dados {string} e {string}") do |email, senha|
    login.PreencherDados(email, senha)
    sleep 5
  end

   Então("devo ler a seguinte mensagem {string}") do |mensagem_login|
    login.Autenticado (mensagem_login)
  end

  Dado("que escolhi o produto") do
    carrinho.EscolherProduto
  end
  
  Quando("adiciono ao carrinho") do
    carrinho.CorTamanho
  end
  
  Então("devo ler a mensagem You added Helios EverCool™ Tee") do
    carrinho.CarrinhoOk
  end
