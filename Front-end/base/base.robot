***Settings***
Resource    ../Locators/locator.robot
Library     Browser
Library     FakerLibrary    locale=pt_BR
***Variables***
${URL}      https://ze.delivery/   
${title}        Zé Delivery: Entrega de bebidas geladas a preço baixo
***Keywords***
Abrir Browser

    New Browser     chromium  headless=false
   
   
Acessar pagina
     New Page        ${URL}
     Get Title  ==  ${title}