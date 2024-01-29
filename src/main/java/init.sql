CREATE TABLE Homework(
                         id SERIAL PRIMARY KEY ,
                         name VARCHAR (50),
                         description TEXT
);
CREATE TABLE Lesson(
                       id SERIAL PRIMARY KEY ,
                       name VARCHAR (50),
                       updatedAT TIMESTAMP,
                       homework_id INT,
                       FOREIGN KEY (homework_id) REFERENCES homework(id)
);
CREATE TABLE Schedule(
                         id SERIAL PRIMARY KEY ,
                         name VARCHAR(50),
                         updatedAt TIMESTAMP
);
CREATE TABLE ScheduleLesson(
                               schedule_id INT,
                               lesson_id INT,
                               PRIMARY KEY (schedule_id,lesson_id),
                               FOREIGN KEY (schedule_id) REFERENCES Schedule(id),
                               FOREIGN KEY (lesson_id) REFERENCES Lesson(id)
);