DROP TABLE sunspots;

CREATE TABLE sunspots(
	date DATE PRIMARY KEY,
	total_sunspots INT,
	observations INT
);

CREATE TABLE gas_prices(
	date DATE PRIMARY KEY, 
	gas_price FLOAT
);

DROP TABLE tesla_stock;

CREATE TABLE tesla_stock (
	date DATE PRIMARY KEY, 
	open FLOAT,
	close FLOAT,
	daily_change FLOAT,
	volume INT
);

DROP TABLE bitcoin;

CREATE TABLE bitcoin (
	date DATE PRIMARY KEY, 
	price FLOAT,
	exchange_volume FLOAT,
	generated FLOAT
);

SELECT * FROM sunspots;
SELECT * FROM bitcoin;

ALTER TABLE bitcoin
RENAME COLUMN price to bitcoin_price

ALTER TABLE tesla_stock
RENAME COLUMN open to tesla_open

SELECT tesla_stock.date, tesla_stock.tesla_open, sunspots.total_sunspots, gas_prices.gas_price, bitcoin.bitcoin_price
FROM tesla_stock
JOIN sunspots
ON tesla_stock.date = sunspots.date
JOIN gas_prices
ON tesla_stock.date = gas_prices.date
JOIN bitcoin
ON tesla_stock.date = bitcoin.date
