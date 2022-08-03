*** Settings ***
Resource            ../resources/resourceValidarOpenAPI.robot

Documentation
...                Narrativa do usuario: Descobrir o clima de uma cidade
...                Como usuario do open weather
...                Gostaria de saber o clima atual da cidade
...                Para que eu possa planjear uma viagem

*** Test Cases ***
Cenario 01 - Validar busca por cidade
    Quando eu informo uma cidade existente   Barueri  200
    Então verifico se a região retornada é da cidade   Barueri
    E é retornado uma descrição sobre o clima

Cenario 02 - Validar comportamento ao enviar uma cidade inexistente
    Dado que informo uma cidade que não existe  Não existe   
    Então é retornado a mensagem  city not found
    E Status code  404

Cenario 03 - Validar comportamento ao enviar a requisição com a api key invalida 
   Dado que eu tenha informado a appid invalido  teste123      
   Então é retornado a mensagem  Invalid API key. Please see http://openweathermap.org/faq#error401 for more info.
   E Status code  401
   
Cenario 04 - Validar comportamento ao não informar uma cidade
    Dado que eu não tenha informado a cidade          
    Então é retornado a mensagem     Nothing to geocode
    E Status code  400