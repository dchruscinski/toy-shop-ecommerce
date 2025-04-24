-- Tworzenie użytkownika
CREATE USER toyshop_admin WITH PASSWORD 'password';

-- Tworzenie bazy danych i przypisanie właściciela
CREATE DATABASE toyshop_db OWNER toyshop_admin;

-- Nadanie wszystkich uprawnień do wszystkich baz danych (uwaga: to nie jest typowe w PostgreSQL)
-- W PostgreSQL zazwyczaj nadaje się uprawnienia do konkretnych baz i schematów
-- Poniżej przykład dla konkretnej bazy danych (np. ecommerce_db):
GRANT ALL PRIVILEGES ON DATABASE toyshop_db TO toyshop_admin;

-- Usunięcie schematu, jeśli istnieje
DROP SCHEMA IF EXISTS "toy_shop_ecommerce" CASCADE;

-- Utworzenie schematu
CREATE SCHEMA "toy_shop_ecommerce";

-- Ustawienie domyślnego schematu
SET search_path TO "toy_shop_ecommerce";

GRANT ALL ON SCHEMA toy_shop_ecommerce TO toyshop_admin;

ALTER DEFAULT PRIVILEGES IN SCHEMA toy_shop_ecommerce
GRANT ALL ON TABLES TO toyshop_admin;