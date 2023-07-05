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




-- VS CODE--

import mysql.connector
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database = "Quiz"

)

mycurser = mydb.cursor()

def display_question():
    wow="select * from question"
    mycurser.execute(wow)
    questions=mycurser.fetchall()
    for question in questions:
        print("Question:",question[1])
        print("options:")
        print("1.",question[2])
        print("2.",question[3])
        print("3.",question[4])
        print("4.",question[5])
        print()
        
def take_quiz():
    score=0
    wow="select * from question"
    mycurser.execute(wow)
    questions=mycurser.fetchall()
    for question in questions:
        print("Question:",question[1])
        print("options:")
        print("1.",question[2])
        print("2.",question[3])
        print("3.",question[4])
        print("4.",question[5])
        print()
    
        print("Enter your answer(1-4):")
        user_answer=int(input())
        if user_answer==question[6]:
            score+=1
    return score
print("WELCOME TO QUIZ COMPETITION:")
print("WE ARE READY:")

display_question()

user_score=take_quiz()

print("QUIZ COMPLETED , YOUR ANSWER IS:",user_score)
mycurser.close()
