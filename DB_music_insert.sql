INSERT INTO genres(name)
VALUES ('Rock'),
       ('Pop music'),
       ('Jazz'),
       ('Blues'),
       ('Hip-Hop');

INSERT INTO artists(name)
VALUES ('Ария'), ('ДДТ'), ('Земфира'),
       ('Rihanna'), ('Britney Spears'), ('Madonna'),
       ('Nina Simone'), ('Louis Armstrong'), ('Frank Sinatra'),
       ('Gary Moore'), ('Eric Clapton'),
       ('JAY-Z'), ('Logic'), ('Грот');

INSERT INTO genres_artists
VALUES (1, 1), (1, 2), (1, 3),
       (2, 4), (2, 5), (2, 6),
       (3, 7), (3, 8), (3, 9),
       (4, 10), (4, 11),
       (5, 12), (5, 13), (5, 14);

INSERT INTO albums(name, year_release)
VALUES ('Проклятье морей', 2018), ('Игра с огнем', 1989), ('Химера', 2001),
       ('Я получил эту роль', 1989), ('Это все', 1995), ('Пропавший без вести', 2005),
       ('Вендетта', 2005), ('Спасибо', 2007), ('Жить в твоей голове', 2013),
       ('Reated R', 2009), ('Loud', 2010), ('Anti', 2016),
       ('Blackout', 2007), ('Circus', 2008), ('Glory', 2016),
       ('Like a Virgin', 1984), ('Pebel Heart', 2015),
       ('Nina at the Village Gate', 1962), 
       ('The Ultimate Collection', 1994),
       ('The Voice of Frank Sinatra', 1946),
       ('After the War', 1989),
       ('Reptile', 2001), ('Backless', 1978),
       ('4:44', 2017), ('Magna Carta... Holy Grail', 2013),
       ('No Pressure', 2020),
       ('Ремесло', 2020), ('Братья по умолчанию', 2013),
       ('Together', 2019);

INSERT INTO artists_albums 
VALUES (1, 1), (1, 2), (1, 3),
       (2, 4), (2, 5), (2, 6),
       (3, 7), (3, 8), (3, 9),
       (4, 10), (4, 11), (4, 12),
       (5, 13), (5, 14), (5, 15),
       (6, 16), (6, 17),
       (7, 18),
       (8, 19),
       (9, 20),
       (10, 21),
       (11, 22), (11, 23),
       (12, 24), (12, 25),
       (13, 26),
       (14, 27), (14, 28),
       (1, 29), (7, 29), (14, 29); 

INSERT INTO tracks(album_id, name, length)
VALUES (29, 'Живой', 271), (1, 'Убить дракона', 327), (1, 'Проклятье морей', 723),
       (2, 'Раскачаем этот мир', 360), (2, 'Раб страха', 264), (2, 'Бой продолжается', 365),
       (3, 'Я не сошел с ума', 374), (3, 'Вампир', 317), (3, 'Штиль', 320),
       (4, 'Не стреляй', 257), (4, 'Революция', 261), (4, 'Я получил эту роль', 326),
       (5, 'Глазища', 305), (5, 'Это все...', 448), (5, 'Белая ночь', 392),
       (6, 'В бой', 367), (6, 'Небо над озером', 84), (6, 'Русский рок', 661),
       (7, 'Дыши', 246), (29, 'Самолет', 136), (7, 'Прогулка', 248),
       (8, 'Господа', 194), (8, 'Мальчик', 208), (8, 'Мы разбиваемся', 193),
       (9, 'Без шансов', 148), (9, 'Деньги', 214), (9, 'Река', 194),
       (10, 'What you turn', 208), (10, 'Hard', 246), (10, 'Rude Boy', 206),
       (11, 'Man Down', 256), (11, 'Skin', 302), (11, 'Fading', 192),
       (12, 'Woo', 213), (12, 'Higher', 120), (12, 'Close to You', 214),
       (13, 'Hot as ice', 190), (13, 'Radar', 209), (13, 'Piece of Me', 199),
       (14, 'Circus', 187), (14, 'Mmm Papi', 193), (14, 'Blur', 185),
       (15, 'Invitation', 191), (15, 'Love Me Down', 191), (15, 'What you need', 184),
       (16, 'Stay', 244), (29, 'Angel', 214), (16, 'Dress you Up', 241),
       (17, 'Living for Love', 203), (17, 'Devil Pray', 243),
       (18, 'Just in Time', 380), (18, 'Brown Baby', 326),
       (19, 'Hello Dolly', 135), (19, 'Mack the Knife', 191),
       (20, 'You Go to My Head', 180), (20, 'Paradise', 142),
       (21, 'Livin on Dreams', 248), (21, 'Ready for Love', 323),
       (22, 'Reptile', 196), (22, 'Second Nature', 269),
       (23, 'Roll it', 204),
       (24, 'Kill Jay Z', 154), (24, 'Marcy Me', 152),
       (25, 'Picasso Baby', 243),
       (26, 'Hit My Line', 255), (26, 'Perfect', 84),
       (27, 'Поговорить', 249),
       (28, 'Ребус', 154), (28, 'Духовная археология', 209);

INSERT INTO collection(name, year_release)
VALUES ('Миссия', 2004), ('Live in Studio', 2018),
       ('Serenade of Soul', 1964), ('A Very Rare Evening', 1979),
       ('All the Way', 1961), ('This is Sinatra!', 1956),
       ('The Essential Gary Moore', 2003), ('The Blues Collection', 2003);

INSERT INTO collection_tracks
VALUES (1, 9), (2, 9),
       (3, 51), (4, 51),
       (5, 56), (6, 56),
       (7, 58), (8, 58);

