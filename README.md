# Ambiente de Desenvolvimento Web com Docker

##PHP 
##APACHE
##MYSQL
##PHPMYADMIN

Com esse ambiente é possivel acessar um serviço web como um site por exemplo, com banco de dados Mysql já persistente e acesso a interface grafica do mysql

## Para acessar o ambiente seguir os paços abaixo:

1º clone o repositorio em seu comporador
 - https://github.com/elvis7t/DOCKER_BASE.git
2º Dentro da pasta DOCKER_BASE execute o comando 
 - docker-compose up -d 
3º Acessar os conteiners 
 php-container
 - http://localhost:85/view/index.php

 phpmyadmin(Interface Mysql)
 - http://localhost:8080/index.php
    Servidor: msql
    Utilizador: db_user
    Palavra-passe> db_pass

 ## Para ajustar esse ambiente a sua necessidade siga os passos abaixo:
  
    ##Banco de dados 
    Altere os seguintes arquivos:
    db/sql/init-database.sh mudar o nome do banco que esta como "useacabeca"
    e no docker-compose.yaml linha 24

    Para que seu banco já pronto seja exportado e instanciado:
    Na pasta db/sql/001-create-database.sql   Sugiro exportar o banco de dados ja criado para um arquivo .sql, depois alterar seu nome para 001-create-database.sql e subistituir ele na pasta. 
    Remova os conainer e apague a pasta db/data antes de executar o docker-compose up -d novamente
    

    ##Pasta com seu sistema web
    A pasta sistema caso seja alterada para uma que contenha arquivos html, php etc.. é preciso mudar em 2 lugares, pois esse nome é a referencia, portanto altere em: 
    DOCKERFILE linha 3
    docker-compose.yaml linha 12






