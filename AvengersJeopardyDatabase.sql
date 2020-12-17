create table Jeopardy.Categories (
	ID int PRIMARY KEY,
	Name varchar(250),
	CreatedAt datetime default current_timestamp
);
go

create table Jeopardy.Questions (
	ID int PRIMARY KEY,
	Question varchar(250),
	CategoryID int,
	PointValue int,
	CreatedAt datetime default current_timestamp
);
go

create table Jeopardy.Answers(
	ID int PRIMARY KEY,
	Answer varchar(250),
	QuestionID int,
	CreatedAt datetime default current_timestamp
);
go

create table Jeopardy.QuestionAnswer(
	ID int PRIMARY KEY,
	QuestionID int,
	AnswerID int,
	CreatedAt datetime default current_timestamp
);
go

create table Jeopardy.PlayerQuestionAnswer(
	ID int PRIMARY KEY,
	PlayerID int,
	QuestionAnswerID int,
	RoundID int,
	RuleID int,
	AnswerText varchar(250),
	IsRight bit default 0,
	IsFinalRound bit default 0,
	Points int default 0,
	Data varchar(2000),
	CreatedAt datetime default current_timestamp
);
go

--Round 1 1x, Round 2 2x, Final Jeopardy Varies
create table Jeopardy.Rules(
	ID int PRIMARY KEY,
	Name varchar(250),
	Data varchar(2000),
	CreatedAt datetime default current_timestamp
);
go

create table Jeopardy.Players(
	ID int PRIMARY KEY,
	PlayerName varchar(250),
	CreatedAt datetime default current_timestamp
);
go

