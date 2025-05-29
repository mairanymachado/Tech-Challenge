CREATE TABLE ADDRESS (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    number VARCHAR(10) NOT NULL,
    complement VARCHAR(50),
    neighborhood VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(2) NOT NULL,
    postal_code VARCHAR(9) NOT NULL,
    last_modified_date TIMESTAMP,
    created_date TIMESTAMP
);

CREATE TABLE TB_USERS (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255),
    is_active BOOLEAN,
    last_modified_date TIMESTAMP,
    address_id BIGINT,
    created_date TIMESTAMP,
    roles VARCHAR(255),

    CONSTRAINT fk_address FOREIGN KEY (address_id) REFERENCES ADDRESS(id)
);

INSERT INTO ADDRESS (street, number, complement, neighborhood, city, state, postal_code, created_date, last_modified_date)
VALUES ('123 Main St', '100', null, 'Centro', 'Anytown', 'SP', '12345-678', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO TB_USERS (name, email, password, is_active, last_modified_date, created_date, roles, address_id)
VALUES ('John Doe', 'john.doe@example.com', 'password123', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'RESTAURANTE', 1);
