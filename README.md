# Automação de Testes com Robot Framework - Projeto [Curso Robot Sotouke]

Este projeto foi desenvolvido como parte do curso "Robot Framework: automatizando testes no padrão BDD" da Alura. O objetivo principal foi aplicar os conhecimentos adquiridos para criar testes automatizados utilizando o Robot Framework, seguindo as melhores práticas de organização e manutenção.

## Visão Geral

O projeto consiste em automatizar testes para a aplicação, com foco em. A estrutura do projeto foi organizada utilizando o Page Object Model (POM) para garantir a escalabilidade e facilitar a manutenção dos testes.

## Estrutura do Projeto

-   `resources/`: Contém arquivos de recursos, como variáveis e palavras-chave personalizadas.
-   `pages/`: Implementação do Page Object Model, com classes representando as páginas da aplicação e seus elementos.
-   `tests/`: Cenários de testes utilizando a sintaxe do Robot Framework.
-   `main.robot`: Arquivo principal que orquestra a execução dos testes.

## Funcionalidades Implementadas

-   [Listar as principais funcionalidades que você automatizou, por exemplo: "Login de usuários", "Cadastro de novos produtos", etc.]

## Como Executar os Testes

1.  Certifique-se de ter o Robot Framework instalado: `pip install robotframework`
2.  Instale as bibliotecas adicionais necessárias: `pip install -r requirements.txt` (se houver)
3.  Execute os testes com o comando: `robot tests/main.robot`

## Aprendizados

Durante o desenvolvimento deste projeto, foram aplicados os seguintes conceitos aprendidos no curso:

-   Criação de cenários de testes claros e concisos utilizando a sintaxe BDD do Robot Framework.
-   Utilização de variáveis e palavras-chave para evitar repetição de código e facilitar a manutenção.
-   Implementação do Page Object Model (POM) para organizar os elementos e ações das páginas da aplicação.
-   Configuração do ambiente de testes para garantir a execução consistente dos testes em diferentes ambientes.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests com melhorias e novas funcionalidades.
