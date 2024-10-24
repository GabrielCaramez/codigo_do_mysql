create schema redeSocial;
use redeSocial;

-- Tabela de usuários
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

-- Tabela de mensagens
CREATE TABLE messages (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER,
    message TEXT NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

insert into users(username, password)
values
('joacaramez', '2104'),
('kalaboca', '1234'),
('jogamuito', '6789'),
('iruka', '9876'),
('pop', '2345'),
('mint', '4567'),
('arch', '0987'),
('haskell', '9678'),
('rust', '7634'),
('python', '8087');