SELECT * FROM users;
SELECT * FROM branches;


/* ROLES MAS VISTAS ASIGNADAS */
CREATE USER simpleUser PASSWORD '123';
ALTER ROLE simpleUser WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	NOINHERIT
	NOREPLICATION
	CONNECTION LIMIT -1;
CREATE USER simpleUserWithoutPriv PASSWORD '123';
ALTER ROLE simpleUserWithoutPriv WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	NOINHERIT
	NOREPLICATION
	CONNECTION LIMIT -1;

CREATE VIEW usersOfBranch AS SELECT name_branch, lastname_user, name_user, nickname_user, mail_user, phone_user FROM users INNER JOIN branches ON users.id_branch = branches.id_branch;

GRANT SELECT ON TABLE usersOfBranch TO simpleuser;
GRANT USAGE ON VIEW usersOfBranch TO simpleuser;

SELECT * FROM usersOfBranch;



/* INDEXACION */
CREATE INDEX code ON products(code_product); 
SELECT * FROM products;


/* PROCEDIMIENTOS ALMACENADOS CON DISPARADORES */
CREATE OR REPLACE FUNCTION clearPricesOfBranches()


CREATE OR REPLACE FUNCTION addControl_userToTrash() RETURN TRIGGER AS $addtotrash$
DECLARE BEGIN
INSERT INTO controls_usersTrash VALUES ()



/* CURSORES */