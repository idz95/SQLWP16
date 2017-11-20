drop database if exists edunovawp16;
create database edunovawp16;

use edunovawp16;

create table salon(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
adresa varchar(50) not null,
kontakt varchar(15) not null,
email varchar(100) not null
); 

create table djelatnik(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
oib char(11) not null,
salon int not null
 
);

create table posjeta(
sifra int not null primary key auto_increment,
vrijeme datetime not null,
djelatnik int not null,
korisnik int not null,
usluga int not null
);

create table usluga(
sifra int not null primary key auto_increment,
vrsta varchar(20) not null,
cijena decimal(5,2) not null
);

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(50) not null,
email varchar(100),
spol boolean
);



alter table djelatnik add foreign key (salon) references salon(sifra);

alter table posjeta add foreign key (usluga) references usluga(sifra);

alter table posjeta add foreign key (djelatnik) references djelatnik(sifra);

alter table posjeta add foreign key (korisnik) references korisnik(sifra);




















