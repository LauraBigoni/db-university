---------------- SELECT ----------------

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

-- 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT `name`, `level`
FROM `degrees`
WHERE `level` = 'magistrale';

SELECT COUNT(*)
FROM `degrees`
WHERE `level` = 'magistrale';
-- COUNT(*) 38

-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*)
FROM `departments`
-- COUNT(*) 12

--8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT `surname`, `name`, `phone`
FROM `teachers`
WHERE `phone` IS NULL;

SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;
-- COUNT(*) 50

---------------- GROUP BY ----------------

-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `students`, YEAR(`enrolment_date`) AS 'year'
FROM `students`  
GROUP BY YEAR(`enrolment_date`);

-- COUNT(*) 912 - 2018, 1709 - 2019, 1645 - 2020, 734 - 2021

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `teachers`, `office_address` AS 'same address'
FROM `teachers`  
GROUP BY `office_address`

-- teachers -- same address
-- 1 - Borgo Demis 1
-- 8 - Borgo Elga 89
-- 4 - Borgo Elio 234 Piano 4
-- 1 - Borgo Ippolito 5 Piano 5
-- 3 - Borgo Martino 82 Appartamento 07
-- 5 - Contrada Amato 58 Piano 2
-- 4 - Contrada Penelope 73
-- 3 - Contrada Rita 5 Appartamento 71
-- 3 - Contrada Santoro 17 Appartamento 30
-- 3 - Incrocio Marini 9
-- 2 - Incrocio Testa 142 Piano 7
-- 1 - Piazza Aroldo 8 Appartamento 85
-- 3 - Piazza Demian 856 Appartamento 63
-- 3 - Piazza Ferretti 619
-- 2 - Piazza Pellegrino 613 Piano 8
-- 6 - Rotonda Carmela 10 Piano 1
-- 9 - Rotonda Martinelli 309
-- 2 - Rotonda Teseo 9
-- 3 - Strada Concetta 6
-- 5 - Strada Kociss 997 Piano 8
-- 1 - Strada Lino 8
-- 3 - Strada Lombardi 855
-- 3 - Strada Neri 577
-- 5 - Strada Vitali 8 Piano 0
-- 1 - Via Elga 7 Piano 4