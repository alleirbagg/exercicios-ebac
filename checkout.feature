            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu conclua o cadastro no portal EBAC-SHOP

            Cenário: Cadastro com dados obrigatórios (*)
            Quando preencher todos os dados obrigatórios corretamente
            Então deve exibir uma mensagem de boas vindas "Seja bem-vindo, cadastro concluído!"

            Cenário: E-mail com formato inválido
            Quando preencher campo de e-mail com "joao.com.br"
            Então deve exibir uma mensagem de alerta "Formato de e-mail inválido"

            Cenário: Cadastro com campos vazios
            Quando não preencher dados obrigatórios
            Então deve exibir uma mensagem de alerta "Preencha os campos obrigatórios"

            Esquema do Cenário: Cadastrar multiplos usuários
            Quando eu digitar os <dados obrigatórios>
            Então deve exibir a <mensagem> de boas vindas

            Exemplos:
            | usuario (*)          | senha (*)   | mensagem                              |
            | "joao@ebac.com.br"   | "teste@123" | "Seja bem-vindo, cadastro concluído!" |
            | "arthur@ebac.com.br" | "teste@123" | "Seja bem-vindo, cadastro concluído!" |
            | "jose@ebac.com.br"   | "teste@123" | "Seja bem-vindo, cadastro concluído!" |