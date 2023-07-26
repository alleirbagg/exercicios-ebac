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
            Quando eu preencher o <usuario>, <senha>, <cpf> e <endereco>
            E clicar em cadastrar
            Então deve exibir a <mensagem> de boas vindas

            Exemplos:
            | usuario              | senha       | cpf              | endereco             | mensagem                              |
            | "joao@ebac.com.br"   | "teste@123" | "000.000.000-00" | "Rua sem saída nº 0" | "Seja bem-vindo, cadastro concluído!" |
            | "arthur@ebac.com.br" | "teste@123" | "111.111.111-11" | "Rua sem saída nº 1" | "Seja bem-vindo, cadastro concluído!" |
            | "jose@ebac.com.br"   | "teste@123" | "222.222.222-22" | "Rua sem saída nº 2" | "Seja bem-vindo, cadastro concluído!" |
