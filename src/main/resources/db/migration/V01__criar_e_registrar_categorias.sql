CREATE TABLE categoria (
	id serial,
	nome varchar(50) not null,
	CONSTRAINT pk_idCategoria PRIMARY KEY(id)
);

insert into categoria (nome) values ('Lazer');
insert into categoria (nome) values ('Alimentação');
insert into categoria (nome) values ('Supermercado');
insert into categoria (nome) values ('Farmácia');
insert into categoria (nome) values ('Outros');