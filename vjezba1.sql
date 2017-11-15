drop database if exists kontaktiwp16;
create database kontaktiwp16;

use kontaktiwp16;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
spol boolean,
datumrodjenja datetime,
nadimak varchar(50) not null
);

create table kontakt(
sifra int not null primary key auto_increment,
osoba int not null,
telefon varchar(15) not null
);



alter table kontakt add foreign key (osoba) references osoba(sifra);
