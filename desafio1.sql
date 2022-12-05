DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

  CREATE TABLE Plano_assinatura(
      plano_id INT PRIMARY KEY  AUTO_INCREMENT,
      plano VARCHAR(45) NOT NULL,
      valor DECIMAL(3,2) NOT NULL
  ) ENGINE = InnoDB;

  CREATE TABLE Usuario(
      usuario_id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome_usuario  VARCHAR(255) NOT NULL,
      idade  INT NOT NULL,
      plano_id  INT NOT NULL,
      data_assinatura  DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES Plano_assinatura (plano_id)
  ) ENGINE = InnoDB;

  CREATE TABLE Artista(
      artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      artista_nome VARCHAR(100) NOT NULL
  ) ENGINE = InnoDB;

  CREATE TABLE Album(
      album_id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      titulo  VARCHAR(100) NOT NULL,
      artista_id  INT NOT NULL,
      data_lancamento DATE NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
  ) ENGINE = InnoDB;
  
  CREATE TABLE Musica(
      musica_id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome_musica  VARCHAR(150) NOT NULL,
      album_id  INT NOT NULL,
      duracao_segundos INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES Album (album_id)
  ) ENGINE = InnoDB;
  
  
  CREATE TABLE Usuario_segue_artista(
       usuario_id INT NOT NULL,
       artista_id INT NOT NULL,
       PRIMARY KEY (usuario_id, artista_id),
       FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
       FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
  ) ENGINE = InnoDB;

  CREATE TABLE Historico_reproducao(
	     usuario_id INT NOT NULL,
	     musica_id INT NOT NULL,
	     data_reproducao DATETIME NOT NULL, 
	     PRIMARY KEY (usuario_id, musica_id),
       FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
       FOREIGN KEY (musica_id) REFERENCES Musica (musica_id)
  ) ENGINE = InnoDB;

  INSERT INTO Plano_assinatura(plano_id, plano, valor)
  VALUES
  (1, 'familiar', 7.99),
  (2, 'gratuito', 0.00),
  (3, 'pessoal', 6.99),
  (4, 'universitario', 5.99);

  INSERT INTO Usuario(nome_usuario, idade, plano_id, data_assinatura)
  VALUES
  ('Barbara Liskov', 84 , 2, "2019-10-20"),
  ('Robert Cecil Martin', 2, "2017-01-06"),
  ('Ada Lovelace', 37, 1, "2017-12-30"),
  ('Martin Fowler', 46, 1, "2017-01-17"),
  ('Sandi Metz', 58, 1, "2018-04-29"),
  ('Paulo Freire', 19, 4, "2018-02-14"),
  ('Bell Hooks', 26, 4, "2018-01-05"),
  ('Christopher Alexander', 85, 3, "2019-06-05"),
  ('Judith Butler', 45, 3, "2020-05-13"),
  ('Jorge Amado', 58, 3, "2017-02-17");

  INSERT INTO Artista(artista_id, artista_nome)
  VALUES
  (1,'Beyoncé'),
  (2,'Queen'),
  (3,'Elis Regina'),
  (4,'Baco Exu do Blues'),
  (5,'Blind Guardian'),
  (6,'Nina Simone');

  INSERT INTO Album(titulo, artista_id, data_lancamento)
  VALUES
  ('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
  ('Vento de Maio', 3, 2001),
  ('QVVJFA?', 4, 2003),
  ('Somewhere Far Beyond', 5, 2007),
  ('I Put A Spell On You', 6, 2012);

  INSERT INTO Musica(nome_musica, album_id, duracao_segundos)
  VALUES
 ('BREAK MY SOU', 1, 279),
 ('VIRGO’S GROOVE', 1, 369),
 ('ALIEN SUPERSTAR', 1, 116),
 ('Don’t Stop Me Now', 2, 203),
 ('Under Pressure', 3, 152),
 ('Como Nossos Pais', 4, 105),
 ('O Medo de Amar é o Medo de Ser Livre', 5, 207),
 ('Samba em Paris', 6, 267),
 ('The Bard’s Song', 7, 244),
 ('Feeling Good', 8, 100);

  INSERT INTO Usuario_segue_artista(usuario_id, artista_id)
  VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (4,4),
  (5,5),
  (5,6),
  (6,6),
  (6,1),
  (7,6),
  (9,3),
  (10,2);

  INSERT INTO Historico_reproducao(usuario_id, musica_id, data_reproducao)
  VALUES
  (1,8, "2022-02-28 10:45:55"),
  (1,2, "2020-05-02 05:30:35"),
  (1,10, "2020-03-06 11:22:33"),
  (2,10, "2022-08-05 08:05:17"),
  (2,7, "2020-01-02 07:40:33"),
  (3,10, "2020-11-13 16:55:13"),
  (3,2, "2020-12-05 18:38:30"),
  (4,8, "2021-08-15 17:10:10"),
  (5,8, "2022-01-09 01:44:33"),
  (5,5, "2020-08-06 15:23:43"),
  (6,7, "2017-01-24 00:31:17"),
  (6,1, "2017-10-12 12:35:20"),
  (7,4, "2011-12-15 22:30:49"),
  (8,4, "2012-03-17 14:56:41"),
  (9,9, "2022-02-24 21:14:22"),
  (10,3, "2015-12-13 08:30:22");




