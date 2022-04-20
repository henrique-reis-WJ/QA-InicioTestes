class Carrinho 
include Capybara::DSL

    def EscolherProduto
        find('#ui-id-4').hover
        find('#ui-id-16').hover
        find('#ui-id-20').click
        sleep 3
        click_link('Helios EverCool™ Tee')
    end

    def CorTamanho
        find('#option-label-size-144-item-168').click
        find('#option-label-color-93-item-49').click
        click_button 'Add to Cart'
        sleep 5
    end

    def CarrinhoOk 
        assert_text('You added')
    end

end