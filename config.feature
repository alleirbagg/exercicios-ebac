#language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu configure meu produto de acordo com tamanho, gosto e quantidade desejada

            Cenário: Seleção de cor, tamanho e quantidade
            Quando eu selecionar "laranja" e "P"
            E a adicionar a quantidade "1"
            Então deve inserir o meu produto no carrinho

            Cenário: Máximo 10 produtos
            Quando eu selecionar "laranja" e "P"
            E a adicionar a quantidade "11"
            Então deve exibir a mensagem "Permitido apenas 10 produtos no carrinho"

            Cenário: Limpar seleção de tamanho e cor
            Quando eu selecionar "laranja" e "P"
            E eu clicar em "limpar"
            Então a seleção deve voltar ao estado original