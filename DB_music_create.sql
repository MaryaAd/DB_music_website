CREATE TABLE IF NOT EXISTS Genres (
genres_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
artist_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_Artists (
genres_id INTEGER REFERENCES Genres(genres_id),
artist_id INTEGER REFERENCES Artists(artist_id),
CONSTRAINT pkGA PRIMARY KEY (genres_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
album_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
year_release SMALLINT CHECK (year_release>850)
);

CREATE TABLE IF NOT EXISTS Artists_Albums (
artist_id INTEGER REFERENCES Artists(artist_id),
album_id INTEGER REFERENCES Albums(album_id),
CONSTRAINT pkAA PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
track_id SERIAL PRIMARY KEY,
album_id INTEGER NOT NULL REFERENCES Albums(album_id),
name VARCHAR(80) NOT NULL,
length INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
collection_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
year_release SMALLINT CHECK (year_release>850)
);

CREATE TABLE IF NOT EXISTS Collection_Tracks (
collection_id INTEGER REFERENCES Collection(collection_id),
track_id INTEGER REFERENCES Tracks(track_id),
CONSTRAINT pkCT PRIMARY KEY (collection_id, track_id)
);