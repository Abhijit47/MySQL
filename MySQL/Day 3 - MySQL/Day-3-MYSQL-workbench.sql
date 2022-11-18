use customer;
show tables;
CREATE TABLE IF NOT EXISTS customer_info (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO customer_info (username, email, phone, date_of_birth, address) VALUES
('John Doe', 'john@gamil.com', '123456789', '1990-10-01', '123 Street'),
('Jane Doe', 'jane@gmail.com', '987654361', '1991-11-02', '333 Street'),
('amber doe', 'amber@gmail.com', '987654321', '1992-11-03', '654 Street'),
('jack black', 'jack@gmail.com', '987654331', '1993-01-10', '483 Street'),
('jane black', 'jane@gmail.com', '987654341', '1994-02-13', '493 Street');

-- if any error facing just truncate this table data
-- TRUNCATE TABLE customer_info;

select * from customer_info;