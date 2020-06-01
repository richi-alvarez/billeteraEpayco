CREATE DATABASE IF NOT EXISTS epayco;
USE epayco;

CREATE TABLE users(
    id  int(255) auto_increment not null,
    name varchar(150) not null,
    documento int(150),
    email varchar(255) not null,
    celular int(255) not null,
    password varchar(255) not null,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_users PRIMARY KEY (id)
)ENGINE=InnoDb;

CREATE TABLE whallet(
    id  int(255) auto_increment not null,
    user_id int(150) not null,
    saldo int(150),
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_whallet PRIMARY KEY (id),
    CONSTRAINT fk_whallet_user FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;