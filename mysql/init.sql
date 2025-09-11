CREATE DATABASE IF NOT EXISTS dev;

USE dev;

CREATE TABLE IF NOT EXISTS user (
    id              VARCHAR(255) NOT NULL,
    username        VARCHAR(255) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    status_message  VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    KEY idx_email (email)
);

ALTER TABLE user ADD INDEX IF NOT EXISTS idx_email (email);
