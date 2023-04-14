CREATE TABLE IF NOT EXISTS buildings (
  id INTEGER PRIMARY KEY,
  name TEXT(80) NOT NULL,
  shortname TEXT(10) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms (
  number INTEGER PRIMARY KEY,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER NOT NULL
);

INSERT INTO buildings (name, shortname)
VALUES ('Mary Gates Hall', 'MGH'),
       ('Computer Science & Engineering', 'CSE');

INSERT INTO rooms (number, buildingid, seating)
VALUES (400, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 40),
       (401, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 50),
       (1001, (SELECT id FROM buildings WHERE name = 'Computer Science & Engineering'), 60);

