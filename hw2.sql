--Завдання 1
--Створіть наступні запити для бази даних з інформацією про овочі та фрукти з попереднього домашнього завдання:
--■ Відображення усіх овочів з калорійністю, менше вказаної.
--■ Відображення усіх фруктів з калорійністю у вказаному діапазоні.
--■ Відображення усіх овочів, у назві яких є вказане слово.Наприклад, слово: капуста.
--■ Відображення усіх овочів та фруктів, у короткому описі яких є вказане слово. Наприклад, слово: гемоглобін.
--■ Показати усі овочі та фрукти жовтого або червоного кольору

select * from vegetables_and_fruits
where caloric_content < '20'

select * from vegetables_and_fruits
where caloric_content between '10' and '20'

select * from vegetables_and_fruits
where name_ like '%капуста%'

select * from vegetables_and_fruits
where short_descibe like '%гемоглобін%'

select * from vegetables_and_fruits
where color_ = 'red' or 'yelow'

--Завдання 2
--Створіть наступні запити для бази даних з інформацією про овочі та фрукти з попереднього домашнього завдання:
--■ Показати кількість овочів.
--■ Показати кількість фруктів.
--■ Показати кількість овочів та фруктів заданого кольору.
--■ Показати кількість овочів та фруктів кожного кольору.
--■ Показати колір мінімальної кількості овочів та фруктів.
--■ Показати колір максимальної кількості овочів та фруктів.
--■ Показати мінімальну калорійність овочів та фруктів.
--■ Показати максимальну калорійність овочів та фруктів.
--■ Показати середню калорійність овочів та фруктів.
--■ Показати фрукт з мінімальною калорійністю.
--■ Показати фрукт з максимальною калорійністю.

select count(*) from vegetables_and_fruits
where type_ = 'vegetable'

select count(*) from vegetables_and_fruits
where type_ = 'fruit'

select color_, count(*) from vegetables_and_fruits
group by color_;

select type_, color_, count(*) from vegetables_and_fruits
group by type_, color_;

select color_ from vegetables_and_fruits
where min(quantity);

select color_ from vegetables_and_fruits
where max(quantity);

select min(caloric_content) from vegetables_and_fruits

select max(caloric_content) from vegetables_and_fruits

select AVG(caloric_content) from vegetables_and_fruits

SELECT name_ FROM vegetables_and_fruits WHERE type_ = 'fruit'
ORDER BY caloric_content ASC
LIMIT 1;

SELECT name_ FROM vegetables_and_fruits WHERE type_ = 'fruit'
ORDER BY caloric_content DESC
LIMIT 1;
 