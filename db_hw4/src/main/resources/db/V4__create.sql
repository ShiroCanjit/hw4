CREATE TABLE course_and_lesson
(
    course_id   INT     NOT NULL REFERENCES course (id) ON UPDATE CASCADE ON DELETE CASCADE,
    lesson_id   INT     NOT NULL REFERENCES lesson (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT course_and_lesson_pk PRIMARY KEY (lesson_id, course_id)
);
CREATE TABLE timetable
(
    lesson_id   INT     NOT NULL REFERENCES lesson (id) ON UPDATE CASCADE ON DELETE CASCADE,
    beginning   TIMESTAMP    NOT NULL,
    CONSTRAINT timetable_pk PRIMARY KEY (lesson_id)
);
CREATE TABLE group_of_students
(
    course_id   INT     NOT NULL REFERENCES course (id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT     NOT NULL REFERENCES student (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT group_of_students_pk PRIMARY KEY (course_id, student_id)
);
CREATE TABLE validation
(
    lesson_id   INT     NOT NULL REFERENCES lesson (id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT     NOT NULL REFERENCES student (id) ON UPDATE CASCADE ON DELETE CASCADE,
    attendance  BOOLEAN NOT NULL,
    homework    INT     NOT NULL DEFAULT 0,
    CONSTRAINT validation_pk PRIMARY KEY (lesson_id, student_id)
);
