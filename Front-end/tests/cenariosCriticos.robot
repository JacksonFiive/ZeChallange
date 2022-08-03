*** Settings ***
Resource            ../resources/resource_cenariosCriticos.robot
Suite Setup         Abrir Browser
Test Setup          Acessar pagina


*** Test Cases ***
Cenario 01 - Validar tratativa quando um cep não é encontrado 
    Quando um usuario busca seu cep                 69400-000
    Então é retornado uma mensagem de retorno       Ops! Não encontramos seu endereço...

Cenario 02 - Validar que seja possivel manipular sacola de compras
    
    Quando um usuario busca por seu cep             05433-011        15
    E pesquisa o produto                            SPATEN   
    E adiciono 15 unidades na sacola     
    E removo uma unidade                     
    Então a sacola deve conter a quantidade solicitada    14 

Cenario 03 - Validar que seja possivel realizar um cadastro de usuario 
     #os passos estão comentados devido a url ser de produção, para não contaminar a base com dados fake
    Quando clico em Entrar
    E realizo um novo cadastro 
    #Então o cadastro deve ser efetuado com sucesso 
     