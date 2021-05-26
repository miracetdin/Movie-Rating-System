drop table if exists kullanici;
drop table if exists movie;
drop table if exists online;
drop table if exists liked;
drop table if exists disliked;

create table if not exists Kullanici (
	user_id serial Primary key,
	username varchar (20) unique not null,
	password varchar (20) not null,
	name varchar (20) not null,
	surname varchar(20) not null,
	gender char (1) not null
);

create table if not exists movie (
	movie_id serial Primary key,
	name varchar (30) not null,
	year int not null,
	director varchar(30) not null,
	likes int,
	dislikes int,
	genre text[][] not null,
	summary varchar(200)
);

create table if not exists liked (
	username varchar (20) not null,
	movie_id varchar (30) not null	
);

create table if not exists disliked(
	username varchar (20) not null,
	movie_id varchar (30) not null
);

create table if not exists online (
	count int
);



