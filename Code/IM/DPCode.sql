create table executed
	(executed_id	varchar(5),
	first_name		varchar(20) not null,
	last_name		varchar(20) not null,
	race			varchar(30),
	gender			varchar(7),
	state_name		varchar(20),
	region			varchar(15),
	year			numeric(4,0) check (year > 1701 and year < 2100),
	primary key (executed_id),
	foreign key (state_name) references state (state_name)
		on delete set null
	);

create table innocent
	(innocent_id	varchar(5), 
	first_name		varchar(20) not null,
	last_name		varchar(20) not null,
	race			varchar(30),
	gender			varchar(7),
	state_name		varchar(20),
	region			varchar(15),
	reason			varchar(),
	years		  	numeric(2,0) check (years >= 0),
	primary key (innocent_id),
	foreign key (state_name) references state (state_name)
		on delete set null
	);

create table state
	(state_name		varchar(20), 
	region			varchar(15), 
	sGDP			numeric(8,3) check (sGDP > 0),
	GDPpc			numeric(8,3) check (GDPpc > 0),
	racep			numeric(3,1) check (racep >= 0),
	partycon		varchar(15),
	onDR			numeric(3,0),
	primary key (state_name),
	);

create table scheduled
	(scheduled_id	varchar(5), 
	first_name		varchar(20), not null, 
	last_name		varchar(20), not null, 
	state_name 		varchar(20,
	eyear			numeric(4,0) check (year > 1701 and year <2100),
	month			varchar(10),
	primary key (state_name),
	foreign key (state_name) references state (state_name)
		on delete set null
	);
