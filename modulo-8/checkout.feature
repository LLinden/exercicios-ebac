            #language: pt

            Funcionalidade: tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do portal EBAC-SHOP

            Esquema do Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <email>
            E selecionar o botão de "finalizar compra"
            Então deve ser direcionado para a tela de finalização de compra

            Exemplos:
            | nome    | sobrenome | pais     | endereco        | cidade  | cep          | telefone     | email               |
            | "João"  | "Silva"   | "Brasil" | "R. Teste 123"  | "Teste" | "999999-000" | "5199999999" | "joao@ebac.com.br"  |
            | "Maria" | "Souza"   | "Brasil" | "R. Fulano 123" | "Teste" | "999999-000" | "5199999999" | "maria@ebac.com.br" |
            | "José"  | "Maria"   | "Brasil" | "R. Teste 456"  | "Teste" | "999999-000" | "5199999999" | "jose@ebac.com.br"  |

            Esquema do Cenário: Não permitir campo de email com formato inválido
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o email "teste"
            E selecionar o botão de "finalizar compra"
            Então deve ser exibida mensagem de erro "Email com o formato inválido"

            Exemplos:
            | nome    | sobrenome | pais     | endereco        | cidade  | cep          | telefone     |
            | "João"  | "Silva"   | "Brasil" | "R. Teste 123"  | "Teste" | "999999-000" | "5199999999" |
            | "Maria" | "Souza"   | "Brasil" | "R. Fulano 123" | "Teste" | "999999-000" | "5199999999" |
            | "José"  | "Maria"   | "Brasil" | "R. Teste 456"  | "Teste" | "999999-000" | "5199999999" |

            Cenário: Tentar cadastro com campos vazios
            Quando selecionar o botão de "finalizar compra"
            Então deve ser exibida mensagem de erro "É necessário preencher os campos obrigatórios"


