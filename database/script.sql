

USE uknow;

CREATE TABLE role (
    id INT PRIMARY KEY SERIAL NOT NULL,
    name VARCHAR(50)
);

INSERT INTO role (name) VALUES
 ("student"),
 ("teacher"),
 ("admin");

CREATE TABLE tag (
    id INT PRIMARY KEY SERIAL,
    name VARCHAR(50)
);

CREATE TABLE category (
    id INT PRIMARY KEY SERIAL ,
    name VARCHAR(100)
);

CREATE TABLE users (
    id INT PRIMARY KEY SERIAL ,
    username VARCHAR(100),
    email VARCHAR(100),
    password_hash TEXT, 
    isActive BOOLEAN DEFAULT TRUE,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE course (
    id INT PRIMARY KEY SERIAL ,
    title VARCHAR(255),
    description TEXT,
    thumbnail VARCHAR(255),
    video VARCHAR(255),
    document TEXT,
    category_id INT,
    user_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE enrollement (
    user_id INT,
    course_id INT,
    enrollment_date TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE
);

CREATE TABLE course_tag (
    course_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (course_id, tag_id),
    FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE CASCADE
);
