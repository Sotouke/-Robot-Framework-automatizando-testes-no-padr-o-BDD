*** Settings ***
Resource    ../main.robot

*** Variables ***
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
@{seLecionar_times}
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')]
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação e Gestão')]

*** Keywords ***

Dado que preencha os campos do formulário 
    ${Nome}          First Name
    Input Text       ${CAMPO_NOME}       ${Nome}
    ${Cargo}         Job    
    Input Text       ${CAMPO_CARGO}      ${Cargo} 
    ${Imagem}        Image Url    width=200    height=100
    Input Text              ${CAMPO_IMAGEM}   ${Imagem}
    Click Element           ${CAMPO_TIME}
    Click Element           ${seLecionar_times}[0]


E clique no botão "Criar Card"
    Click Element           ${BOTAO_CARD}
 

Então identificar o card no time esperado
    Element Should Be Visible    class:colaborador               

Então identificar 3 cards no time esperado
    FOR    ${i}    IN RANGE  1    3
        Dado que preencha os campos do formulário
        E clique no botão "Criar Card" 
    END
    Sleep    10s

Então criar e identificar 1 card em cada time disponivel
    FOR    ${indice}    ${time}    IN ENUMERATE    @{seLecionar_times}
        Dado que preencha os campos do formulário
        Click Element    ${time}
        E clique no botão "Criar Card"
    END

    Sleep    10s


Dado que eu clique no botão "Criar Card"
    Click Element    ${BOTAO_CARD}

Então sistema deve apresentar mensagem de campo obrigatório
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro

    Sleep    6s
