CREATE DATABASE hospedagemlogico;

USE hospedagemlogico;

CREATE TABLE Usuario (
  id_usuario INTEGER PRIMARY KEY,
  nome_usuario VARCHAR(40),
  email_usuario VARCHAR(80),
  senha_usuario VARCHAR(10)
);

CREATE TABLE Planos (
  id_plano INTEGER PRIMARY KEY,
  nome_plano VARCHAR(40),
  cliente_plano VARCHAR(40),
  tipo_plano VARCHAR(40),
  preco_plano DECIMAL(10)
);

CREATE TABLE Compra (
    fk_Usuario_idusuario INTEGER,
    fk_Planos_idplano INTEGER,
    id_compra INTEGER PRIMARY KEY,
    data_compra VARCHAR(40)
);
    