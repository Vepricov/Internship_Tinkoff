use Tink

if object_id('dbo.Рейсы', 'U') is not null
    drop table dbo.Рейсы;
if object_id('dbo.Пилоты', 'U') is not null
    drop table dbo.Пилоты;
if object_id('dbo.Самолёты', 'U') is not null
    drop table dbo.Самолёты;

create table Пилоты
(
	pilot_id int not null,
	[name] varchar(30),
	age int,
	[rank] int,
	education_level int,
	
	primary key(pilot_id)
);

create table Самолёты
(
	plane_id int not null,
	capacity int,
	cargo_flg int,

	primary key(plane_id)
);

create table Рейсы
(
	flight_id int not null,
	flight_dt date not null,
	plane_id int,
	first_pilot_id int,
	second_pilot_id int,
	destination varchar(30),
	quantity int,

	primary key(flight_id, flight_dt),
	foreign key(plane_id) references Самолёты(plane_id),
	foreign key(first_pilot_id) references Пилоты(pilot_id),
	foreign key(second_pilot_id) references Пилоты(pilot_id)
);

insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (1, 'Топоровский', 20, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (2, 'Веприков', 50, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (3, 'Богданов', 47, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (4, 'Минашкин', 30, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (5, 'Игнашин', 100, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (6, 'Хагги-Вагги', 1000, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (7, 'Тихановский', 5, -1, 0)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (8, 'Статкевич', 70, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (9, 'Бондарь', 40, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (10, 'Папич', 35, 1, 10)
insert into Пилоты(pilot_id, [name], age, [rank], education_level) values (11, 'Гуляев', 18, 1, 10)

insert into Самолёты(plane_id, capacity, cargo_flg) values (1, 100, 1)
insert into Самолёты(plane_id, capacity, cargo_flg) values (2, 50, 1)
insert into Самолёты(plane_id, capacity, cargo_flg) values (3, 70, 0)
insert into Самолёты(plane_id, capacity, cargo_flg) values (4, 10, 0)
insert into Самолёты(plane_id, capacity, cargo_flg) values (5, 40, 0)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (1, '2021-08-02', 1, 1, 2, 'Шереметьево', 40)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (2, '2021-08-03', 1, 1, 2, 'Шереметьево', 40)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (3, '2021-08-04', 1, 1, 2, 'Шереметьево', 40)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (4, '2021-08-02', 3, 3, 4, 'Домодедово', 20)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (5, '2021-08-03', 3, 3, 4, 'Домодедово', 20)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (6, '2021-08-04', 3, 3, 4, 'Домодедово', 20)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (7, '2021-09-02', 5, 5, 6, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (8, '2021-09-03', 5, 5, 6, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (9, '2021-09-04', 5, 5, 6, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (10, '2021-09-02', 5, 7, 8, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (11, '2021-08-03', 5, 7, 8, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (12, '2021-08-04', 5, 7, 8, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (13, '2021-08-02', 2, 9, 10, 'Шереметьево', 70)

insert into Рейсы(flight_id, flight_dt, plane_id, first_pilot_id, second_pilot_id, destination, quantity) 
values (14, '2021-09-02', 5, 7, 10, 'Шереметьево', 70)