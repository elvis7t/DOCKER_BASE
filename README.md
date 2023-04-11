# Web Development Environment with Docker

##PHP 
##APACHE
##MYSQL
##PHPMYADMIN

With this environment it is possible to access a web service such as a website, for example, with a persistent Mysql database and access to the mysql graphical interface

## To access the environment follow the steps below:

1º clone the repository in your folder
 - https://github.com/elvis7t/DOCKER_BASE.git
 
2º Inside the DOCKER_BASE folder run the command 
 - docker-compose up -d 
 
3º Access the containers

 php-container
 - http://localhost:85/view/index.php

 phpmyadmin(Interface Mysql)
 - http://localhost:8080/index.php
    
    Server: msql
    
    User: db_user
    
    Password: db_pass

 ## To adjust this environment to your needs, follow the steps below:
  
   ##Database
    Change the following files:
    db/sql/init-database.sh change the name of the bank that is like "useacabeca"
    and in docker-compose.yaml line 24

    In order for your ready-made database to be exported and instantiated:
    
    In the db/sql/001-create-database.sql folder I suggest exporting the already created database to a .sql file,
    then change its name to 001-create-database.sql and replace it in the folder.
    
    Remove the containers and delete the db/data folder before running docker-compose up -d again
    

    ##Folder with your web system
    The system folder if changed to one containing html, php etc files..
    it is necessary to change in 2 places, because this name is the reference, so change it in:
    
    DOCKERFILE line 3
    docker-compose.yaml line 12






