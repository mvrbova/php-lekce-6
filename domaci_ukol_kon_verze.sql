<-- 1. Vypište všechny učitele, kteří neučí žádný předmět
SELECT teacher_id
FROM class_subject
WHERE subject_id IS NULL;

<-- 2. Vypište všechny žáky, kteří mají alespoň jednu 5 a zároveň vypište kolik jich mají -->
SELECT pupil_id, COUNT(grade)
FROM pupil_subject
WHERE grade = 5
GROUP BY pupil_id;

<-- 3. Vypište průměr pro každou třídu
SELECT class_id, AVG(grade)
FROM pupil_subject
JOIN class_subject ON pupil_subject.subject_id = class_subject.subject_id
GROUP BY class_id;


<-- 4. Vypiště průměr pro každý ročník
SELECT year, id, AVG(grade)
FROM pupil_subject
JOIN class ON pupil_subject.id = class.id
GROUP BY year;

<-- 5. Vypište všechny učitele, kteří učí svojí třídu alespoň na jeden předmět
SELECT teacher_id, subject_id
FROM teacher
JOIN class ON teacher.id = class.homeroom_teacher_id
JOIN class_subject ON teacher.id = class_subject.teacher_id
GROUP BY teacher_id;

<-- 6. Vypište průměrnou známku pro každý předmět a ročník -- nevím, jak tak dostat ten rok
SELECT name, AVG(grade)
FROM subject
JOIN pupil_subject ON subject.id = pupil_subject.subject_id;


<-- 7. Vypište hitpárádu 5 lidumilů a 5 drsňáků, tj. 5 učitelů s nejlepší průměrem známek na předmětech, které učí a 5 učitelů s nejhorším průměrem známek)
SELECT *
FROM teacher
JOIN class ON teacher.id = homeroom_teacher_id
JOIN class_subject ON teacher.id = class_subject.teacher_id
JOIN pupil_subject ON teacher.id = pupil_subject.grade;

<--teacher.name - ŽÁDNÉ ŘÁDKY-->