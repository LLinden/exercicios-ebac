            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto, escolhendo a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione um produto no portal da EBAC-SHOP

            Cenário: Seleção de cor, tamanho e quantidade devem ser orbigatórios
            Quando eu selecionar cor, tamanho e quantidade
            E selecionar o botão "comprar"
            Então o produto deve ser inserido no carrinho


            Cenário: Permitir apenas 10 produtos por venda
            Quando eu selecionar cor e tamanho
            E a quantidade igual a "11"
            E selecionar o botão "comprar"
            Então deve ser exibida mensagem: "Não é possível realizar compra acima de 10 itens"

            Cenário: Botão limpar
            Quando eu selecionar cor, tamanho e quantidade
            E selecionar o botão "limpar"
            Então a cor e tamanho selecionado devem voltar ao estado original