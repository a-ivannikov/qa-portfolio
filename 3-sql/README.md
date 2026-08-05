# Проект 3: SQL-запросы

## О проекте

Данный проект выполнен в рамках подготовки портфолио для трудоустройства на позицию QA-инженера.

**База данных:** Учебная модель данных от **21 School** (Сбер).

**Задания для проекта** были сгенерированы с использованием инструментов на основе искусственного интеллекта и адаптированы под структуру базы данных 21 School. Все запросы написаны, протестированы и доработаны мной самостоятельно.

---

## Описание проекта

В этом проекте я выполняю 8 SQL-запросов разного уровня сложности.  
Цель — показать навыки работы с:
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `JOIN` (две и три таблицы)
- `GROUP BY` и `HAVING`
- `AVG`, `COUNT`
- подзапросами (`SUBQUERY`)
- `UNION`

Все запросы находятся в файле `queries.sql`.

---

## Результаты запросов

### 1. Топ-3 пиццерии по рейтингу

Запрос выводит три пиццерии с самым высоким рейтингом.

| name       | rating |
|------------|--------|
| Papa Johns | 4.9    |
| Pizza Hut  | 4.6    |
| Dominos    | 4.3    |

---

### 2. История заказов

Запрос показывает историю заказов: имя человека, название пиццы и дату заказа.

| name    | pizza_name       | order_date |
|---------|------------------|------------|
| Dmitriy | pepperoni pizza  | 2022-01-10 |
| Elvira  | pepperoni pizza  | 2022-01-09 |
| Elvira  | sausage pizza    | 2022-01-09 |
| Dmitriy | supreme pizza    | 2022-01-09 |
| Denis   | pepperoni pizza  | 2022-01-08 |
| Denis   | sausage pizza    | 2022-01-08 |
| Nataly  | pepperoni pizza  | 2022-01-07 |
| Denis   | pepperoni pizza  | 2022-01-07 |
| Denis   | supreme pizza    | 2022-01-07 |
| Denis   | cheese pizza     | 2022-01-07 |
| Nataly  | cheese pizza     | 2022-01-06 |
| Peter   | mushroom pizza   | 2022-01-05 |
| Peter   | supreme pizza    | 2022-01-05 |
| Kate    | cheese pizza     | 2022-01-04 |
| Peter   | sausage pizza    | 2022-01-03 |
| Andrey  | mushroom pizza   | 2022-01-01 |
| Anna    | cheese pizza     | 2022-01-01 |
| Anna    | pepperoni pizza  | 2022-01-01 |
| Irina   | mushroom pizza   | 2022-01-01 |
| Andrey  | cheese pizza     | 2022-01-01 |

---

### 3. Количество заказов по каждому человеку

Запрос показывает, сколько заказов сделал каждый человек.

| name    | orders_count |
|---------|--------------|
| Denis   | 5            |
| Peter   | 3            |
| Andrey  | 2            |
| Anna    | 2            |
| Elvira  | 2            |
| Dmitriy | 2            |
| Nataly  | 2            |
| Irina   | 1            |
| Kate    | 1            |

---

### 4. Люди с количеством заказов > 2

Запрос показывает только тех людей, у которых больше 2 заказов.

| name  | orders_count |
|-------|--------------|
| Denis | 5            |
| Peter | 3            |

---

### 5. Заказы с указанием пиццерии

Запрос показывает заказы с указанием пиццерии, в которой они были сделаны.

| name    | pizzeria_name | order_date |
|---------|---------------|------------|
| Dmitriy | DinoPizza     | 2022-01-10 |
| Elvira  | DinoPizza     | 2022-01-09 |
| Elvira  | DinoPizza     | 2022-01-09 |
| Dmitriy | Best Pizza    | 2022-01-09 |
| Denis   | DinoPizza     | 2022-01-08 |
| Denis   | DinoPizza     | 2022-01-08 |
| Nataly  | Papa Johns    | 2022-01-07 |
| Denis   | Best Pizza    | 2022-01-07 |
| Denis   | Best Pizza    | 2022-01-07 |
| Denis   | Best Pizza    | 2022-01-07 |
| Nataly  | Dominos       | 2022-01-06 |
| Peter   | Dominos       | 2022-01-05 |
| Peter   | Pizza Hut     | 2022-01-05 |
| Kate    | Best Pizza    | 2022-01-04 |
| Peter   | Pizza Hut     | 2022-01-03 |
| Andrey  | Dominos       | 2022-01-01 |
| Anna    | Pizza Hut     | 2022-01-01 |
| Anna    | Pizza Hut     | 2022-01-01 |
| Irina   | Papa Johns    | 2022-01-01 |
| Andrey  | Dominos       | 2022-01-01 |

---

### 6. Люди, заказывавшие пиццу "cheese pizza"

Запрос с подзапросом показывает всех людей, которые заказывали пиццу "cheese pizza".

| name    | pizza_name   |
|---------|--------------|
| Anna    | cheese pizza |
| Andrey  | cheese pizza |
| Kate    | cheese pizza |
| Denis   | cheese pizza |
| Nataly  | cheese pizza |

---

### 7. Количество заказов и средняя цена по пиццериям

Запрос показывает для каждой пиццерии количество заказов и среднюю цену.

| name       | orders_count | avg_price |
|------------|--------------|-----------|
| DinoPizza  | 5            | 880.0000  |
| Best Pizza | 5            | 780.0000  |
| Pizza Hut  | 4            | 1125.0000 |
| Dominos    | 4            | 950.0000  |
| Papa Johns | 2            | 975.0000  |

---

### 8. Все названия пицц и пиццерий в одном списке

Запрос с `UNION` объединяет названия пицц и пиццерий в один список.

| name           |
|----------------|
| Best Pizza     |
| cheese pizza   |
| DinoPizza      |
| DoDo Pizza     |
| Dominos        |
| mushroom pizza |
| Papa Johns     |
| pepperoni pizza|
| Pizza Hut      |
| sausage pizza  |
| supreme pizza  |
```


Все 8 запросов выполнены и протестированы.  
Проект демонстрирует уверенное владение SQL на уровне Junior QA.
