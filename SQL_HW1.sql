--Вывести все поля и все строки.
select * from students;

--Вывести только Id пользователей
SELECT id FROM students;

 --Вывести только имя пользователей
SELECT name FROM students;

--Вывести только email пользователей
SELECT email FROM students;

--Вывести имя и email пользователей
SELECT name, email FROM students;

--Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on from students;

--Вывести пользователей где password 12333
SELECT * FROM students
WHERE password ='12333';

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT * FROM students
WHERE created_on ='2021-03-26 00:00:00';

--Вывести пользователей где в имени есть слово Анна
SELECT * FROM students  
WHERE name LIKE 'Anna%';

--Вывести пользователей где в имени в конце есть 8
SELECT * FROM students 
WHERE Name LIKE '%8';

--Вывести пользователей где в имени в есть буква а
SELECT * FROM students  
WHERE Name LIKE '%a%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00' and password = '1m313' ;

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00'  and name  LIKE  'Andrey%' ;

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00'  and name  LIKE  '%8%' ;

--Вывести пользователя у которых id равен 112
SELECT * from students 
where id = 112;

--Вывести пользователя у которых id равен 132
SELECT * from students 
where id = 132;

--Вывести пользователя у которых id больше 132
SELECT * from students 
where id > 132;

--Вывести пользователя у которых id меньше 132
SELECT * from students 
where id < 132;

--Вывести пользователя у которых id меньше 132 или больше 155
SELECT * from students 
WHERE  id < '132'
    or id > '155';
   
--Вывести пользователя у которых id меньше либо равно 165
SELECT * from students 
where id <= 132;

--Вывести пользователя у которых id больше либо равно 165
SELECT * from students 
WHERE id >= 132;

--Вывести пользователя у которых id больше 132 но меньше 142
SELECT * from students 
WHERE  id > '132'
    and id < '142';
    
   --Вывести пользователя у которых id между 132 и 142
SELECT * from students 
WHERE  id >= '132'
    and id <= '142';
    
   --Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * FROM students s 
WHERE "password" IN ('12333', '1m313', '123313');

--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students 
WHERE created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--Вывести минимальный id 
SELECT MIN(id) from students ;

--Вывести максимальный id
SELECT max(id) from students ;

--Вывести количество пользователей
SELECT COUNT(name)
FROM students;

--Вывести id пользователя, имя, дату создания пользователя. 
--Отсортировать по порядку возрастания даты добавления пользоватлеля.
 select id, name, created_on from students 
       ORDER BY created_on ASC;
--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on from students 
       ORDER BY created_on DESC;


