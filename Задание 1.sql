INSERT into executor(name) 
VALUES ('Люся Чеботина'), ('Мот'), ('Nattah'), ('Chante ista'), 
('Инна Вальтер'), ('Михаил Шуфутинский'), ('Би-2'), ('Skillet');


INSERT into genre(title) 
VALUES ('Поп'), ('Рок'), ('Реп'), ('Шансон'), ('Электроника') ;


INSERT into album(title, "year of release") 
VALUES ('The End', 2021), ('Август - это ты', 2021),
('Соло', 2018), ('Не для тебя', 2019),
('Ты моя жизнь', 2020), ('Мяу кисс ми', 2001),
('Awake', 2009), ('Wings', 2024), ('Touch of Delight', 2022);



INSERT into track(album_id, title, duracion) 
VALUES (1, 'Солнце Монако', 2.40), (1, 'Плохие люди', 2.21),
(2, 'Август - это ты', 2.45), (3, 'Соло', 3.04),
(4, 'Не для тебя', 5.04), (5, 'ты - моя жизнь', 4.10),
(5, 'Ах, осень - листья той первой любви ', 3.52), (6, 'Мой рок-н-ролл', 6.45),
(6, 'Последний герой', 3.52), (7, 'Herro', 3.06),
(8, 'Wings', 3.21), (9, 'ты - Touch of Delight', 5.50);


INSERT into collection (title, "year of release") 
VALUES ('Топ - 100 Россия', 2022), 
('Шансон', 2020),
('В ритме мегаполиса', 2024),
('В сердечке', 2019 );


INSERT into collectiontrack (collection_id, track_id) 
VALUES (1, 1), (1,3), (2,5), (2,6), (3,11),
(3,12), (4,8), (4,10);


INSERT into executoralbum (executor_id, album_id) 
VALUES (1, 1), (2,2), (2,3), (3,8),
(4,9), (5,4), (6,5), (7,6), (8,7);


INSERT into genreexecutor (genre_id, executor_id) 
VALUES (1, 1), (1,4), (2,7),
(2,8), (3,2), (4,5), (4,6), (5,3);