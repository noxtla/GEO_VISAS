/*Selecciona el numero de citas de cada cliente*/
SELECT C.ID_Cliente, COUNT(*) AS NumeroDeCitas
FROM Citas C
GROUP BY C.ID_Cliente;


