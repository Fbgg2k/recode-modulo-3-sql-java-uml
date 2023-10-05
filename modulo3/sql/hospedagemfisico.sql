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

ALTER TABLE Compra ADD CONSTRAINT Fk_compra_2
    FOREIGN KEY (fk_Usuario_idusuario)
    REFERENCES Usuario (id_usuario);
    ON DELETE SET NULL;

ALTER TABLE Compra ADD CONSTRAINT Fk_compra_3
    FOREIGN KEY (fk_Planos_idplano)
    REFERENCES Planos (id_plano);
    ON DELETE SET NULL;
    