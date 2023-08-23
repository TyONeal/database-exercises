# Creating new Database

CREATE DATABASE adlister_practice;

# Using Database

USE adlister_practice;

# Creating tables for Database

CREATE TABLE users(
                      id int UNSIGNED NOT NULL AUTO_INCREMENT,
                      user_email VARCHAR(100) NOT NULL,
                      user_password VARCHAR(16) NOT NULL,
                      post_id int UNSIGNED NOT NULL,
                      PRIMARY KEY (id),
                      UNIQUE (user_email)
);

CREATE TABLE posts(
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      post_date DATE NOT NULL,
                      post_title VARCHAR(100) NOT NULL,
                      post_description VARCHAR(100),
                      post_textbox VARCHAR(500),

                      PRIMARY KEY (id)
);

CREATE TABLE post_tag(
                         post_id INT UNSIGNED NOT NULL,
                         tag_id INT UNSIGNED NOT NULL,
                         CONSTRAINT post_tag_posts_id_fk FOREIGN KEY (post_id) REFERENCES posts (id),
                         CONSTRAINT post_tag_tags_id_fk FOREIGN KEY (tag_id) REFERENCES tags (id)
);

CREATE TABLE post_category(
                              post_id INT UNSIGNED NOT NULL,
                              category_id INT UNSIGNED NOT NULL,
                              CONSTRAINT post_category_posts_id_fk FOREIGN KEY (post_id) REFERENCES posts (id),
                              CONSTRAINT post_category_categories_id_fk FOREIGN KEY (category_id) REFERENCES categories (id)
);

CREATE TABLE categories(
                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           category_name VARCHAR(100) NOT NULL,
                           PRIMARY KEY(id)
);

CREATE TABLE tags(
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     tag_name VARCHAR(30) NOT NULL,
                     PRIMARY KEY (id)
);

DESCRIBE users;

ALTER TABLE users
    ADD CONSTRAINT users_posts_posts_id_fk
        FOREIGN KEY (post_id) REFERENCES posts (id);

# Verifying creation and correct fields for tables.

SHOW DATABASES;
DESCRIBE users;
DESCRIBE posts;
DESCRIBE post_tag;
DESCRIBE post_category;
DESCRIBE tags;
DESCRIBE categories;


# Creating queries for database

# Query to select user from a specific post...
SELECT user_email
FROM users
WHERE user_email IN(SELECT user_email FROM posts WHERE posts.id = users.post_id);

# Query to select category/categories the post belongs to...
SELECT category_name
FROM categories
WHERE id IN(SELECT category_id FROM post_category WHERE post_id IN (SELECT id FROM posts WHERE post_id = categories.id));

# Query to select posts that are apart of a specific category...
SELECT post_title
FROM posts
WHERE id IN (SELECT category_id FROM post_category WHERE category_id IN (SELECT id FROM categories WHERE category_id = posts.id));

# Query to select posts from a specific user...
SELECT post_title
FROM posts
WHERE id IN (SELECT post_id FROM users WHERE post_id = posts.id);
