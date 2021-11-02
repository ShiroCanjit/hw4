CREATE TABLE lesson
(
    id   SERIAL  NOT NULL,
    name VARCHAR NOT NULL,
    CONSTRAINT lesson_pk PRIMARY KEY (id)
);
CREATE TABLE lesson_and_teacher
(
    lesson_id   INT     NOT NULL REFERENCES lesson (id) ON UPDATE CASCADE ON DELETE CASCADE,
    teacher_id  INT     NOT NULL REFERENCES teacher (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT lesson_and_teacher_pk PRIMARY KEY (lesson_id, teacher_id)
);
