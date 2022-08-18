            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto, escolhendo a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione um produto no portal da EBAC-SHOP

            Esquema do Cenário: Seleção de cor, tamanho e quantidade devem ser orbigatórios
            Quando eu selecionar <cor>
            E o <tamanho>
            E a <quantidade>
            E selecionar o botão comprar
            Então o produto deve ser inserido no carrinho

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "S"     | "2"        |
            | "verde"    | "M"     | "1"        |
            | "vermelho" | "G"     | "3"        |

            Esquema do Cenário: Permitir apenas 10 produtos por venda
            Quando eu selecionar <cor>
            E o <tamanho>
            E a quantidade igual a "11"
            E selecionar o botão "comprar"
            Então deve ser exibida mensagem: "Não é possível realizar compra acima de 10 itens"

            Exemplos:
            | cor        | tamanho |
            | "azul"     | "S"     |
            | "verde"    | "M"     |
            | "vermelho" | "G"     |

            Esquema do Cenário: Botão limpar
            Quando eu selecionar <cor>
            E o <tamanho>
            E a <quantidade>
            E selecionar o botão "limpar"
            Então a cor e tamanho selecionado devem voltar ao estado original

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "S"     | "2"        |
            | "verde"    | "M"     | "1"        |
            | "vermelho" | "G"     | "3"        |