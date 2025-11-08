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
