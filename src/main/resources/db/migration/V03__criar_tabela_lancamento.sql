CREATE TABLE lancamento (
	id serial,
	descricao varchar(50) not null,
	dataVencimento timestamp not null,
	dataPagamento timestamp,
	valor float8 not null,
	observacao varchar(50),
	tipo varchar(20) not null,
	idCategoria integer not null,
	idPessoa integer not null,
	CONSTRAINT pk_idLancamento PRIMARY KEY(id),
	FOREIGN KEY (idCategoria) REFERENCES categoria(id),
	FOREIGN KEY (idPessoa) REFERENCES pessoa(id)
);
