CREATE TABLE Singers
(id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
surname TEXT,
band_id INTEGER,
active_years TEXT,
end_of_career TEXT,
best_song_id INTEGER);

CREATE TABLE Bands
(band_id INTEGER,
band_name TEXT,
genre_id INTEGER,
lead_singer_id INTEGER);

CREATE TABLE Songs
(song_id INTEGER,
song_name TEXT,
band_id INTEGER,
singer_id INTEGER,
release_year INTEGER);

CREATE TABLE Genres
(genre_id INTEGER,
genre_name TEXT,
band_id INTEGER);

INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("Jimi", "Hendrix", "6", "1962", "1970", "4");
INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("Chester", "Bennington", "3", "1992", "2017", "3");
INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("Serj", "Tankian", "5", "1992", "Present", "1");
INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("Chris", "Cornell", "4", "1984", "2017", "6");
INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("James", "Hetfield", "2", "1978", "Present", "5");
INSERT INTO Singers (name, surname, band_id, active_years, end_of_career, best_song_id)
VALUES ("Jacoby", "Shaddix", "1", "1993", "Present", "2");

INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("1", "Chop Sue!", "5", "3", "2001");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("2", "Last Resort", "1", "6", "2000");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("3", "Numb", "3", "2", "2003");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("4", "All Along The Watchtower", "6", "1", "1968");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("5", "Enter Sandman", "2", "5", "1991");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("6", "Black Hole Sun", "4", "4", "1994");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("7", "Scars", "1", "6", "2004");
INSERT INTO Songs (song_id, song_name, band_id, singer_id, release_year)
VALUES ("8", "Welcome Home (Sanitarium)", "2", "5", "1986");

INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("1", "Papa Roach", "1", "6");
INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("2", "Metallica", "2", "5");
INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("3", "Linkin Park", "1", "2");
INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("4", "Soundgarden", "2", "4");
INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("5", "SOAD", "2", "3");
INSERT INTO Bands (band_id, band_name, genre_id, lead_singer_id)
VALUES ("6", "Jimi Hendrix", "3", "1");

INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("1", "Alternative Rock", "1");
INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("1", "Alternative Rock", "3");
INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("2", "Heavy Metal", "2");
INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("2", "Heavy Metal", "4");
INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("2", "Heavy Metal", "5");
INSERT INTO Genres (genre_id, genre_name, band_id)
VALUES ("3", "Rock", "6");

SELECT Singers.id, Singers.name, Singers.surname, Bands.band_name, Songs.song_name, Genres.genre_name
FROM Singers
JOIN Bands
ON Bands.lead_singer_id=Singers.id
JOIN Songs
ON Songs.song_id=Singers.best_song_id
JOIN Genres
ON Genres.band_id=Bands.band_id
ORDER BY release_year;

