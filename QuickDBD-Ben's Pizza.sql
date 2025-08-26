CREATE TABLE `customers` (
    `cust_id` INT NOT NULL,
    `cust_firstname` VARCHAR(50) NOT NULL,
    `cust_lastname` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`cust_id`)
);

CREATE TABLE `address` (
    `add_id` INT NOT NULL,
    `delivery_address1` VARCHAR(200) NOT NULL,
    `delivery_address2` VARCHAR(200),
    `delivery_city` VARCHAR(50) NOT NULL,
    `delivery_zipcode` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`add_id`)
);

CREATE TABLE `item` (
    `item_id` VARCHAR(10) NOT NULL,
    `sku` VARCHAR(20) NOT NULL UNIQUE,
    `item_name` VARCHAR(100) NOT NULL,
    `item_cat` VARCHAR(100) NOT NULL,
    `item_size` VARCHAR(10) NOT NULL,
    `item_price` DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (`item_id`)
);

CREATE TABLE `orders` (
    `row_id` INT NOT NULL,
    `order_id` VARCHAR(10) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `item_id` VARCHAR(10) NOT NULL,
    `quantity` INT NOT NULL,
    `cust_id` INT NOT NULL,
    `delivery` BOOLEAN NOT NULL,
    `add_id` INT NOT NULL,
    PRIMARY KEY (`row_id`),
    FOREIGN KEY (`cust_id`) REFERENCES `customers`(`cust_id`),
    FOREIGN KEY (`add_id`) REFERENCES `address`(`add_id`),
    FOREIGN KEY (`item_id`) REFERENCES `item`(`item_id`)
);

CREATE TABLE `ingredient` (
    `ing_id` VARCHAR(10) NOT NULL,
    `ing_name` VARCHAR(200) NOT NULL,
    `ing_weight` INT NOT NULL,
    `ing_meas` VARCHAR(20) NOT NULL,
    `ing_price` DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (`ing_id`)
);

CREATE TABLE `recipe` (
    `row_id` INT NOT NULL,
    `recipe_id` VARCHAR(20) NOT NULL,
    `ing_id` VARCHAR(10) NOT NULL,
    `quantity` INT NOT NULL,
    PRIMARY KEY (`row_id`),
    FOREIGN KEY (`ing_id`) REFERENCES `ingredient`(`ing_id`),
    FOREIGN KEY (`recipe_id`) REFERENCES `item`(`item_id`)
);

CREATE TABLE `inventory` (
    `inv_id` INT NOT NULL,
    `item_id` VARCHAR(10) NOT NULL,
    `quantity` INT NOT NULL,
    PRIMARY KEY (`inv_id`),
    FOREIGN KEY (`item_id`) REFERENCES `item`(`item_id`)
);

CREATE TABLE `staff` (
    `staff_id` VARCHAR(20) NOT NULL,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `position` VARCHAR(100) NOT NULL,
    `hourly_rate` DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (`staff_id`)
);

CREATE TABLE `shift` (
    `shift_id` VARCHAR(20) NOT NULL,
    `day_of_week` VARCHAR(10) NOT NULL,
    `start_time` TIME NOT NULL,
    `end_time` TIME NOT NULL,
    PRIMARY KEY (`shift_id`)
);

CREATE TABLE `rota` (
    `row_id` INT NOT NULL,
    `rota_id` VARCHAR(20) NOT NULL,
    `date` DATETIME NOT NULL,
    `shift_id` VARCHAR(20) NOT NULL,
    `staff_id` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`row_id`),
    FOREIGN KEY (`shift_id`) REFERENCES `shift`(`shift_id`),
    FOREIGN KEY (`staff_id`) REFERENCES `staff`(`staff_id`)
);
