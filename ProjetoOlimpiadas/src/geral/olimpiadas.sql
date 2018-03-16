create database projetoOlimpiada;

use projetoOlimpiada;

create table pais (
	id_pais integer unsigned not null,
    nome varchar(100) not null,
    populacao bigint unsigned not null,
    area decimal(15,2) not null,
    constraint pk_pais primary key (id_pais)
);

create table modalidade (
	id_modalidade integer unsigned not null,
    nome varchar(100) not null,
    tipo enum('verao', 'inverno'),
    constraint pk_id_modalidade primary key (id_modalidade)
);

create table ano (
	ano integer unsigned not null,
    tipo enum('verao', 'inverno'),
    constraint pk_ano primary key (ano)
)