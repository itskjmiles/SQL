
-- Task 1
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
);

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Task 2
ALTER TABLE Albums
ADD COLUMN duration DECIMAL(10, 2);

-- Task 3
ALTER TABLE Albums
ADD CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES Artists(artist_id);

ALTER TABLE Albums
ADD CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
