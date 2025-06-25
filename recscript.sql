-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS appcrud;
USE appcrud;


CREATE TABLE IF NOT EXISTS usuario (
    Id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS tarefas (
    Id_tarefas INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descriçao TEXT,
    data_entrega DATE NOT NULL,
    horario TIME NOT NULL,
    Id_usuario INT NOT NULL,
    FOREIGN KEY (Id_usuario) REFERENCES usuario(Id_usuario) ON DELETE CASCADE
);
