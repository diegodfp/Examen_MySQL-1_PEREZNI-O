insert into comisario values 
(1,"Diego","Perez","Nino","3005747753"),
(2,"juan","Perez2","Nino","300574002"),
(3,"Carlo","Perez3","Nino","3005747003"),
(4,"Mario","Perez4","Nino","3005747004"),
(5,"David","Perez5","Nino","3005747005"),
(6,"Diego","Perez6","Nino","3005747006"),
(7,"Mareo","Perez7","Nino","3005747007"),
(8,"Diego","Perez8","Nino","3005747008"),
(9,"Diego","Perez9","Nino","3005747009"),
(10,"Diego","Perez10","Nino","30000000")
;

insert into eventos values 
(1, 'Torneo de Tennis','2023-05-12 10:00:00', '01:30:00', 25),
(2, 'Torneo de Microfutbol','2023-11-20 10:00:00', '03:15:00', 75),
(3, 'Torneo de Voleibol','2023-06-02 09:00:00', '05:30:00', 25),
(4, 'Torneo de Natacion','2023-12-12 16:00:00', '02:45:00', 5),
(5, 'Torneo de Futbol','2024-01-04 10:00:00', '01:45:00', 85),
(6, 'Torneo de Bolos','2024-01-04 10:00:00', '01:45:00', 85),
(7, 'Torneo de Natacion','2024-01-04 10:00:00', '01:45:00', 85),
(8, 'Torneo de Basquet','2024-01-04 10:00:00', '01:45:00', 85),
(9, 'Torneo de Atletismo','2024-01-04 10:00:00', '01:45:00', 85),
(10, 'Torneo de Futbol ninos','2024-01-04 14:00:00', '01:45:00', 85)
;

insert into evento_comisario values 
(1,1,1,"juez"),
(2,2,1,"juez"),
(3,3,1,"juez"),
(4,4,1,"juez"),
(5,5,2,"juez"),
(6,6,3,"observador"),
(7,7,4,"observador"),
(8,8,5,"observador"),
(9,9,6,"observador"),
(10,10,7,"observador")
;

INSERT INTO equipamiento VALUES
(1, 'Arcos',5),
(2, 'Pértigas',15),
(3, 'Barras Paralelas',10),
(4, 'Flotadores',35),
(5, 'Raquetas',5),
(6, 'Balones',17),
(7, 'Escobas',5),
(8, 'Traperos',5),
(9, 'Baldes',5),
(10, 'Cortacesped',5);


INSERT INTO evento_equipo VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,4,1),
(5,5,2),
(6,6,3),
(7,7,4),
(8,8,5),
(9,9,6),
(10,10,7)
;

INSERT INTO sede VALUES
(1,'sede1',12.300),
(2,'sede2',150000.03),
(3,'sede3',5150000.03),
(4,'sede4',5150000.03),
(5,'sede5',5150000.03),
(6,'sede6',5150000.03),
(7,'sede7',5150000.03),
(8,'sede8',5150000.03),
(9,'sede9',5150000.03),
(10,'sede10',5150000.03),
(11,'sede11',434561.215);

INSERT INTO deporte VALUES
(1,'Natacion', 5),
(2,'Futbol', 25),
(3,'Microfutbol', 20),
(5,'Basquet', 22),
(6,'Bolos', 4),
(7,'Atletismo', 80),
(8,'Jockey', 50),
(9,'Arco', 3),
(10,'Tennis de Mesa', 5);


INSERT INTO jefes VALUES
(10,'Diego',"Duarte","Hernandez",'cd@gmail.com','Especialista en Natacion');

INSERT INTO info_complejo VALUES
(1, 'Bucaramanga', 5, 2),
(2, 'Giron', 14.2, 1),
(3, 'Floridablanca', 54, 5),
(4, 'Zapatoca', 65, 3),
(5, 'Lebrija', 48, 4),
(6, 'Sangil', 5, 2),
(7, 'Socorro', 14.2, 1),
(8, 'Soacha', 54, 5),
(9, 'Bogota', 65, 3),
(10, 'Chia', 48, 4);

