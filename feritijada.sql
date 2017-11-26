drop database if exists edunovapp16;
create database edunovapp16 character set utf8;

use edunovapp16;

create table sport(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis varchar(150) not null
); 

create table utakmica(
sifra int not null primary key auto_increment,
domacin varchar(20) not null,
gost varchar(20) not null,
mjesto varchar(20) not null,
pocetak datetime not null,
trajanje int,
sport int not null,
sudac int not null
 
);

create table sudac(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
sport varchar(20) not null
);

create table fakultet(
sifra int not null primary key auto_increment,
naziv varchar(30) not null,
grad varchar(20) not null,
drzava varchar(20) not null,
domacin int not null,
gost int not null,
utakmica int not null
);

create table dogadaj(
sifra int not null primary key auto_increment,
vrsta varchar(30) not null,
opis varchar(200) not null,
vrijeme datetime not null,
utakmica int not null,
fakultet int not null
);



alter table utakmica add foreign key (sport) references sport(sifra);
alter table utakmica add foreign key (sudac) references sudac(sifra);

alter table dogadaj add foreign key (utakmica) references utakmica(sifra);
alter table dogadaj add foreign key (fakultet) references fakultet(sifra);

alter table fakultet add foreign key (domacin) references utakmica(sifra);
alter table fakultet add foreign key (gost) references utakmica(sifra);

insert into sport(sifra,naziv,opis) values 
(null,'Nogomet','Nogometne utakmice'),
(null,'Košarka','Kosarkasi'),
(null,'Rukomet','Rukomet'),
(null,'Odbojka','Odbojka'),
(null,'Veslanje','Velsači');


