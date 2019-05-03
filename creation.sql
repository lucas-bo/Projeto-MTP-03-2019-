CREATE TABLE IF NOT EXISTS Subject (
  id    INTEGER PRIMARY KEY AUTOINCREMENT,
  name  TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS Question (
  id        INTEGER PRIMARY KEY AUTOINCREMENT,
  statement TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS SubjectQuestionComposition (
  subject INTEGER,
  question INTEGER,

  PRIMARY KEY (subject, question),
  FOREIGN KEY (subject) REFERENCES Subject(id) ON DELETE CASCADE,
  FOREIGN KEY (question) REFERENCES Question(id) ON DELETE CASCADE
);


PRAGMA foreign_keys = ON;
