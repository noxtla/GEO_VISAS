CREATE TABLE Clientes (
  ID_Cliente INT PRIMARY KEY,
  Primer_Nombre varchar(50),
  Segundo_Nombre varchar(50),
  Primer_Apellido varchar(50),
  Segundo_Apellido varchar(50),
  Telefono INT,
  CORREO_ELECTRONICO varchar(50),
  Numero_Pasaporte varchar(50),
  Inicio_Vigencia_Pasaporte DATE,
  Fin_Vigencia_Pasaporte DATE,
  RespuestaSecreta varchar(50),
  MEMO varchar(500)
)


Valores dumis para clientes
INSERT INTO Clientes (
    ID_Cliente,
    Primer_Nombre,
    Segundo_Nombre,
    Primer_Apellido,
    Segundo_Apellido,
    Telefono,
    CORREO_ELECTRONICO,
    Numero_Pasaporte,
    Inicio_Vigencia_Pasaporte,
    Fin_Vigencia_Pasaporte,
    RespuestaSecreta,
    MEMO
) VALUES
(1, 'Juan', 'Carlos', 'Gomez', 'Martinez', 123456789, 'juan@gmail.com', 'AB123456', '2022-01-01', '2025-01-01', 'Respuesta1', 'Notas sobre Juan'),
(2, 'Maria', 'Isabel', 'Lopez', 'Rodriguez', 987654321, 'maria@hotmail.com', 'CD789012', '2022-02-01', '2024-02-01', 'Respuesta2', 'Notas sobre Maria'),
(3, 'Carlos', 'Alberto', 'Perez', 'Garcia', 555555555, 'carlos@yahoo.com', 'EF345678', '2022-03-01', '2023-03-01', 'Respuesta3', 'Notas sobre Carlos');




CREATE TABLE Citas (
  ID_Cita INT PRIMARY KEY,
  ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
  NUMERO_DS160 varchar(50),
  FECHA_CAS date,
  HORA_CAS TIME,
  FECHA_CONSULADO date,
  HORA_CONSULADO TIME,
  Memo varchar(200)
  )

Valores dumis para citas

INSERT INTO Citas (
    ID_Cita,
    ID_Cliente,
    NUMERO_DS160,
    FECHA_CAS,
    HORA_CAS,
    FECHA_CONSULADO,
    HORA_CONSULADO,
    Memo
) VALUES
(1, 1, 'DS160-12345', '2022-01-15', '10:30:00', '2022-01-20', '11:00:00', 'Memo sobre cita 1'),
(2, 2, 'DS160-67890', '2022-02-10', '14:00:00', '2022-02-15', '15:30:00', 'Memo sobre cita 2'),
(3, 3, 'DS160-ABCDE', '2022-03-05', '09:45:00', '2022-03-10', '10:15:00', 'Memo sobre cita 3');





CREATE TABLE Pago (
  ID_Pago INT PRIMARY KEY,
  ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
  Anticipo INT,
  Remanente INT,
  Total_Costo INT,  
  Memo varchar(200)
  )


INSERT INTO Pago (
    ID_Pago,
    ID_Cliente,
    Anticipo,
    Remanente,
    Total_Costo,
    Memo
) VALUES
(1, 1, 500, 1500, 2000, 'Pago para cliente 1'),
(2, 2, 700, 1300, 2000, 'Pago para cliente 2'),
(3, 3, 800, 1200, 2000, 'Pago para cliente 3');

ALTER TABLE Pago
 CHANGE COLUMN Anticipo Abono INT




USE GEO_VISAS;
SELECT * FROM Citas;

/*Recupera la DS-160 de Juan carlos por Id 1 o por nombre*/


SELECT C.ID_Cliente, C.Primer_Nombre, Cit.NUMERO_DS160 FROM CLIENTES C INNER JOIN Citas Cit WHERE  C.ID_Cliente = 3;
/*Esta consulta me trae 3 resultados
La consulta tiene un problema de sintaxis
Requiere que se especifique la condiciond eunion utilizando la clausula ON despues de INNER JOIN
sin esta condicion se realizara una union sin una condicion especifica
*/

