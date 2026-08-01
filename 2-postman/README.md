# Проект 2: API-тестирование в Postman

**Объект тестирования:** REST API сервис [JSONPlaceholder](https://jsonplaceholder.typicode.com/).

## Состав папки
- `JSONPlaceholder.postman_collection.json` — коллекция запросов в Postman.
- `Dev.postman_environment.json` — окружение с переменной `base_url`.
- `runner-results.png` — скриншот успешного прогона всех тестов.

## Что покрыто в тестах
| Метод | Эндпоинт | Описание |
| :--- | :--- | :--- |
| GET | `/posts` | Получение списка всех постов |
| GET | `/posts/1` | Получение одного поста по ID |
| POST | `/posts` | Создание нового поста |
| PUT | `/posts/1` | Полное обновление поста |
| PATCH | `/posts/1` | Частичное обновление поста |
| DELETE | `/posts/1` | Удаление поста |

## Реализованные скрипты

### 1. Тесты на статус-код
В каждом запросе добавлен скрипт, проверяющий статус ответа:
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
Для POST-запроса используется проверка на статус `201 Created`:
```javascript
pm.test("Status code is 201", function () {
    pm.response.to.have.status(201);
});
```

### 2. Скрипт сохранения ID в окружение (POST-запрос)
В POST-запросе реализован скрипт, сохраняющий ID созданного поста в переменную окружения:
```javascript
const jsonData = pm.response.json();
pm.environment.set("post_id", jsonData.id);
```
Этот подход демонстрирует работу с динамическими данными и показывает, как можно передавать данные между запросами.

## Важное замечание о JSONPlaceholder
**JSONPlaceholder — это фиктивный API.** Он не сохраняет данные. POST-запрос симулирует создание и возвращает ID, но этот ID не сохраняется в базе данных. Поэтому в запросах `GET`, `PUT`, `PATCH` и `DELETE` используется существующий ID `1`.

## Результат прогона коллекции
Все 6 тестов успешно пройдены (см. `runner-results.png`).

| Запрос | Статус | Тест |
| :--- | :--- | :--- |
| GET All Posts | 200 OK | PASS |
| GET Post by ID | 200 OK | PASS |
| POST Create Post | 201 Created | PASS |
| PUT Update Post | 200 OK | PASS |
| PATCH Update Post | 200 OK | PASS |
| DELETE Delete Post | 200 OK | PASS |

## Как использовать
1. Импортируйте коллекцию и окружение в Postman.
2. Выберите окружение **Dev**.
3. Запустите любой запрос вручную или всю коллекцию через **Runner**.
