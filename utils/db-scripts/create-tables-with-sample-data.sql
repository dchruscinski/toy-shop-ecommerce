-- Tabela: product_category
CREATE TABLE IF NOT EXISTS product_category (
  id BIGSERIAL PRIMARY KEY,
  category_name VARCHAR(255) DEFAULT NULL
);

-- Tabela: product
CREATE TABLE IF NOT EXISTS product (
  id BIGSERIAL PRIMARY KEY,
  sku VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  unit_price NUMERIC(13,2) DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active BOOLEAN DEFAULT TRUE,
  units_in_stock INTEGER DEFAULT NULL,
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  category_id BIGINT NOT NULL,
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category (id)
);

-- Dodanie przykładowych danych
INSERT INTO product_category(category_name) VALUES ('INFANT');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES 
('TOY-INFANT-1000', 'Smiki, piłeczki sensoryczne, tęczowe, 6 szt.', 'Sensory balls',
 'assets/images/products/smiki-pileczki-sensoryczne-teczowe-6-szt.png', TRUE, 100, 33.99, 1, CURRENT_TIMESTAMP),

('TOY-INFANT-1001', 'Dumel Discovery, Ciasteczkowy Hipcio, zabawka interaktywna', 'Interactive toy - hungry hippo',
 'assets/images/products/dumel-discovery-ciasteczkowy-hipcio-zabawka-interaktywna.png', TRUE, 100, 55.49, 1, CURRENT_TIMESTAMP),

('TOY-INFANT-1002', 'JollyBaby, Zwierzęta z Oceanu, miękka książeczka sensoryczna', 'Sensory book',
 'assets/images/products/jollybaby-zwierzeta-z-oceanu-miekka-ksiazeczka-sensoryczna.png', TRUE, 100, 24.49, 1, CURRENT_TIMESTAMP),

('TOY-INFANT-1003', 'Fisher-Price, Siostrzyczka Szczeniaczka, zabawka interaktywna z 3 Poziomami Nauki', 'Interactive toy - sister puppy',
 'assets/images/products/fisher-price-siostrzyczka-szczeniaczka-zabawka-interaktywna.png', TRUE, 100, 99.99, 1, CURRENT_TIMESTAMP),

('TOY-INFANT-1004', 'Dumel Discovery, Odkrywczy domek, zabawka interaktywna', 'Interactive toy - house',
 'assets/images/products/dumel-discovery-odkrywczy-domek-zabawka-interaktywna.png', TRUE, 100, 239.99, 1, CURRENT_TIMESTAMP);