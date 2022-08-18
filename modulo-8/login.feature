            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP

            Esquema do Cenário: Autenticar com dados válidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para a tela de checkout

            Exemplos:
            | usuario             | senha       |
            | "joao@ebac.com.br"  | "teste@123" |
            | "maria@ebac.com.br" | "abc@123" |
            | "jose@ebac.com.br"  | "txyzeste@123" |

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxx@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"