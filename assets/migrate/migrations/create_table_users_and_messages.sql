CREATE TABLE users(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE,
  passwordHash VARCHAR(255)
);

-- statement

CREATE TABLE messages(
  id INT PRIMARY KEY AUTO_INCREMENT,
  userId INT NOT NULL,
  text VARCHAR(255) NOT NULL,
  date DATETIME NOT NULL,

  FOREIGN KEY (userId)
  REFERENCES users(id)
);