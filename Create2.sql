
create table if not exists Collection (
    id SERIAL primary key,
    Collection_name TEXT not null,
    Release_year INTEGER not null
);

create table if not exists Collection_Tracks (
    Collection_ID INTEGER REFERENCES Collection(ID),
    Track_ID INTEGER REFERENCES Track(ID),
    CONSTRAINT pk PRIMARY KEY (Collection_ID, Track_ID)
);

create table if not exists Track (
    id SERIAL primary key,
    Track_name text not NULL REFERENCES Album(ID),
    Duration INTEGER not null
);

create table if not exists Album (
    id SERIAL primary key,
    Album_name TEXT not null,
    Release_year INTEGER not NULL,
    Where (Release_year >= 2018) and (Release_year <= 2020)
);

create table if not exists PerformerAlbum (
    Performer_ID INTEGER REFERENCES Performer(ID),
    Album_ID INTEGER REFERENCES Album(ID),
    CONSTRAINT pk PRIMARY KEY (Performer_ID, Album_ID)
);

create table if not exists Performer (
    id SERIAL primary key,
    Performer_name TEXT not null
);

create table if not exists PerformerGenres (
    Genre_ID INTEGER REFERENCES Genre(ID)
    Performer_ID INTEGER REFERENCES Performer(ID),
    CONSTRAINT pk PRIMARY KEY (Genre_ID, Performer_ID)
);

create table if not exists Genres (
    id SERIAL primary key,
    Genre_name TEXT UNIQUE not NULL,
    Performer_name TEXT not null
);

