-- =============================================
-- SQL-запросы для портфолио
-- База данных: пиццерии, клиенты, заказы
-- =============================================

-- 1. Топ-3 пиццерии по рейтингу
SELECT name, rating
FROM pizzeria
ORDER BY rating DESC
LIMIT 3;

-- 2. История заказов с именами и пиццами
SELECT p.name, m.pizza_name, po.order_date
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
ORDER BY po.order_date DESC;

-- 3. Количество заказов по каждому человеку
SELECT p.name, COUNT(*) AS orders_count
FROM person p
JOIN person_order po ON po.person_id = p.id
GROUP BY p.name
ORDER BY orders_count DESC;

-- 4. Люди с количеством заказов больше 2
SELECT p.name, COUNT(*) AS orders_count
FROM person p
JOIN person_order po ON po.person_id = p.id
GROUP BY p.name
HAVING COUNT(*) > 2
ORDER BY orders_count DESC;

-- 5. Заказы с указанием пиццерии
SELECT p.name, pz.name AS pizzeria_name, po.order_date
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
ORDER BY po.order_date DESC;

-- 6. Люди, заказывавшие пиццу "cheese pizza" (подзапрос)
SELECT p.name, m.pizza_name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
WHERE m.id IN (
    SELECT id
    FROM menu
    WHERE pizza_name = 'cheese pizza'
);

-- 7. Для каждой пиццерии: количество заказов и средняя цена
SELECT
    pz.name,
    COUNT(*) AS orders_count,
    AVG(m.price) AS avg_price
FROM pizzeria pz
JOIN menu m ON m.pizzeria_id = pz.id
JOIN person_order po ON po.menu_id = m.id
GROUP BY pz.name
ORDER BY orders_count DESC;

-- 8. Все названия пицц и пиццерий в одном списке
SELECT name
FROM pizzeria
UNION
SELECT pizza_name
FROM menu
ORDER BY name;
