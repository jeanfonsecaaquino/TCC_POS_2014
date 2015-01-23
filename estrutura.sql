-- CRIACAO DAS TABELAS
create table login(
	id_login			int			primary key auto_increment,
	login				varchar(40)		not null,
	perfil				enum('C','A')	not null,
	token				varchar(255)	
);

-- Como um cliente poderá ser um avaliador a nivel de banco de dados
-- será tratado como a mesma tabela e ligada através de uma FK o próprio
create table avaliador(
	id_avaliador		int			primary key	auto_increment,
	nome				varchar(20)		not null,
	sobrenome			varchar(20)
	email				varchar(30)		not null,
);

create table registro(
	id_registro			int			primary key	auto_increment,
	data_criacao		date,
	data_liberacao		date,
	data_expiracao		date,
	prazo_resposta		date
);

create table email(
	id_email			int			primary key	auto_increment,
	titulo				varchar(40)		not null,
	texto				text,
);

create table avaliacao(
	id_avaliacao		int			primary key	auto_increment,
	titulo				varchar(50)		not null,
	subtitulo			varchar(50),
	key					varchar(255),
	maximoPorPagina		int
);

create table registro_resposta(
	id_registro_resposta	int			primary key	auto_increment,
	finalizada				boolean,
	duracao					date
);

create table pergunta(
	id_mensagem				int			primary key	auto_increment,
	texto					text		not null,
	tipo_pergunta			enum('I','T','R','C','M')	not null,
	ordem					int			not null,
	pontuacao				float
);

create table mensagem(
	id_mensagem				int			primary key	auto_increment,
	texto					text		not null,
	is_antes_avaliacao		boolean		not null,
	is_depois_avaliacao		boolean		not null
);

create table opcao(
	id_opcao				int			primary key	auto_increment,
	texto					text	not null
);

create table resposta(
	id_resposta				int			primary key	auto_increment,
	resposta				text		,
	isCerta					boolean
);