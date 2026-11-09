PRAGMA foreign_keys=ON;

CREATE TABLE aisles(
	aisle_id INTEGER PRIMARY KEY,
	aisles TEXT
);

CREATE TABLE departments(
	department_id INTEGER PRIMARY KEY,
	department TEXT
);

CREATE TABLE products(
	product_id INTEGER PRIMARY KEY,
	product_name TEXT,
	aisle_id INTEGER,
	department_id INTEGER,
	FOREIGN KEY (aisle_id) REFERENCES aisles(aisle_id),
	FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
