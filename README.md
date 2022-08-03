<h1 align="center">
    Zé Delivery Code Challenge
</h1>


#### Estrutura do projeto

    ├── .github                   
         ├── Front-End                           # Diretório de arquivos das validações de tela
           ├── base                              # Diretório de arquivos com variaveis gerais e configurações de test e setup
           ├── locators                          # Diretorio com o arquivo de mapeamento de elementos da tela
           ├── resource                          # Diretorio com o arquivo de keywords
           ├── tests                             # Diretório com o arquivo de cenários de teste
         ├── OpenAPI                             # Diretório de arquivos das validações de API
           ├── base                              # Diretório de arquivos com variaveis gerais 
           ├── resource                          # Diretorio com o arquivo de keywords
           ├── tests                             # Diretório com o arquivo de cenários de teste   
    |── requiriments.txt                       # arquivo com as bibliotecas utilizadas  
    └── README.md                                



### Configurando o projeto na sua máquina
Para rodar o projeto na sua máquina basta seguir os passos:

- Ter uma IDE de sua preferência 
- Python instalado: [Site de instalacao do python](https://www.python.org/downloads/)
- Node Instalado    [ Site de instalacao do Node ](https://nodejs.org/en/download/)

> Copiar o Projeto
```
git clone https://github.com/JacksonFiive/desafio.git
```

> Instalar as dependencia do robot no seu terminal
```
cd C:\{PATH}\CHALLENGEZE
pip install -r .\requirements.txt
```
> Após a instalação executar o comando:
```
rfbrowser init
```

### Executando o projeto WEB
> Acessar a pasta do projeto e executar o comando no seu terminal 
```
 robot -d ./log .\Front-End\tests\cenariosCriticos.robot
```
 

### Executando o projeto API
> Acessar a pasta do projeto e executar o comando no seu terminal 
### Observação
> É necessario gerar uma API_KEY no [ Site openweather ](https://home.openweathermap.org/api_keys)


```
robot -v API_KEY:VALOR_QUE_IRA_SER_GERADO -d ./log .\OpenAPI\tests\ValidarOpenAPI.robot
```
 
 
 
