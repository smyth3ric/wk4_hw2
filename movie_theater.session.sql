CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15), 
    email VARCHAR(100)
    );

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price NUMERIC(8,2),
    quantity INTEGER);


CREATE TABLE concession (
    concession_id SERIAL PRIMARY KEY,
    payment_date VARCHAR(15),
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id));

   

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(5,2),
    payment_date VARCHAR(15),
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_date VARCHAR(15),
    actor VARCHAR(100),
    rating VARCHAR(30),
    film_studio VARCHAR (100),
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket (ticket_id)
);
