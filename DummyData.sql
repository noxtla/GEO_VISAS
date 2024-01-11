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