SELECT C.ID_Cliente, C.Primer_Nombre, Cit.NUMERO_DS160 FROM CLIENTES C INNER JOIN Citas Cit ON C.ID_Cliente = Cit.ID_Cliente;
/*
Asi es como recuperamos todos los reistros ID Nombre y NoDs160
*/

/*
Solo la de Juan
*/
SELECT C.ID_Cliente, C.Primer_Nombre, Cit.NUMERO_DS160 FROM CLIENTES C INNER JOIN Citas Cit ON C.ID_Cliente = Cit.ID_Cliente WHERE C.Primer_Nombre = 'Juan';



/*Vamos a intentar con unos left Join*/
SELECT * FROM Pagos;
SELECT * FROM Clientes;
SELECT * FROM Citas;

/*Este es un ejemplo de left Join, pero me dio el mismo resultado de un INNER JOIN, voy a seguir investigando*/
SELECT C.Primer_Nombre as NOMBRE, P.Remanente as REMANENTE FROM CLIENTES C LEFT JOIN Pagos P ON C.ID_Cliente = P.ID_Cliente;


/*Agregar valores dumy porque al parecer todos hacen match*/
INSERT INTO Clientes (ID_Cliente, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Telefono, CORREO_ELECTRONICO, Numero_Pasaporte, Inicio_Vigencia_Pasaporte, Fin_Vigencia_Pasaporte, RespuestaSecreta, MEMO)
VALUES
(4, 'Pedro', 'Alejandro', 'López', 'Santos', 111222333, 'pedro.lopez@email.com', 'DEF789012', '2022-04-01', '2023-04-01', 'respuesta4', 'Notas sobre Pedro'),
(5, 'Ana', 'María', 'Gómez', 'Rodríguez', 444555666, 'ana.gomez@email.com', 'JKL123456', '2022-05-01', '2024-05-01', 'respuesta5', 'Notas sobre Ana'),
(6, 'Luis', 'Miguel', 'Díaz', 'Pérez', 777888999, 'luis.diaz@email.com', '456JKL789', '2022-06-01', '2023-06-01', 'respuesta6', 'Notas sobre Luis'),
(7, 'Ejemplo', 'Nombre', 'Apellido', 'Adicional', 987654321, 'ejemplo@email.com', 'XYZ123456', '2022-12-01', '2023-12-01', 'respuesta20', 'Notas adicionales');


/*Despues de ingresar los valores dumy*/
/*
Pude ver que me trajo todos los nombres y todos los remanentes
Algunos remanentes estaban como NULL porque no habian realizado ningun pago*/

/*Este es un ejemplo de left Join, pero me dio el mismo resultado de un INNER JOIN, voy a seguir investigando*/
SELECT C.Primer_Nombre as NOMBRE, P.Remanente as REMANENTE FROM CLIENTES C LEFT JOIN Pagos P ON C.ID_Cliente = P.ID_Cliente;

/*Acabo de pensar en un ejemplo para los left join*/

/*
Me trae todos los elementos de Tabla clientes (LEFT)  y ninguno de Pagos (Right)
ya que no conciden el ID_Cliente con el Total_Costos 
*/
SELECT C.Primer_Nombre as NOMBRE , P.Remanente as REMANENTE FROM CLIENTES C LEFT JOIN Pagos P on C.ID_Cliente = P.Total_Costo;

/*
UPDATE PENDING
Para mejorar la tabla podrias poner la llave primaria como auto incremental en todas las tablas

Aun no entiendo bien la abstraccion mejor me espero
*/


/*Mas valores para pago*/
INSERT INTO Pagos (ID_Pago, ID_Cliente, Abono, Remanente, Total_Costo, Memo)
VALUES
(4, 4, 600, 1400, 2000, 'Pago para cliente 4'),
(5, 5, 900, 1100, 2000, 'Pago para cliente 5'),
(6, 6, 400, 1600, 2000, 'Pago para cliente 6'),
(7, 7, 750, 1250, 2000, 'Pago para cliente 7');

/*Cuanto ganaste hoy [Total de abonos]*/

SELECT SUM(Abono) AS Total, SUM(Remanente) AS DEUDA, SUM(Total_Costo) AS Potencial FROM PAGOS;

SELECT SUM(Remanente) AS Total FROM PAGOS;

SELECT COUNT(ID_Cliente) AS TOTAL_DE_CLIENTES from CLIENTES;
