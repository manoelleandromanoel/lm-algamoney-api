CREATE TABLE usuario (
	id serial,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE permissao (
	id serial,
	descricao VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE usuario_permissao (
	idUsuario integer not null,
	idPermissao integer not null,
	PRIMARY KEY (idUsuario, idPermissao),
	FOREIGN KEY (idUsuario) REFERENCES usuario(id),
	FOREIGN KEY (idPermissao) REFERENCES permissao(id)
);

INSERT INTO usuario (id, nome, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.');
INSERT INTO usuario (id, nome, email, senha) values (2, 'Maria Silva', 'maria@algamoney.com', '$2a$10$Zc3w6HyuPOPXamaMhh.PQOXvDnEsadztbfi6/RyZWJDzimE8WQjaq');

INSERT INTO permissao (id, descricao) values (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (id, descricao) values (2, 'ROLE_PESQUISAR_CATEGORIA');

INSERT INTO permissao (id, descricao) values (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (id, descricao) values (4, 'ROLE_REMOVER_PESSOA');
INSERT INTO permissao (id, descricao) values (5, 'ROLE_PESQUISAR_PESSOA');

INSERT INTO permissao (id, descricao) values (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (id, descricao) values (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (id, descricao) values (8, 'ROLE_PESQUISAR_LANCAMENTO');

-- admin
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 1);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 2);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 3);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 4);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 5);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 6);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 7);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (1, 8);

-- maria
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (2, 2);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (2, 5);
INSERT INTO usuario_permissao (idUsuario, idPermissao) values (2, 8);