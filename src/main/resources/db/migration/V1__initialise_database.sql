DROP SCHEMA mcve IF EXISTS CASCADE;

CREATE SCHEMA mcve;

CREATE TABLE mcve.test1 (
  id1 INT NOT NULL,
  id2 INT NOT NULL,
  CONSTRAINT pk_test1 PRIMARY KEY (id1, id2)
);

CREATE TABLE mcve.test2 (
  id INT NOT NULL,
  test1_id1 INT NOT NULL,
  test1_id2 INT NOT NULL,
  CONSTRAINT pk_test2 PRIMARY KEY (id),
  CONSTRAINT fk_test2_test1 FOREIGN KEY (test1_id2, test1_id1) REFERENCES mcve.test1 (id2, id1)
);
