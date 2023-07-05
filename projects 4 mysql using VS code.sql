create database Quiz;
use Quiz;
create table question(
ID int(10) primary key auto_increment,
Question varchar(50),
option1 varchar(50),
option2 varchar(50),
option3 varchar(50),
option4 varchar(50),
answer int(11)
);

insert into question (Question,option1,option2,option3,option4,answer) values
('What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid', 1),
('Which planet is known as the Red Planet?', 'Venus', 'Jupiter', 'Mars', 'Saturn', 3),
('Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo', 1),
('What is the largest ocean on Earth?', 'Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'Pacific Ocean', 4),
('What is the chemical symbol for gold?', 'Au', 'Ag', 'cu', 'ph', 1);
select * from question;
drop table question;