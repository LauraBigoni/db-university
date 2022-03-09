-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT `surname`, `name`, `date_of_birth` AS 'anno_di_nascita'
FROM `students`
WHERE YEAR(`date_of_birth`) = '1990';

SELECT COUNT(*) 
FROM `students` 
WHERE YEAR(`date_of_birth`) = '1990';
-- COUNT(*) 160

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT `cfu`, `name` AS 'cfu_over_10' 
FROM `courses` 
WHERE `cfu` > 10;

SELECT COUNT(*) 
FROM `courses` 
WHERE `cfu` > 10;
-- COUNT(*) 479

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT `name`, TIMESTAMPDIFF(YEAR,`date_of_birth`,now()) AS `age`
FROM `students`
WHERE TIMESTAMPDIFF(YEAR,`date_of_birth`,now()) > 30;

SELECT COUNT(*)
FROM `students`
WHERE TIMESTAMPDIFF(YEAR,`date_of_birth`,now()) > 30;
-- COUNT(*) 3209

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT `period`, `year`
FROM `courses`
WHERE `period` = 'i semestre' AND `year` = 1;

SELECT COUNT(*)
FROM `courses`
WHERE `period` = 'i semestre' AND `year` = 1;
-- COUNT(*) 286

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT `date`, `hour`
FROM `exams`
WHERE `date` = '2020-06-20' AND `hour` >= '14:00:00';

SELECT COUNT(*)
FROM `exams`
WHERE `date` = '2020-06-20' AND `hour` >= '14:00:00';
-- COUNT(*) 21

