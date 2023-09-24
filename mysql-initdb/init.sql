DROP DATABASE IF EXISTS prod;
CREATE DATABASE IF NOT EXISTS prod CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
DROP USER IF EXISTS 'ezhov' @'%';
CREATE USER IF NOT EXISTS 'ezhov' @'%' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON prod.* TO 'ezhov' @'%';
FLUSH PRIVILEGES;
USE prod;
CREATE TABLE IF NOT EXISTS customs (
  Name VARCHAR(100) NOT NULL, 
  Surname VARCHAR(100) NOT NULL, 
  Patronym VARCHAR(100) NOT NULL, 
  BirthDate DATE NOT NULL
);
INSERT INTO customs (Name, Surname, Patronym, BirthDate) 
VALUES 
  (
    'Иван', 'Иванов', 'Иванович',
    '1988-04-20'
  ), 
  (
    'Пётр', 'Петров', 'Петрович', 
    '1995-09-12'
  ), 
  (
    'Сидр', 'Сидоров', 'Сидорович',
    '2000-01-01'
  ), 
  (
    'Сергей', 'Сергеев', 'Сергеевич',
    '1989-01-23'
  );