create database formativaHogwarts;
use formativaHogwarts;
alter table usuarios add column cell varchar(11);
alter table usuarios add column linkphoto varchar(100);

create table tarefa (
id bigint not null auto_increment,
nome_tarefa varchar (20) not null,
describe_tarefa varchar (100) not null, 
prazo datetime  not null,
data_abertura datetime not null,
data_fim datetime not null,
FK_locais bigint not null,
FK_usuario bigint not null,
FK_status bigint not null,
FK_foto bigint not null,
primary key (id),
foreign key (FK_locais) references Locais (id) ,
foreign key (FK_usuario) references usuarios (id),
foreign key (FK_status) references status (id),
foreign key (FK_foto) references fotos_terefa(id)
);

insert into tarefa (nome_terefa, decribe_tarefa, prazo, data_abertura, data_fim,FK_locais,FK_usuario,FK_status,FK_foto)
values ("lista_1","fazer boxplot","2023-06-11")

create table responsaveis (
id bigint not null auto_increment, 
FK_responsaveis bigint not null,
fk_tarefa bigint not null,
primary key (id),
foreign key (FK_responsaveis) references usuarios(id),
foreign key (fk_terefa) references terefa(id)

);

insert into responsaveis ()

create table progresso (
id bigint not null auto_increment,
name_status varchar(50) not null,
primary key (id) 
);

insert into progresso (nome_status) values("Aberta"), ("Em andamento"),("Concluida"),("Encerrada");


create table status(
id bigint not null auto_increment,
feita enum("sim","não") not null,
date_modificacao datetime not null,
FK_progresso bigint not null,
primary key(id),
foreign key(FK_progresso) references progresso(id) 
);

insert into status (feita, date_modificacao, FK_progresso)
values("sim","2023-06-06",1),("não","2023-06-07",2),("sim","2023-06-08",3),("não","2023-06-09",4);

create table fotos_tarefa(
id bigint not null auto_increment,
describe_photo varchar(100) not null,
link_photo varchar(100) not null,
primary key (id)
);

insert into fatos_tarefa (describe_photo, link_photo)
values ("Amigos rindo na praia","https://www.imaginarylink1.com"),("Pôr do sol na montanha.","https://www.imaginarylink2.com"),
("Crianças brincando no parque.","https://www.imaginarylink3.com"),("Flores coloridas no jardim.","https://www.imaginarylink4.com");
select*from usuarios;