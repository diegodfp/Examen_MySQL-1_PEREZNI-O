create database polideportivos;
use polideportivos;

create table comisario(
	id_comisario int primary key,
    nombre varchar(100) not null,
    apellido1 varchar (100) not null,
    apellido2 varchar (100),
    telefono varchar (20) not null
);

create table eventos(
	id_evento int primary key,
    nombreEvento varchar(100) not null,
    fecha datetime not null,
    duracion time not null,
    num_participantes int not null
    );
create table evento_comisario(
	id_evento_comisario int,
    id_evento int,
    id_comisario int,
    funcion_comisario enum("juez","observador"),
    primary key (id_evento_comisario, id_evento, id_comisario),
    foreign key (id_evento) references eventos(id_evento),
    foreign key (id_comisario) references comisario(id_comisario)
);

create table equipamiento(
	id_equipamiento int primary key,
    nombre_equipamiento varchar(100) not null,
    stock int not null
);

create table evento_equipo(
	id_evento_equipo int,
    id_evento int,
    id_equipamiento int,
    primary  key(id_evento_equipo, id_evento, id_equipamiento),
	foreign key (id_evento) references eventos(id_evento),
	foreign key (id_equipamiento) references equipamiento(id_equipamiento)
);

create table sede(
	id_sede int primary key,
    nombre_Sede varchar(100) not null,
    presupuesto float not null
);

create table deporte(
	id_deporte int primary key,
    nombre varchar (100) not null,
    num_jugadores int not null
);

create table jefes(
	id_jefe int primary key,
    nombre varchar(100) not null,
    apellido1 varchar(100) not null,
    apellido2 varchar(100),
    email varchar(100) not null,
    titulo varchar(100)
);

create table info_complejo(
	id_complejo int primary key,
    locacion varchar(100) not null,
    area_complejo float not null,
    id_jefe int,
    foreign key (id_jefe) references jefes(id_jefe)
);

create table complejo_deportivo(
	id_complejo_deportivo int primary key,
    nombre varchar(100) not null,
    id_deporte int,
    id_info_complejo int,
    id_sede int,
	foreign key (id_deporte) references deporte(id_deporte),
	foreign key (id_info_complejo) references info_complejo(id_complejo),
    foreign key (id_sede) references sede(id_sede)
); 

create table complejo_polideportivo(
	id_complejo_polideportivo int primary key,
    nombre varchar(100) not null,
    id_info_complejo int,
    id_sede int,
	foreign key (id_info_complejo) references info_complejo(id_complejo),
	foreign key (id_sede) references sede(id_sede)
);

create table complejo_polideportivo_deportes(
	id_complejo_polideportivo_deportes int,
    id_complejo_polideportivo int,
    id_deporte int,
    primary key (id_complejo_polideportivo_deportes, id_complejo_polideportivo, id_deporte),
	foreign key (id_complejo_polideportivo) references complejo_polideportivo(id_complejo_polideportivo),
	foreign key (id_deporte) references deporte(id_deporte)
);

create table evento_complejo_poli(
	id_evento_complejo int,
    id_evento int,
    id_complejo int,
    primary key (id_evento_complejo, id_evento, id_complejo),
    foreign key (id_evento) references eventos(id_evento),
    foreign key (id_complejo) references complejo_polideportivo(id_complejo_polideportivo)
);

create table evento_complejo_deportivo(
	id_evento_complejo int,
    id_evento int,
    id_complejo int,
    primary key (id_evento_complejo, id_evento, id_complejo),
    foreign key (id_evento) references eventos(id_evento),
    foreign key (id_complejo) references complejo_deportivo(id_complejo_deportivo)
);

create table mantenimiento(
	id_mantenimiento int primary key,
    nombre_encargado varchar (100) not null
);

create table mantenimiento_polideportivo_equipamiento(
	id_mantenimiento int,
    id_polideportivo int,
    id_equipamiento int,
	fecha_mantenimiento datetime not null,
    duracion_mantenimiento time not null,
    primary key (id_mantenimiento, id_polideportivo, id_equipamiento),
    foreign key (id_mantenimiento) references mantenimiento(id_mantenimiento),
    foreign key (id_polideportivo) references complejo_polideportivo(id_complejo_polideportivo),
    foreign key (id_equipamiento) references equipamiento(id_equipamiento)
);

create table mantenimiento_complejo_equipamiento(
	id_mantenimiento int,
    id_complejo int,
    id_equipamiento int,
	fecha_mantenimiento datetime not null,
    duracion_mantenimiento time not null,
    primary key (id_mantenimiento, id_complejo, id_equipamiento),
    foreign key (id_mantenimiento) references mantenimiento(id_mantenimiento),
    foreign key (id_complejo) references complejo_deportivo(id_complejo_deportivo),
    foreign key (id_equipamiento) references equipamiento(id_equipamiento)
);



