CREATE TABLE sunspots(
	date DATE PRIMARY KEY,
	total_sunspots INT,
	observations INT
);

CREATE TABLE gas_prices(
	date DATE PRIMARY KEY, 
	gas_price INT
);

CREATE TABLE tesla_stock (
	date DATE PRIMARY KEY, 
	close_price INT,
	volume INT
);

CREATE TABLE bitcoin (
	date DATE PRIMARY KEY, 
	price INT,
	exchange_volume INT,
	generated INT
);