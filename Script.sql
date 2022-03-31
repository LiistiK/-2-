CREATE TABLE if not exists Genre(
	id_genre serial primary key,
	name_genre varchar(40) not null
	);

CREATE TABLE if not exists executor(
	id_executor serial primary key,
	name_executor varchar(50) not null,
	id_genre integer references Genre(id_genre)
	);
	
CREATE TABLE if not exists albums(
	id_album serial primary key,
	name_album varchar(50) not null,
	release_date date not null,
	id_executor  integer references executor (id_executor)
	);
	
CREATE TABLE if not exists tracks(
	id_track serial primary key,
	name_track varchar(50) not null,
	duration integer  not null,
	id_album  integer references albums(id_album)
	)