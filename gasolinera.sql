CREATE TABLE IF NOT EXISTS combustibles (
    id_combustible SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio_por_galon DECIMAL(6,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS bombas (
    id_bomba SERIAL PRIMARY KEY,
    numero_bomba INT NOT NULL,
    estado VARCHAR(20) DEFAULT 'Activa'
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nit VARCHAR(15) DEFAULT 'CF'
);

CREATE TABLE IF NOT EXISTS ventas (
    id_venta SERIAL PRIMARY KEY,
    id_bomba INT REFERENCES bombas(id_bomba),
    id_combustible INT REFERENCES combustibles(id_combustible),
    id_cliente INT REFERENCES clientes(id_cliente),
    cantidad_galones DECIMAL(6,2) NOT NULL,
    total_pagado DECIMAL(8,2) NOT NULL,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO combustibles (nombre, precio_por_galon) VALUES
('Súper', 31.50),
('Regular', 30.00),
('Diésel', 28.50);

INSERT INTO bombas (numero_bomba) VALUES (1), (2), (3), (4);