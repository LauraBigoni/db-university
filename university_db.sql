-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT `surname`, `name`, `date_of_birth` AS 'anno_di_nascita'
FROM `students`
WHERE YEAR(`date_of_birth`) = '1990';

SELECT COUNT(*) FROM `students` WHERE YEAR(`date_of_birth`) = '1990';
-- COUNT(*) 160

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
