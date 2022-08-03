*** Settings ***
Resource    ../base/basic.robot


*** Keywords ***
###AÇÃO
Quando eu informo uma cidade existente
    [Arguments]  ${cidade}   ${status_code}
    Create Session   clima        ${URL}   verify=true
    &{PARAMS}       Create Dictionary         q=${cidade}       APPID=${API_KEY}
    ${resposta}  Get on Session   clima        /weather   params=&{PARAMS}  expected_status=${status_code}
    Set Test Variable  ${resposta}
    Log to console        ${resposta}

Dado que informo uma cidade que não existe
   [Arguments]  ${cidade}    
    Create Session   clima        ${URL}   verify=true
    &{PARAMS}       Create Dictionary         q=${cidade}       APPID=${API_KEY}
    ${resposta}  Get on Session   clima        /weather   params=&{PARAMS}  expected_status=anything
    Set Test Variable  ${resposta}
    Log to console        ${resposta}

Dado que eu tenha informado a appid invalido
    [Arguments]  ${APIKEY}     
    Create Session   clima        ${URL}   verify=true
    &{PARAMS}       Create Dictionary         q=santos       APPID=${APIKEY}  
    ${resposta}  Get on Session   clima        /weather   params=&{PARAMS}  expected_status=anything
    Set Test Variable  ${resposta}
    Log to console        ${resposta}


Dado que eu não tenha informado a cidade
    [Arguments]       
    Create Session   clima        ${URL}   verify=true
    &{PARAMS}       Create Dictionary         q=        APPID=${API_KEY}
    ${resposta}  Get on Session   clima        /weather   params=&{PARAMS}  expected_status=anything
    Set Test Variable  ${resposta}
    Log to console        ${resposta}




#VALIDAÇÃO   
Então verifico se a região retornada é da cidade
    [Arguments]  ${cidade}      
    Should Be Equal As Strings      ${resposta.json()["name"]}      ${cidade}


Então é retornado a mensagem   
    [Arguments]  ${not_found}
    Should Be Equal As Strings      ${resposta.json()["message"]}      ${not_found}

E é retornado uma descrição sobre o clima
    Should Not Be Empty    ${resposta.json()["weather"]}  description

E Status code  
  [Arguments]  ${status_code}
    Should Be Equal As Strings      ${resposta.status_code}      ${status_code}