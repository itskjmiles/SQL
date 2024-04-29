CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(id)
);

INSERT INTO Members (id, name, age, trainer_id)
VALUES
    (1, 'John Doe', 30, 1), 
    (2, 'Jane Smith', 25, 2), 
    (3, 'Michael Johnson', 35, 3); 

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_time VARCHAR(50)
);

UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 2;

DELETE FROM Members
WHERE name = 'John Smith';
