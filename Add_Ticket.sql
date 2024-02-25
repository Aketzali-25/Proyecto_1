CREATE DEFINER=`root`@`localhost` PROCEDURE `AddTicket`(
	_Nombre varchar(100),
    _CanEntradas int,
    _Total int,
    _PagaCon int,
    _Cambio int,
    _PeliculaId int
)
BEGIN
	INSERT INTO tbl_ope_ticket VALUES(NULL, _Nombre, _CanEntradas, _Total, _PagaCon,
    _Cambio, _PeliculaId, 1);
END