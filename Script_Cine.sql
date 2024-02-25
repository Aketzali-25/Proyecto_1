USE cartelera;

DESCRIBE tbl_ope_ticket;
DESCRIBE tbl_cat_pelicula;

TRUNCATE tbl_cat_pelicula;
SELECT * FROM tbl_cat_pelicula;

INSERT INTO tbl_cat_pelicula VALUES(null,"Break The Silence:The Movie",250,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Burn The Stage:The Movie",300,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Bring The Soul:The Movie",250,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Permission To Dance On Stage",300,1);
INSERT INTO tbl_cat_pelicula VALUES(null," Demon Slayer:Rumbo al entrenamiento de los pilares",67,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Despicable Me 4",55,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Wonka",57,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"¡Patos!",72,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Aquaman 2",75,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Amor y Palomitas:Yo Antes de Ti",75,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Red",78,1);
INSERT INTO tbl_cat_pelicula VALUES(null,"Amor y Palomitas: Diario de una Pasion",85,1);

INSERT INTO tbl_ope_ticket VALUES(NULL, "Aket", 1, 300, 300, 0, 2, 1);

UPDATE tbl_ope_boleto SET Boleto_peliculaId = 2 WHERE BoletoId = 1;

SELECT * FROM tbl_ope_ticket;

SELECT 
	tk.Ticket_Id,
    tk.Ticket_Nombre,
    pe.Pelicula_Nombre,
    pe.Pelicula_Precio,
    tk.Ticket_CanEntradas,
    tk.Ticket_Total
FROM tbl_ope_ticket tk
INNER JOIN tbl_cat_pelicula pe on tk.Ticket_PeliculaId = pe.Pelicula_Id
WHERE pe.Pelicula_Activo = 1;

