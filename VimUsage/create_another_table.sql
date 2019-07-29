CREATE TABLE articles (
  article_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(100) NOT NULL,
  article_img VARCHAR(255) NULL,
  content TEXT NOT NULL,
  user_id INT NOT NULL,
  cat_id INT NOT NULL,
  FOREIGN KEY fk_user(user_id)
  REFERENCES users(user_id)
  ON UPDATE CASCADE
  ON DELETE RESTRICT,
  FOREIGN KEY fk_cat_article(cat_id)
  REFERENCES categories(cat_id)
  ON UPDATE CASCADE
  ON DELETE RESTRICT
)ENGINE=InnoDB;
