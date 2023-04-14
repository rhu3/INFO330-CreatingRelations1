CREATE TABLE IF NOT EXISTS student_courses (
    studentid INTEGER,
    course TEXT,
    grade REAL DEFAULT NULL,
    PRIMARY KEY (studentid, course),
    FOREIGN KEY (studentid) REFERENCES students (id),
    FOREIGN KEY (course) REFERENCES courses (code)
);

INSERT INTO student_courses (studentid, course) VALUES
(1, 'INFO330A'),
(1, 'INFO448A'),
(1, 'INFO314'),
(3, 'INFO330A'),
(3, 'INFO449A'),
(2, 'BAW010'),
(2, 'BAW100A'),
(4, 'BAW010');


