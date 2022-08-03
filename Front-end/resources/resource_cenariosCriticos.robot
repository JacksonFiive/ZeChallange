*** Settings ***
Resource    ../locators/locator.robot
Resource    ../base/base.robot

 

*** Keywords ***
#CONDIÇÕES


#AÇÕES
Quando um usuario busca seu cep           
    [Arguments]     ${cep}
    Click           ${txtBuscaEnde}       
    Type Text       ${txtPreencheEnde}       ${cep}  
    Click           ${listaEnde} 
     

Quando um usuario busca por seu cep             
    [Arguments]     ${cep}       ${numero}
    Click           ${txtBuscaEnde}       
    Type Text       ${txtPreencheEnde}       ${cep}  
    Click           ${listaEnde} 
    Type Text       ${txtNumeroEnde}        ${numero}
    Check Checkbox           ${checkNtemComplemento} 
    Click          ${btnVerProdutosDisponiveis}  
    Click          ${btnIdadeSIM}


Quando clico em Entrar
    Click       ${btnEntrar}  



E pesquisa o produto        
    [Arguments]             ${produto}                
    Type Text       ${txtPesquisaProduto}       ${produto}
    Click           ${produtoSelecionado}
    Click           ${selecionaQtd}
E adiciono 15 unidades na sacola                       
    Click          ${btnAdiciona15Sacola}  
E removo uma unidade                      
    Click           ${removeUmaUnidade}   
    Sleep  1
E realizo um novo cadastro 
    ${CPF}      FakerLibrary.cpf
    ${email}     FakerLibrary.Email
    ${nome}    FakerLibrary.First Name	 
    Set test variable       ${nome}    
        
    Click               ${btnNovoCadastro}    force=true 
    Type Text                ${formNome}       ${nome} Santos
    Type Text                ${formEmail}      ${email}     
    Type Text                ${formSenha}      Gel@da1D+     
    Type Text                ${formCPF}         ${CPF}      
    Type Text                ${formCelular}      11940028922   
    Type Text                ${formData}         16071996  
    Check Checkbox           ${okPoliticaPrivacidade}  
    #Click                    ${btnRegistro}
    #Click                    ${btnValidarDepois}      
#VALIDAÇÕES

Então é retornado uma mensagem de retorno 
   [Arguments]     ${msgRetorno}
    Get Text       ${EndeNaoEncontrado}      ==  ${msgRetorno}


Então a sacola deve conter a quantidade solicitada    
    [Arguments]     ${qtd}  

    Get Text        ${qtdFinalProdutos}  *=  ${qtd}



Então o cadastro deve ser efetuado com sucesso
    Click       ${contaUsuario}
    Get Text        ${nomeUserLogado}    *=  ${nome}
     