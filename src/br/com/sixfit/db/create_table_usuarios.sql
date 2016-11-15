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
