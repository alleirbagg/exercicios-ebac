            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Login válido
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então usuário deve ser encaminhado para página de checkout

            Cenário: Usuário ou senha inválidos
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "000000"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

           