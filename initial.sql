INSERT INTO Subject(name) VALUES ("A");
INSERT INTO Subject(name) VALUES ("B");
INSERT INTO Subject(name) VALUES ("C");

SELECT Question.statement
  FROM Question, SubjectQuestionComposition
  WHERE SubjectQuestionComposition.subject = X AND Question.id = SubjectQuestionComposition.question;
