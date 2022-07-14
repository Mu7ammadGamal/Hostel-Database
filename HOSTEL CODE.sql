CREATE TABLE Guest(
    guest_id INTEGER PRIMARY key,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(1) NOT NULL,/*EDITED*/
    nationality VARCHAR (50) NOT NULL,
    nat_id VARCHAR(20) NOT NULL UNIQUE,
    passport_id VARCHAR(20) NOT NULL UNIQUE,
    age INTEGER NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(20) NOT NULL UNIQUE,
    marital_status VARCHAR(20),
    dependent_id INTEGER
);



CREATE TABLE Waiting(
    waiting_no INTEGER PRIMARY KEY,
    guest_id INTEGER
);



CREATE TABLE Reservation(
    reservation_id INTEGER PRIMARY KEY,
    num_of_rooms INTEGER NOT NULL,
    reservation_date DATE NOT NULL,
    check_in_date TIMESTAMP NOT NULL,
    check_out_date TIMESTAMP NOT NULL,
    adults INTEGER NOT NULL,
    children INTEGER,
    nights INTEGER NOT NULL,
    guest_id INTEGER
);



CREATE TABLE Room(
    room_id INTEGER PRIMARY key,
    floor_num INTEGER NOT NULL,
	status VARCHAR(1) NOT NULL,/*EDITED*/
    rating INTEGER NOT NULL,
    room_type_id INTEGER 
);



CREATE TABLE Room_Type(
    room_type_id INTEGER PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description VARCHAR2(1000) NOT NULL UNIQUE,
    price_per_night DECIMAL(6,2) NOT NULL,
    capacity INTEGER NOT NULL,
    num_of_beds INTEGER NOT NULL,
    has_baby_bed NUMBER(1) NOT NULL,
    has_see_view NUMBER(1) NOT NULL
);



CREATE TABLE Booked_room(
    room_id INTEGER,
    reservation_id INTEGER,
    PRIMARY KEY(room_id ,reservation_id) /*it must be after defining them as foregin key*/
);



CREATE TABLE Payment(
    payment_id INTEGER PRIMARY KEY,
    type VARCHAR(20) NOT NULL ,
    total_price DECIMAL(8,2) NOT NULL,
    reservation_id INTEGER
   
);



CREATE TABLE Event(
    event_id INTEGER PRIMARY KEY,
    title VARCHAR(20)NOT NULL UNIQUE,
    description VARCHAR2(1000) NOT NULL UNIQUE,
    start_date DATE NOT NULL ,
    end_date DATE NOT NULL,
    capacity INTEGER NOT NULL,
    cost DECIMAL(6,2)NOT NULL
);



CREATE TABLE Event_reservation(
    from_time TIMESTAMP NOT NULL,
    to_time TIMESTAMP NOT NULL,
    event_id INTEGER,
    reservation_id INTEGER,
    PRIMARY KEY (event_id ,reservation_id) /*it must be after defining them as foregin key*/
);



CREATE TABLE Item (
    item_id INTEGER PRIMARY KEY,
    type VARCHAR(20)NOT NULL UNIQUE,
    description VARCHAR2(1000) NOT NULL UNIQUE,
    quantity INTEGER NOT NULL,
    price DECIMAL(6,2) NOT NULL
);



CREATE TABLE Department_item(
    dep_quantity INTEGER NOT NULL,
    item_id INTEGER,
    dep_id INTEGER,
    PRIMARY KEY (item_id,dep_id) /*it must be after defining them as foregin key*/
);

CREATE TABLE Room_item(
    room_quantity INTEGER NOT NULL,
    item_id INTEGER,
    room_id INTEGER,
    PRIMARY KEY (item_id,dep_id) /*it must be after defining them as foregin key*/
);



CREATE TABLE Department(
    dep_id INTEGER PRIMARY KEY,
    name VARCHAR(20)NOT NULL UNIQUE,
    num_of_emp INTEGER NOT NULL,
    num_of_items INTEGER NOT NULL
);


CREATE TABLE Employee(
    emp_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(1) NOT NULL,/*EDITED*/
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(20) NOT NULL UNIQUE,
    jop_title VARCHAR(30) NOT NULL,
    salary INTEGER NOT NULL,
    dep_id INTEGER,
    manger_id INTEGER

);

CREATE TABLE Language(
    level VARCHAR(10)NOT NULL,
    language VARCHAR(10)NOT NULL,
    emp_id INTEGER    
);


/*CREATE TABLE Language(
    lang_id INTEGER PRIMARY KEY,
    lang_name VARCHAR(40) NOT NULL UNIQUE
);*/



/*CREATE TABLE speak(
    level VARCHAR(20)NOT NULL,
    lang_id INTEGER,
    emp_id INTEGER,
    PRIMARY KEY(lang_id,emp_id)
);*/

