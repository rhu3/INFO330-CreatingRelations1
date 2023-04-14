CREATE TABLE IF NOT EXISTS timeslots (
    id INTEGER PRIMARY KEY,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL CHECK (end_time > start_time)
);

ALTER TABLE rooms ADD COLUMN id INTEGER PRIMARY KEY AUTOINCREMENT;

CREATE TABLE IF NOT EXISTS schedule (
    coursecode TEXT,
    roomid INTEGER,
    timeslotid INTEGER,
    UNIQUE (roomid, timeslotid),
    FOREIGN KEY (coursecode) REFERENCES courses (code),
    FOREIGN KEY (roomid) REFERENCES rooms (id),
   



