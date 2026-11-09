PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS aisles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS ordersPrior;
DROP TABLE IF EXISTS ordersTrain;

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

CREATE TABLE orders(
	order_id INTEGER PRIMARY KEY,
	user_id INTEGER,
	eval_set TEXT,
	order_number INTEGER,
	order_dow INTEGER,
	order_hour_of_day INTEGER,
	days_since_prior_order FLOAT
);	

CREATE TABLE ordersPrior(
	order_id INTEGER,
	product_id INTEGER,
	add_to_cart_order INTEGER,
	reordered INTEGER,

	PRIMARY KEY (order_id, product_id),
	
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE ordersTrain(
	order_id INTEGER ,
	product_id INTEGER,
	add_to_cart_order INTEGER,
	reordered INTEGER,
	
	PRIMARY KEY (order_id, product_id),
	
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);
