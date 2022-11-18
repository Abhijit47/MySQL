--@block
use instagram;
--@block
SHOW TABLES;

--@block
CREATE TABLE `users` (
    `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) NOT NULL,
    `email` varchar(50) NOT NULL,
    `password` varchar(50) NOT NULL,
    PRIMARY KEY (`user_id`)
);

--@block
INSERT INTO users (first_name, last_name, email, password) 
values 
("jane", "Doe", "jane@gmail.com", 458541);

-- End of Users Section

--@block
-- Create table for Messages

CREATE TABLE `messages` (
    `message_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `message` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL,
    PRIMARY KEY (`message_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);


--@block
INSERT INTO messages (user_id, message, created_at)
values (2, "Hello", "2022-10-02");


--@block
-- Create table for Stories

CREATE TABLE `stories` (
    `story_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `story` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL,
    PRIMARY KEY (`story_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `stories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);

--@block
INSERT INTO stories (user_id, story, created_at) 
values (1,"Hey there, I'm Using Instagram its too good for mood freshing","2022-10-28");

--@block
-- Create table for post

CREATE TABLE `posts` (
    `post_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `post` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL,
    PRIMARY KEY (`post_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);

--@block
INSERT INTO posts (user_id, post, created_at)
values (1, "Today is Friday, Awesome Waether", "2022-10-28");



--@block
TRUNCATE users;

--@block
SELECT * FROM users;

--@block
SELECT * FROM messages;

--@block
SELECT * FROM stories;

--@block
SELECT * FROM posts;

