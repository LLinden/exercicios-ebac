            #language: pt

            Funcionalidade: tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do portal EBAC-SHOP

            Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Quando eu digitar todos os campos obrigatórios
            E selecionar o botão de "finalizar compra"
            Então deve ser direcionado para a tela de finalização de compra


            Esquema do Cenário: Não permitir campo de email com formato inválido
            Quando eu digitar todos os campos obrigatórios
            E o <email>
            E selecionar o botão de "finalizar compra"
            Então deve ser exibida mensagem de erro "Email com o formato inválido"

            Exemplos:
            | email       |
            | "teste"     |
            | "123"       |
            | "email.com" |

Cenário: Tentar cadastro com campos vazios
Quando selecionar o botão de "finalizar compra"
Então deve ser exibida mensagem de erro "É necessário preencher os campos obrigatórios"


