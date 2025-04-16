-- Create the database only if it doesn't exist
CREATE DATABASE IF NOT EXISTS busresv;
-- Use the created database
USE busresv;

-- Create the 'bus' table
CREATE TABLE IF NOT EXISTS bus (
    bus_no INT PRIMARY KEY,
    ac BOOLEAN NOT NULL,
    capacity INT NOT NULL
);

-- Create the 'booking' table
CREATE TABLE IF NOT EXISTS booking (
    passenger_name VARCHAR(100) NOT NULL,
    bus_no INT NOT NULL,
    travel_date DATE NOT NULL,
    FOREIGN KEY (bus_no) REFERENCES bus(bus_no)
);
