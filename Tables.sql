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


CREATE TABLE Pago (
  ID_Pago INT PRIMARY KEY,
  ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
  Anticipo INT,
  Remanente INT,
  Total_Costo INT,  
  Memo varchar(200)
  )

ALTER TABLE Pago
 CHANGE COLUMN Anticipo Abono INT


USE GEO_VISAS;
SELECT * FROM Citas;

