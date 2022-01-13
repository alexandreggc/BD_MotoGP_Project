.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS InsertSetorAcidente;
DROP TRIGGER IF EXISTS InsertSetorUltrapassagem;