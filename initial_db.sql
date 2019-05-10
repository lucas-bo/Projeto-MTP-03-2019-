-- Exemplo de como popular a base inicial para realizar os testes
INSERT INTO People(id, cpf, name, birthday)
  VALUES(1, 12345678900, "Filipe Verri", strftime("%s", "1992-02-17"));

INSERT INTO Question(id, statement) VALUES(1, "É piloto de asa fixa?");
INSERT INTO Alternative(id, text) VALUES(1, "Sim");
INSERT INTO Alternative(id, text) VALUES(2, "Não");
INSERT INTO QuestionAlternativeComposition(question, alternative) VALUES(1, 1);
INSERT INTO QuestionAlternativeComposition(question, alternative) VALUES(1, 2);

INSERT INTO Question(id, statement) VALUES(2, "É piloto de asa móvel?");
INSERT INTO Alternative(id, text) VALUES(3, "Sim");
INSERT INTO Alternative(id, text) VALUES(4, "Não");
INSERT INTO QuestionAlternativeComposition(question, alternative) VALUES(2, 3);
INSERT INTO QuestionAlternativeComposition(question, alternative) VALUES(2, 4);

INSERT INTO Quiz(id, label) VALUES(1, "Informações básicas sobre o piloto");
INSERT INTO QuestionQuizComposition(question, quiz) VALUES(1, 1);
INSERT INTO QuestionQuizComposition(question, quiz) VALUES(2, 1);

INSERT INTO Subject(id, name) VALUES (1, "voo");
INSERT INTO SubjectQuestionComposition(subject, question) VALUES(1, 1);
INSERT INTO SubjectQuestionComposition(subject, question) VALUES(1, 2);

INSERT INTO AnswersHistory(person, quiz, question, alternative, date)
  VALUES(1, 1, 1, 2, strftime("%s", "now"));
INSERT INTO AnswersHistory(person, quiz, question, alternative, date)
  VALUES(1, 1, 2, 4, strftime("%s", "now"));
