DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.Plan(
      plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plan_value DECIMAL(4, 2),
      plan_name VARCHAR(80) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Artist(
      artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artist_name VARCHAR(50) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.User(
      user_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      user_name VARCHAR(50) NOT NULL,
      signed_date DATE NOT NULL,
      age INT NOT NULL,
      plan_id INT,
      FOREIGN KEY (plan_id) REFERENCES Plan (plan_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Album(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album_name VARCHAR(50) NOT NULL,
      artist_id INT,
      FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Track(
    track_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    track_name VARCHAR(50) NOT NULL,
    duration INT,
    release_year YEAR,
    album_id INT,
    artist_id INT,
    FOREIGN KEY (album_id) REFERENCES Album (album_id),
    FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Reproduction(
    track_id INT,
    user_id INT,
    reproduction_date DATETIME,
    PRIMARY KEY (track_id, user_id),
    FOREIGN KEY (track_id) REFERENCES Track (track_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Followers(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id),
    FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.Artist (artist_name)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.Plan (plan_name, plan_value)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('pessoal', 6.99),
    ('universitário', 5.99);

  INSERT INTO SpotifyClone.User (user_name, age, plan_id, signed_date)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace', 37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 2, '2017-01-17'),
    ('Sandi Metz', 58, 2, '2018-04-29'),
    ('Paulo Freire', 19, 4, '2018-02-14'),
    ('Bell Hooks', 26, 4, '2018-01-05'),
    ('Christopher Alexander', 85, 3, '2019-06-05'),
    ('Judith Butler', 45, 3, '2020-05-13'),
    ('Jorge Amado', 58, 3, '2017-01-06');

  INSERT INTO SpotifyClone.Album (album_name, artist_id)
  VALUES
    ('Renaissance', 1),
    ('Jazz', 2),
    ('Hot Space', 2),
    ('Falso Brilhante', 3),
    ('Vento de Maio', 3),
    ('QVVJFA?', 4),
    ('Somewhere Far Beyond', 5),
    ('I Put A Spell On You', 6);

  INSERT INTO SpotifyClone.Track (track_name, duration, release_year, album_id, artist_id)
  VALUES
    ('BREAK MY SOUL', 279, 2022, 1, 1),
    ('VIRGO’S GROOVE', 369, 2022, 1, 1),
    ('ALIEN SUPERSTAR', 116, 2022, 1, 1),
    ('Don’t Stop Me Now', 203, 1978, 2, 2),
    ('Under Pressure', 152, 1982, 3, 2),
    ('Como Nossos Pais', 105, 1998, 4, 3),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 2001, 5, 3),
    ('Samba em Paris', 267, 2003, 6, 4),
    ('The Bard’s Song', 244, 2007, 7, 5),
    ('Feeling Good', 100, 2012, 8, 6);

  INSERT INTO SpotifyClone.Reproduction (user_id, track_id, reproduction_date)
VALUES
  (1, 8, '2022-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');

  INSERT INTO
  SpotifyClone.Followers (user_id, artist_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);