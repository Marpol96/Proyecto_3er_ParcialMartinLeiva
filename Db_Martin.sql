--
-- File generated with SQLiteStudio v3.2.1 on mié dic 11 23:26:04 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Cliente
CREATE TABLE Cliente (IdCliente INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, NombreCliente TEXT (50) UNIQUE NOT NULL, ApellidoCliente TEXT (50) NOT NULL, DireccionCliente TEXT (50) NOT NULL, Telefono NUMERIC (9) NOT NULL DEFAULT (9999 - 9999));

-- Table: Estado
CREATE TABLE Estado (IdEstado INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, NombreEstado TEXT NOT NULL);

-- Table: Inventario
CREATE TABLE Inventario (IdProducto INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, NombreProducto TEXT (35) NOT NULL, CantidadProducto NUMERIC (1000) NOT NULL DEFAULT (5), PrecioProducto DECIMAL (1000) DEFAULT (0.0));

-- Table: Pedido
CREATE TABLE Pedido (IdPedido INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, IdCliente NUMERIC (20) NOT NULL, IdEstado NUMERIC NOT NULL, IdProducto NUMERIC NOT NULL, Subtotal DECIMAL NOT NULL, Impuesto DECIMAL NOT NULL DEFAULT (0.12), Total DECIMAL NOT NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
