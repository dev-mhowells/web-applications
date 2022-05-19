DROP TABLE IF EXISTS albums;

-- Table Definition
CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title text,
    release_year int4
);

-- Seed records
INSERT INTO albums (title, release_year) VALUES
('Doolittle', 1989),
('Surfer Rosa', 1988),
('Waterloo', 1974),
('Super Trouper', 1980),
('Bossanova', 1990),
('Lover', 2019),
('Folklore', 2020),
('I Put a Spell on You', 1965),
('Baltimore', 1978),
('Here Comes the Sun', 1971),
('Fodder on My Wings', 1982),
('Ring Ring', 1973);
