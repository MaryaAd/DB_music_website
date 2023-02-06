# Домашнее задание к лекции «Работа с SQL. Создание БД»

## Задание

### Обязательная часть

Будем развивать схему для музыкального сервиса.

Ранее было ограничение, что каждый исполнитель поет строго в одном жанре - пора убрать это ограничение. Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.

Аналогичное ограничение было и с альбомами у исполнителей (альбом мог выпустить только один исполнитель). Теперь альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.

С треками ничего не меняем, все так же трек принадлежит строго одному альбому.

Но появилась новая сущность - сборник. Сборник имеет название и год выпуска. В него входят различные треки из разных альбомов.

_Обратите внимание_: один и тот же трек может присутствовать в разных сборниках.

Задание состоит из двух частей:

1. Спроектировать и нарисовать схему (как в [первой домашней работе](../01-introduction)). Прислать изображение со схемой.
2. Написать SQL-запросы, создающие спроектированную БД. Прислать ссылку на файл, содержащий SQL-запросы.

_Примечание:_ можно прислать сначала схему, получить подтверждение, что схема верная и после этого браться за написание запросов.

---

### Дополнительное (необязательное) задание

Спроектировать отношение (или схему из нескольких отношений) "Сотрудник". У каждого сотрудника есть следующие параметры:

1. Имя
2. Отдел
3. Начальник (ссылка на начальника)

_Примечание:_ начальник - тоже сотрудник. Отдел можно хранить строкой, можно идентификатором (не принципиально).

Необходимо написать SQL-запрос, создающий таблицу "Сотрудник", и прислать ссылку на файл с этим запросом.




# Домашнее задание к лекции «Select-запросы, выборки из одной таблицы»

## Задание 1

Заполните базу данных из предыдущего домашнего задания. В ней должно быть:

- не менее 8 исполнителей;
- не менее 5 жанров;
- не менее 8 альбомов;
- не менее 15 треков;
- не менее 8 сборников.

Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).

## Задание 2

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание! Результаты запросов не должны быть пустыми (учтите при заполнении таблиц).

1. название и год выхода альбомов, вышедших в 2018 году;
2. название и продолжительность самого длительного трека;
3. название треков, продолжительность которых не менее 3,5 минуты;
4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
5. исполнители, чье имя состоит из 1 слова;
6. название треков, которые содержат слово "мой"/"my".

---

Результатом работы будет 3 файла в формате `.sql`:

- с INSERT запросами (задание 1)
- с SELECT запросами (задание 2)
- с CREATE запросами (из предыдущей домашней работы)




# Домашнее задание к лекции «Продвинутая выборка данных»

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание! Результаты запросов не должны быть пустыми (при необходимости добавьте данные в таблицы).

1. количество исполнителей в каждом жанре;
2. количество треков, вошедших в альбомы 2019-2020 годов;
3. средняя продолжительность треков по каждому альбому;
4. все исполнители, которые не выпустили альбомы в 2020 году;
5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
6. название альбомов, в которых присутствуют исполнители более 1 жанра;
7. наименование треков, которые не входят в сборники;
8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
9. название альбомов, содержащих наименьшее количество треков.

Результатом работы будет 3 файла (с INSERT, SELECT запросами и CREATE запросами из предыдущего задания) в формате .sql (или .py/.ipynb, если вы будете писать запросы с использованием SQLAlchemy).  
В случае если INSERT- и CREATE-запросы остались без изменений, приложите файлы c ними из предыдущих домашних заданий.

---

Результатом работы будет 3 файла в формате `.sql`:

- с INSERT запросами (из предыдущей домашней работы)
- с SELECT запросами (текущее задание)
- с CREATE запросами (из второй домашней работы)

> В случае если INSERT и CREATE запросы остались без изменений, приложите файлы c ними из предыдущих домашних заданий.
