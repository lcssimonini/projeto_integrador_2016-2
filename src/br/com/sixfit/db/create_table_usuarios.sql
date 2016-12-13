CREATE TABLE usuarios (
	id 			int auto_increment 	not null,
	nome 		varchar(255) 		not null,
	email 		varchar(255)		not null,
	genero 		varchar(1),
	nascimento 	date,
	peso	 	float,
	altura 		float,
	senha 		varchar(255)		not null,	
	primary key(id) 
);


ALTER TABLE usuarios
ADD status_fumante varchar(255);

ALTER TABLE usuarios
ADD status_atividade varchar(255);

ALTER TABLE usuarios
ADD atividade varchar(255);

ALTER TABLE usuarios
ADD doenca varchar(255);
