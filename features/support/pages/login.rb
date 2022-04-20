class Login
include Capybara::DSL

    def AcessarPagina
        visit 'https://magento.nublue.co.uk/'   
    end

    def ClicarLogin
        click_link 'Sign In'
    end

    def PreencherDados (p_email, p_senha)
        find('#email').set p_email
        find('#pass').set p_senha
        click_button 'Sign In'
        sleep 5
    end

    def Autenticado 
        assert_text('Veronica Costello')
    end

end
