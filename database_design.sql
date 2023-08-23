# Creating new Database

CREATE DATABASE adlister_practice;

# Using Database

USE adlister_practice;

# Creating tables for Database


# First, let's create our users table. We won't be able to add a foreign key yet, as the other tables aren't built. We'll add that later.
CREATE TABLE users(
                      id int UNSIGNED NOT NULL AUTO_INCREMENT,
                      user_email VARCHAR(100) NOT NULL,
                      user_password VARCHAR(16) NOT NULL,
                      post_id int UNSIGNED NOT NULL,
                      PRIMARY KEY (id),
                      UNIQUE (user_email)
);

# Now lets populate our users with some dummy data for testing:

INSERT INTO users VALUES (
        1, 'testemail1@test.com', 'fakepassword1', 1),
       (2, 'testemail2@test.com', 'fakepassword2', 2),
       (3, 'testemail3@test.com', 'fakepassword3', 3)
;

# Now we check to make sure the data has inserted:

SELECT * FROM users;

# Then we create the posts table:

CREATE TABLE posts(
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      post_date DATE NOT NULL,
                      post_title VARCHAR(100) NOT NULL,
                      post_description VARCHAR(100),
                      post_textbox VARCHAR(500),

                      PRIMARY KEY (id)
);

# Now we populate it with test data...

INSERT INTO posts VALUES
(1, 20200202, 'Title1', 'Description1', 'Text1'),
(2, 20200303, 'Title2', 'Description2', 'Text2'),
(3, 20200304, 'Title3', 'Description3', 'Text3')
;

# Now we check to make sure the data has inserted:

SELECT * FROM posts;

# Now we create our associative tables, but we don't run them until the children are created...

# First, post_tag:

CREATE TABLE post_tag(
                         post_id INT UNSIGNED NOT NULL,
                         tag_id INT UNSIGNED NOT NULL,
                         CONSTRAINT post_tag_posts_id_fk FOREIGN KEY (post_id) REFERENCES posts (id),
                         CONSTRAINT post_tag_tags_id_fk FOREIGN KEY (tag_id) REFERENCES tags (id)
);

# Let's insert some test data:

INSERT INTO post_tag VALUES(1,1),
                           (2,2),
                           (3,3);

# Now we check to make sure the data has inserted:

SELECT * FROM post_tag;

# Now we make the post_category table:

CREATE TABLE post_category(
                              post_id INT UNSIGNED NOT NULL,
                              category_id INT UNSIGNED NOT NULL,
                              CONSTRAINT post_category_posts_id_fk FOREIGN KEY (post_id) REFERENCES posts (id),
                              CONSTRAINT post_category_categories_id_fk FOREIGN KEY (category_id) REFERENCES categories (id)
);

# Let's insert some test data:

INSERT INTO post_category VALUES(1,1),
                                (2,2),
                                (3,3);

# Now we check to make sure the data has inserted:

SELECT * FROM post_category;

# Now we create categories:

CREATE TABLE categories(
                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           category_name VARCHAR(100) NOT NULL,
                           PRIMARY KEY(id)
);

# Insert some test data:

INSERT INTO categories VALUES(1, 'Cat1'),
                             (2, 'Cat2'),
                             (3, 'Cat3');

# Now we check to make sure the data has inserted:

SELECT * FROM categories;

# Finally we create tags:

CREATE TABLE tags(
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     tag_name VARCHAR(30) NOT NULL,
                     PRIMARY KEY (id)
);

# Insert some dummy data:

INSERT INTO tags VALUES(1, 'Tag1'),
                       (2, 'Tag2'),
                       (3, 'Tag3');

# Now we check to make sure the data has inserted:

SELECT * FROM tags;




#  We need to add the foreign key to users.

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
WHERE id IN(SELECT posts.id FROM posts WHERE posts.id = 2)
;

# Query to select category/categories the post belongs to...
SELECT category_name
FROM categories
WHERE id IN(SELECT category_id FROM post_category WHERE post_id IN (SELECT id FROM posts WHERE post_id = 3));

# Query to select posts that are apart of a specific category...
SELECT post_title
FROM posts
WHERE id IN (SELECT category_id FROM post_category WHERE category_id IN (SELECT id FROM categories WHERE category_id = 2));

# Query to select posts from a specific user...
SELECT post_title
FROM posts
WHERE id IN (SELECT post_id FROM users WHERE post_id = 2);
