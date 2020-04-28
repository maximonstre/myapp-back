CREATE TABLE contacts (
prenom varchar(50),
nom  varchar(50),
mail varchar(50)
);


alter user 'root'@'%' identified with mysql_native_password by 'password';
