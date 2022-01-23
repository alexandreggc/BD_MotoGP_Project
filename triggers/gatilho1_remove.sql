.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS InsertGrid;
DROP TRIGGER IF EXISTS DeleteGrid;
DROP TRIGGER IF EXISTS UpdateGridForBetter;
DROP TRIGGER IF EXISTS UpdateGridForWorse;