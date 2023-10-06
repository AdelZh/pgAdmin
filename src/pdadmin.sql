CREATE TABLE peoples(
                        id serial primary key,
                        name varchar(50),
                        nationality varchar,
                        age INTEGER
);
INSERT INTO peoples (name, nationality, age) VALUES
                                                 ('John Doe', 'American', 30),
                                                 ('Alice Smith', 'British', 25),
                                                 ('Maria Rodriguez', 'Spanish', 28),
                                                 ('Ahmed Khan', 'Pakistani', 35),
                                                 ('Mia Johnson', 'Canadian', 22);

CREATE TABLE country(
                        id serial primary key,
                        name varchar(50),
                        language varchar,
                        peoples_id INTEGER REFERENCES peoples(id)
);
INSERT INTO country (name, language, peoples_id) VALUES
                                                     ('USA', 'English', 1),
                                                     ('UK', 'English', 2),
                                                     ('Spain', 'Spanish', 3),
                                                     ('Pakistan', 'Urdu', 4),
                                                     ('Canada', 'English', 5);