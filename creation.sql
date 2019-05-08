CREATE TABLE IF NOT EXISTS People (
  PeopleID    INTEGER PRIMARY KEY AUTOINCREMENT,
  Name  TEXT UNIQUE,
  BirthDate date,
  CPF  int
);

CREATE TABLE IF NOT EXISTS Questions (
  QuestionID    INTEGER PRIMARY KEY AUTOINCREMENT,
  Statement TEXT NOT NULL,
  AlternativeType int --Tipo de alternativa: tipo1, tipo2, tipo3 etc
);

CREATE TABLE IF NOT EXISTS Alternatives (
  AlternativeID    INTEGER PRIMARY KEY AUTOINCREMENT,
  AlternativeText TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Quizes (
  QuizID    INTEGER PRIMARY KEY AUTOINCREMENT,
  Cdate date, --Data de criação.
);


CREATE TABLE IF NOT EXISTS QuestionQuizComposition (
  Question INTEGER,
  Quiz INTEGER,

  PRIMARY KEY (Question, Quiz),
  FOREIGN KEY (Questions) REFERENCES Questions(QuestionID) ON DELETE CASCADE
  FOREIGN KEY (Quiz) REFERENCES Quizes(quizID) ON DELETE CASCADE,
);


CREATE TABLE IF NOT EXISTS QuestionAlternativeComposition (
  Question INTEGER,
  Alternative INTEGER,

  PRIMARY KEY (question, alternative),
  FOREIGN KEY (questions) REFERENCES Questions(questionID) ON DELETE CASCADE
  FOREIGN KEY (alternative) REFERENCES Alternatives (alternativeID) ON DELETE CASCADE,
);

CREATE TABLE IF NOT EXISTS Answers History(
  Person INTEGER,
  Alternative INTEGER,
  Question INTEGER,
  Quiz INTEGER,
  Cdate date, --Data de criação.
  Answer TEXT,

  PRIMARY KEY (people, alternative, question, quiz, Cdate),
  FOREIGN KEY (people) REFERENCES People(peopleID) ON DELETE CASCADE,
  FOREIGN KEY (alternative) REFERENCES Alternatives(alternativeID) ON DELETE CASCADE,
  FOREIGN KEY (questions) REFERENCES Questions(questionID) ON DELETE CASCADE
  FOREIGN KEY (quiz) REFERENCES Quizes(quizID) ON DELETE CASCADE,
);


CREATE TABLE IF NOT EXISTS Subjects (
  SubjectID    INTEGER PRIMARY KEY AUTOINCREMENT,
  Name  TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS SubjectQuestionComposition (
  Subject INTEGER,
  Question INTEGER,

  PRIMARY KEY (subject, question),
  FOREIGN KEY (subject) REFERENCES Subjects(subjectID) ON DELETE CASCADE,
  FOREIGN KEY (question) REFERENCES Questions(questionID) ON DELETE CASCADE
);


PRAGMA foreign_keys = ON;

