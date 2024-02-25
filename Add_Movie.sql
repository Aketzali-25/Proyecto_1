CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Movie`(
_Nombre varchar (70),
_Precio int,
_Direccion_Img varchar(800)
)
BEGIN

insert into tbl_cat_pelicula values (null, _Nombre, _Precio, _Direccion_Img,1);

END