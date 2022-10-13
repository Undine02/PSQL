INSERT INTO genres 
(genre_name)
VALUES 
    ('Rock'),
    ('Jazz'),
    ('Chanson'),
    ('HipHop'), 
    ('Country_music')
;
INSERT INTO performer_genres
    (performer_id, genres_id)
VALUES 
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 4),
    (6, 4),
    (7, 5),
    (8, 5)
;

INSERT INTO performer 
    (performern_name)
VALUES 
    ('Viktor_ Tsoi'), 
    ('Nautilius_Pompilius'),
    ('Igor_Butman'),
    ('Mikhial_Krug'),
    ('Noize_MC'),
    ('Oxxxymiron'),
    ('Kerry_Andervud'),
    ('Tim_McGraw')
;
INSERT INTO performer_album 
    (performer_id, album_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 5),
    (5, 4),
    (6, 6), 
    (7, 7),
    (8, 8)
;
INSERT INTO album 
    (album_name, release_year)
VALUES 
    ('Gruppa_Krovi', '2018'),
    ('The_prince_of_silence', '1998'),
    ('Only_now', '2021'),
    ('No_comments', '2016'),
    ('Staker', '2018'),
    ('Beauty_and_ugliness', '2021'),
    ('My_gift', '2020'),
    ('Live_like_you_were_dying', '2004')
;
INSERT INTO track 
    (track_name, duration, album_id)
VALUES 
    ('Cuckoo', '6.41', 1),
    ('A_pack_of_cigarettes', '4.28', 1),
    ('Chained_by_one_chain', '3.56', 2),
    ('Black_bird', '3.23', 2),
    ('Mercy_mercy_mercy', '3.18', 3),
    ('Pai_girls', '4.19', 5),
    ('Staker', '4.52', 5),
    ('In_the_dark', '3.49', 4), 
    ('Iordan', '4.50', 4),
    ('Who_die_Mark', '4.52', 6),
    ('We_all_die', '2.46', 6),
    ('Good_girl', '3.27', 7),
    ('The_champion', '3.45', 7),
    ('I_need_you', '4.08', 8), 
    ('Indian_outlaw', '3.05', 8)
;
INSERT INTO collection_tracks 
    (track_id, collection_id)
    
VALUES 
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 4),
    (7, 4),
    (8, 5),
    (9, 5),
    (10, 6),
    (11, 6),
    (12, 7),
    (13, 7),
    (14, 8),
    (15, 8) 
    
    INSERT INTO collection 
    (collection_name, release_year)
VALUES 
    ('A_collection_of_song', '2021'),
    ('Nautilius_Pompilius_The_best', '2020'),
    ('Carnaval_of_jazz', '2021'),
    ('Mikhail_Krug_The_best_songs', '2018'),
    ('Rap_albums', '2021'),
    ('Muzofond', '2021'),
    ('Country_music', '2021'),
    ('Songs_of_love', '2020')
;

