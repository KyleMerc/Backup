CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  email    VARCHAR(45) NULL,
  role_id INT NOT NULL,
  date_created TIMESTAMP NOT NULL,
  date_updated TIMESTAMP,
  FOREIGN KEY fk_role(role_id)
  REFERENCES roles(role_id)
  ON UPDATE CASCADE
  ON DELETE RESTRICT
)ENGINE=InnoDB;
