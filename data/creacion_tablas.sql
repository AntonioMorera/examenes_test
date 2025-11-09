-- Crear la base de datos
-- C:\xampp\htdocs\lanzarote.lan\examenestests\data\creacion_tablas.sql
DROP DATABASE IF EXISTS examenes_db;

-- Crear base de datos nueva con UTF-8
CREATE DATABASE examenes_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE examenes_db;

-- Tabla de exámenes
DROP TABLE IF EXISTS exams;
CREATE TABLE exams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabla de preguntas
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    exam_id INT NOT NULL,
    text TEXT NOT NULL,
    FOREIGN KEY (exam_id) REFERENCES exams(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabla de opciones
DROP TABLE IF EXISTS options;
CREATE TABLE options (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT NOT NULL,
    label VARCHAR(5) NOT NULL,
    text TEXT NOT NULL,
    is_correct TINYINT(1) NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Tabla de usuarios
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(255)
);

DROP TABLE IF EXISTS results;
CREATE TABLE results (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  exam_id INT NOT NULL,
  score DECIMAL(5,2),
  total_questions INT,
  correct_answers INT,
  taken_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
ALTER TABLE results ADD COLUMN time_taken INT DEFAULT 0;
