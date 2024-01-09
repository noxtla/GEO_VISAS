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
