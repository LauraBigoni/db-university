---------------- JOIN ----------------

-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`surname`, `students`.`name`,  `degrees`.`name`
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`department_id`
HAVING `degrees`.`name` = 'Corso di Laurea in Economia';
--  76 total


-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name`
FROM `degrees`
JOIN `departments`
ON `departments`.`id`= `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';
-- 7 total


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`, `teachers`.`surname`, `teachers`.`name`
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`teacher_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`name` = 'Fulvio'
AND `teachers`.`surname` = 'Amato';
-- 11 total


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degree_id`, `degrees`.`name`, `departments`.`name`
FROM `students` 
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname` , `students`.`name`
-- 5000 total


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti



-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)



-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
