
USE GEO_VISAS;
SELECT * FROM Citas;

/*Recuperer ID_CLiente, Nombre y NoDs160 con INNER JOIN*/
SELECT C.ID_Cliente, C.Primer_Nombre, Cit.NUMERO_DS160 FROM CLIENTES C INNER JOIN Citas Cit ON C.ID_Cliente = Cit.ID_Cliente;

/*Recupera la DS-160 de Juan*/
SELECT C.ID_Cliente, C.Primer_Nombre, Cit.NUMERO_DS160 FROM CLIENTES C INNER JOIN Citas Cit ON C.ID_Cliente = Cit.ID_Cliente WHERE C.Primer_Nombre = 'Juan';

/*LEFT JOIN*/

/*Vamos a intentar con unos left Join*/
SELECT C.Primer_Nombre as NOMBRE, P.Remanente as REMANENTE FROM CLIENTES C LEFT JOIN Pagos P ON C.ID_Cliente = P.ID_Cliente;
/*RESULTADO
Recupera todos los nombres y todos los remanentes
Algunos remanentes pueden estar en NULL si no han realizado ningun pago (No estan populados)
*/

/*
Me trae todos los elementos de Tabla clientes (LEFT)  y ninguno de Pagos (Right)
ya que no conciden el ID_Cliente con el Total_Costos 
*/
SELECT C.Primer_Nombre as NOMBRE , P.Remanente as REMANENTE FROM CLIENTES C LEFT JOIN Pagos P on C.ID_Cliente = P.Total_Costo;

/*Fin
Ejemplo sencillo para LEFT JOIN
donde solo involucra dos tablas
*/

/*Cuanto ganaste hoy [Total de abonos], cuanto te deben [Total de remamente], potencia de tus ventas [Total_Costo]*/
SELECT SUM(Abono) AS Total, SUM(Remanente) AS DEUDA, SUM(Total_Costo) AS Potencial FROM PAGOS;

/*Cuantos clientes tienes en tu tabla*/
SELECT COUNT(ID_Cliente) AS TOTAL_DE_CLIENTES from CLIENTES;
