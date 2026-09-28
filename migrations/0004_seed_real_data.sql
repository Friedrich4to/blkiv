-- Real unit data — BLK Residences IV
-- Bloque 01: 101, 201, 301, 401  |  Bloque 02: 102, 202, 302, 402  |  Bloque 03: 103, 203, 303, 403
-- Nivel 1: patio  |  Nivel 2-3: sin extras  |  Nivel 4: terraza (PH) o sin extras (402)
-- m2_total = m2 + patio_m2 (nivel 1), m2 + terraza_m2 (nivel 4 PH), m2 solo (nivel 2-3 y 402)

-- Nivel 1 — Bloque 01
UPDATE units SET m2 = 85.60, patio_m2 = 38.00, terraza_m2 = NULL, locker_m2 = 5.2,  m2_total = 123.60, precio = 125000, disponibilidad = 'reserved'  WHERE numero = '101';
-- Nivel 1 — Bloque 02 (unidad especial pequeña)
UPDATE units SET m2 = 49.65, patio_m2 = NULL, terraza_m2 = NULL, locker_m2 = NULL, m2_total = 49.65, precio = 115000, disponibilidad = 'reserved' WHERE numero = '102';
-- Nivel 1 — Bloque 03
UPDATE units SET m2 = 80.60, patio_m2 = 38.00, terraza_m2 = NULL, locker_m2 = NULL, m2_total = 118.60, precio = 135000, disponibilidad = 'available' WHERE numero = '103';

-- Nivel 2 — Bloque 01
UPDATE units SET m2 = 85.60, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = 5.2,  m2_total = 85.60,  precio = 125000, disponibilidad = 'available' WHERE numero = '201';
-- Nivel 2 — Bloque 02
UPDATE units SET m2 = 70.65, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = NULL, m2_total = 70.65,  precio = 115000, disponibilidad = 'reserved'  WHERE numero = '202';
-- Nivel 2 — Bloque 03
UPDATE units SET m2 = 83.80, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = 4.2,  m2_total = 83.80,  precio = 125000, disponibilidad = 'available' WHERE numero = '203';

-- Nivel 3 — Bloque 01
UPDATE units SET m2 = 85.60, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = 5.2,  m2_total = 85.60,  precio = 125000, disponibilidad = 'reserved'  WHERE numero = '301';
-- Nivel 3 — Bloque 02
UPDATE units SET m2 = 70.65, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = NULL, m2_total = 70.65,  precio = 115000, disponibilidad = 'reserved'  WHERE numero = '302';
-- Nivel 3 — Bloque 03
UPDATE units SET m2 = 83.80, patio_m2 = NULL,  terraza_m2 = NULL, locker_m2 = 4.2,  m2_total = 83.80,  precio = 128000, disponibilidad = 'available' WHERE numero = '303';

-- Nivel 4 / Penthouse — Bloque 01
UPDATE units SET m2 = 85.60, patio_m2 = NULL,  terraza_m2 = 53.25, locker_m2 = 5.2,  m2_total = 138.85, precio = 158500, disponibilidad = 'available' WHERE numero = '401';
-- Nivel 4 — Bloque 02 (sin terraza, sin locker)
UPDATE units SET m2 = 70.65, patio_m2 = NULL,  terraza_m2 = NULL,  locker_m2 = NULL, m2_total = 70.65,  precio = 115000, disponibilidad = 'available' WHERE numero = '402';
-- Nivel 4 / Penthouse — Bloque 03
UPDATE units SET m2 = 83.80, patio_m2 = NULL,  terraza_m2 = 53.25, locker_m2 = 4.2,  m2_total = 137.05, precio = 158500, disponibilidad = 'available' WHERE numero = '403';
