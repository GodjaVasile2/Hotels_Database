BEGIN
    INSERT INTO ROLES(id, role_name) VALUES (1, 'Manager Hotel');
    INSERT INTO ROLES(id, role_name) VALUES (2, 'Receptioner');
    INSERT INTO ROLES(id, role_name) VALUES (3, 'Camerista');
    INSERT INTO ROLES(id, role_name) VALUES (4, 'Bucatar');
    INSERT INTO ROLES(id, role_name) VALUES (5, 'Chelner');
    INSERT INTO ROLES(id, role_name) VALUES (6, 'Barman');
    INSERT INTO ROLES(id, role_name) VALUES (7, 'Paznic');
    INSERT INTO ROLES(id, role_name) VALUES (8, 'Tehnician de intretinere');

    INSERT INTO COUNTRIES(id, country_name) VALUES (1, 'Romania');
    INSERT INTO COUNTRIES(id, country_name) VALUES (2, 'Ungaria');
    INSERT INTO COUNTRIES(id, country_name) VALUES (3, 'Bulgaria');

    INSERT INTO CITIES(id, city_name, country_id, postal_code) VALUES (1, 'Budapesta', 2, '1011');
    INSERT INTO CITIES(id, city_name, country_id, postal_code) VALUES (2, 'Debrecen', 2, '4024');
    INSERT INTO CITIES(id, city_name, country_id, postal_code) VALUES (3, 'Bucuresti', 1, '010011');
    INSERT INTO CITIES(id, city_name, country_id, postal_code) VALUES (4, 'Cluj-Napoca', 1, '400001');
    INSERT INTO CITIES(id, city_name, country_id) VALUES (5, 'Timisoara', 1);
    INSERT INTO CITIES(id, city_name, country_id) VALUES (6, 'Iasi', 1);
    INSERT INTO CITIES(id, city_name, country_id) VALUES (7, 'Sofia', 3);

    INSERT INTO CATEGORIES(id, category_name) VALUES (1, 'Luxury');
    INSERT INTO CATEGORIES(id, category_name) VALUES (2, 'Budget');


    INSERT INTO HOTELS(id, hotel_name, description, email, city_id, category_id) VALUES (1, 'Ibis Budapesta', 'A luxury hotel in Budapesta', 'ibis.budapesta@example.com', 1, 1);
    INSERT INTO HOTELS(id, hotel_name, description, email, phone_number, city_id, category_id) VALUES (2, 'Lux Debrecen', 'A budget hotel in Debrecen', 'lux.debrecen@example.com', '1234567890', 2, 2);
    INSERT INTO HOTELS(id, hotel_name, email, city_id, category_id) VALUES (3, 'Ibis Bucuresti', 'ibis.bucuresti@example.com', 3, 1);
    INSERT INTO HOTELS(id, hotel_name, description, email, phone_number, city_id, category_id) VALUES (4, 'Dacic', 'A budget hotel in Cluj-Napoca', 'dacic.cluj@example.com', '0987654321', 4, 2);
    INSERT INTO HOTELS(id, hotel_name, description, email, city_id, category_id) VALUES (5, 'Magnolia', 'A luxury hotel in Timisoara', 'magnolia.timisoara@example.com', 5, 1);
    INSERT INTO HOTELS(id, hotel_name, email, phone_number, city_id, category_id) VALUES (6, 'Ibis Timis', 'ibis.timis@example.com', '1122334455', 6, 2);
    INSERT INTO HOTELS(id, hotel_name, email, city_id, category_id) VALUES (7, 'Ibis Sofia', 'ibis.sofia@example.com', 7, 1);


    INSERT INTO ROOM_TYPE (id, type_name,type_description) VALUES (1, 'Single','A room with a single bed for one person');
    INSERT INTO ROOM_TYPE (id, type_name,type_description) VALUES (2, 'Twin','A room with two single beds for two people');
    INSERT INTO ROOM_TYPE (id, type_name,type_description) VALUES (3, 'Queen','A room with a queen-sized bed for two people');
    INSERT INTO ROOM_TYPE (id, type_name,type_description) VALUES (4, 'Studio','A room with a bed and a small kitchenette');

    
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (1, 'John', 'Doe', 'john.doe@example.com', 1, 5000, NULL, 1);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (2, 'Jane', 'Doe', 'jane.doe@example.com', 2, 4000, 1, 1);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (3, 'Jim', 'Doe', 'jim.doe@example.com', 3, 3000, 1, 1);

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (4, 'Adrian', 'Pop', 'adrian.pop@example.com', 1, 5000, NULL, 2);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (5, 'Ion', 'Popescu', 'ion.popescu@example.com', 4, 3500, 4, 2);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (6, 'Maria', 'Ionescu', 'maria.ionescu@example.com', 5, 3200, 4, 2);
    

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (7, 'Elena', 'Popa', 'elena@example.com', 1, 5000, NULL, 3);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (8, 'Andrei', 'Mihai', 'andrei.mihai@example.com', 6, 3000, 7, 3);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (9, 'Elena', 'Vasile', 'elena.vasile@example.com', 7, 2800, 7, 3);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (10, 'Radu', 'Georgescu', 'radu.georgescu@example.com', 8, 2600, 7, 3);
   

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (11, 'Gabriela', 'Marin', 'gabriela.marin@example.com', 1, 4000, NULL, 4);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (12, 'Dorin', 'Ionescu', 'dorin.ionescu@example.com', 3, 3000, 11, 4);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (13, 'Loredana', 'Popescu', 'loredana.popescu@example.com', 4, 3500, 11, 4);

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (14, 'Mihai', 'Popescu', 'mihai.popescu@example.com', 1, 5000, NULL, 5);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (15, 'Ana', 'Ionescu', 'ana.ionescu@example.com', 4, 4000, 14, 5);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (16, 'Ion', 'Georgescu', 'ion.georgescu@example.com', 3, 3000, 14, 5);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (17, 'Maria', 'Popa', 'maria.popa@example.com', 4, 3500, 14, 5);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (18, 'Alexandru', 'Mihai', 'alexandru.mihai@example.com', 8, 3200, 14, 5);

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (19, 'Andreea', 'Popescu', 'andreea.popescu@example.com', 1, 5000, NULL, 6);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (20, 'Cristian', 'Ionescu', 'cristian.ionescu@example.com', 2, 4000, 19, 6);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (21, 'Elena', 'Georgescu', 'elena.georgescu@example.com', 2, 3000, 19, 6);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (22, 'Gabriel', 'Popa', 'gabriel.popa@example.com', 6, 3500, 19, 6);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (23, 'Simona', 'Mihai', 'simona.mihai@example.com', 8, 3200, 19, 6);

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (24, 'Catalin', 'Popescu', 'catalin.popescu@example.com', 1, 5000, NULL, 7);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (25, 'Diana', 'Ionescu', 'diana.ionescu@example.com', 1, 4000, NULL, 7);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (26, 'George', 'Georgescu', 'george.georgescu@example.com', 3, 3000, 24, 7);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (27, 'Laura', 'Popa', 'laura.popa@example.com', 6, 3500, 24, 7);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (28, 'Marius', 'Mihai', 'marius.mihai@example.com', 6, 3200, 25, 7);

    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (29, 'Alex', 'Popescu', 'alex.popescu@example.com', 2, 5000, 1, 1);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (30, 'Andreea', 'Ionescu', 'andreea.ionescu@example.com', 3, 4000, 1, 1);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (31, 'Cristian', 'Georgescu', 'cristian.georgescu@example.com', 3, 3000, 4,2);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id) VALUES (32, 'Elena', 'Popa', 'elena.popa@example.com', 7, 3500, 4, 2);
    INSERT INTO EMPLOYEES (id, first_name, last_name, email, role_id, salary, reports_to, hotel_id)  VALUES (33, 'Gabriel', 'Mihai', 'gabriel.mihai@example.com', 7, 3200, 11, 4);



    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (1, 'Room 1', 1, 'This is a nice room', 100.00, 1, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (2, 'Room 2', 1, 'This is a cozy room', 200.00, 1, 'WiFi, TV, Mini Bar');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (3, 'Room 3', 1, 'This is a spacious room', 150.00, 2, 'WiFi, TV, Mini Bar, Balcony');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (4, 'Room 4', 1, 'This is a comfortable room', 250.00, 2, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (5, 'Room 1', 2, 'This is a cozy room', 100.00, 1, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (6, 'Room 2', 2, 'This is a spacious room', 200.00, 2, 'WiFi, TV, Mini Bar, Balcony');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (7, 'Room 3', 3, 'This is a comfortable room', 300.00, 3, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (8, 'Room 4', 3, 'This is a luxury room', 400.00, 3, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning, Kitchenette');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features)  VALUES (9, 'Main Room', 4, 'This is a cozy room', 100.00, 1, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (10, 'Family Room', 4, 'This is a spacious room', 200.00, 2, 'WiFi, TV, Mini Bar, Balcony');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (11, 'Room 11', 5, 'This is a comfortable room', 300.00, 3, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id, additional_features) VALUES (12, 'Room 12', 5, 'This is a luxury room', 400.00, 4, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning, Kitchenette');
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id) VALUES (13, 'Room 5', 1, 100.00, 1);
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id, additional_features) VALUES (14, 'Room 3', 2, 200.00, 2, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id) VALUES (15, 'Room 6', 3, 'This is a comfortable room', 300.00, 3);
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id, additional_features) VALUES (16, 'Room 16', 4, 400.00, 4, 'WiFi, TV, Mini Bar, Balcony, Air Conditioning, Kitchenette');
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id) VALUES (17, 'Room 17', 5, 100.00, 1);
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id) VALUES (18, 'Room 18', 6, 'This is a spacious room', 200.00, 2);
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id, additional_features) VALUES (19, 'Room 19', 7, 300.00, 3, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id) VALUES (20, 'Room 20', 1, 'This is a luxury room', 400.00, 4);
    INSERT INTO ROOMS (id, room_name, hotel_id, room_price, room_type_id, additional_features) VALUES (21, 'Room 21', 2, 100.00, 1, 'WiFi, TV');
    INSERT INTO ROOMS (id, room_name, hotel_id, description, room_price, room_type_id) VALUES (22, 'Room 22', 3, 'This is a cozy room', 200.00, 2);
    

    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (1, 'John', 'Smith', 'john.smith@example.com', '1234567890', '123 Main St, New York, USA' );
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (2, 'Juan', 'Gomez', 'juan.gomez@example.com', '2345678901', '234 Calle Principal, Madrid, Spain' );
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (3, 'Francois', 'Dubois', 'francois.dubois@example.com', '3456789012', '345 Rue Principale, Paris, France');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (4, 'Heinrich', 'Müller', 'heinrich.muller@example.com', '4567890123', '456 Hauptstraße, Berlin, Germany');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (5, 'Giuseppe', 'Rossi', 'giuseppe.rossi@example.com', '5678901234', '567 Via Principale, Rome, Italy');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (6, 'Ana', 'Popescu', 'ana.popescu@example.com', '6789012345', '678 Strada Principala, Bucharest, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address)  VALUES (7, 'Mihai', 'Ionescu', 'mihai.ionescu@example.com', '7890123456', '789 Strada Principala, Cluj-Napoca, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (8, 'Elena', 'Georgescu', 'elena.georgescu@example.com', '8901234567', '890 Strada Principala, Iasi, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (9, 'Gabriel', 'Popa', 'gabriel.popa@example.com', '9012345678', '901 Strada Principala, Timisoara, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (10, 'Simona', 'Mihai', 'simona.mihai@example.com', '0123456789', '012 Strada Principala, Brasov, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (11, 'Catalin', 'Popescu', 'catalin.popescu@example.com', '1234567890', '123 Strada Principala, Constanta, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (12, 'Diana', 'Ionescu', 'diana.ionescu@example.com', '2345678901', '234 Strada Principala, Sibiu, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address)  VALUES (13, 'George', 'Georgescu', 'george.georgescu@example.com', '3456789012', '345 Strada Principala, Oradea, Romania');
    INSERT INTO GUESTS (id, first_name, last_name, email, phone, address) VALUES (14, 'Laura', 'Popa', 'laura.popa@example.com', '4567890123', '456 Strada Principala, Craiova, Romania');


    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (1, 1, TO_DATE('2015-01-01', 'YYYY-MM-DD'), TO_DATE('2015-01-15', 'YYYY-MM-DD'), 
        TO_DATE('2014-12-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 10, 1000);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (2, 2, TO_DATE('2017-01-16', 'YYYY-MM-DD'), TO_DATE('2017-01-30', 'YYYY-MM-DD'), 
        TO_DATE('2017-01-02', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 15, 1200);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (3, 3, TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2022-02-10', 'YYYY-MM-DD'), 
        TO_DATE('2022-01-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 5, 800);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (4, 4, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-05', 'YYYY-MM-DD'), 
        TO_DATE('2023-02-15', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 0, 400);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (5, 5, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-07', 'YYYY-MM-DD'), 
        TO_DATE('2023-03-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 20, 600);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (6, 6, TO_DATE('2022-05-01', 'YYYY-MM-DD'), TO_DATE('2022-05-03', 'YYYY-MM-DD'), 
        TO_DATE('2022-04-17', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 10, 200);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (7, 7, TO_DATE('2017-06-01', 'YYYY-MM-DD'), TO_DATE('2017-06-15', 'YYYY-MM-DD'), 
        TO_DATE('2017-05-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 15, 1500);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (8, 8, TO_DATE('2015-07-01', 'YYYY-MM-DD'), TO_DATE('2015-07-10', 'YYYY-MM-DD'), 
        TO_DATE('2015-06-17', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 10, 900);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (9, 9, TO_DATE('2022-08-01', 'YYYY-MM-DD'), TO_DATE('2022-08-15', 'YYYY-MM-DD'), 
        TO_DATE('2022-07-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 15, 1200);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (10, 10, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2023-09-05', 'YYYY-MM-DD'), 
        TO_DATE('2023-08-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 5, 500);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (11, 11, TO_DATE('2022-10-01', 'YYYY-MM-DD'), TO_DATE('2022-10-10', 'YYYY-MM-DD'), 
        TO_DATE('2022-09-17', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 10, 1000);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (12, 12, TO_DATE('2017-11-01', 'YYYY-MM-DD'), TO_DATE('2017-11-15', 'YYYY-MM-DD'), 
        TO_DATE('2017-10-18', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 15, 1200);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (13, 13, TO_DATE('2015-12-01', 'YYYY-MM-DD'), TO_DATE('2015-12-10', 'YYYY-MM-DD'), 
        TO_DATE('2015-11-17', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 5, 800);

    INSERT INTO RESERVATIONS (id, guest_id, checkin_date, checkout_date, creation_time, discount_percent, total_price) 
    VALUES (14, 14, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'), 
        TO_DATE('2024-01-15', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 14), 0, 1400);

    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (1, 1, 1);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (2, 2, 2);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (3, 3, 3);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (4, 4, 4);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (5, 5, 5);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (6, 6, 1);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (7, 7, 2);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (8, 8, 3);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (9, 9, 4);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (10, 10, 5);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (11, 11, 6);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (12, 12, 7);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (13, 13, 8);
    INSERT INTO ROOM_RESERVED (id, reservation_id, room_id)VALUES (14, 14, 9);

    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (1, 1, 1, 1000, TO_DATE('2015-01-15', 'YYYY-MM-DD'), TO_DATE('2015-01-18', 'YYYY-MM-DD'), TO_DATE('2015-01-22', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (2, 2, 2, 1200, TO_DATE('2017-01-30', 'YYYY-MM-DD'), TO_DATE('2017-02-02', 'YYYY-MM-DD'), TO_DATE('2017-02-06', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (3, 3, 3, 800, TO_DATE('2022-02-10', 'YYYY-MM-DD'), TO_DATE('2022-02-13', 'YYYY-MM-DD'), TO_DATE('2022-02-17', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (4, 4, 4, 400, TO_DATE('2023-03-05', 'YYYY-MM-DD'), TO_DATE('2023-03-08', 'YYYY-MM-DD'), TO_DATE('2023-03-12', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (5, 5, 5, 600, TO_DATE('2023-04-07', 'YYYY-MM-DD'), TO_DATE('2023-04-10', 'YYYY-MM-DD'), TO_DATE('2023-04-14', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (6, 10, 6, 200, TO_DATE('2022-05-03', 'YYYY-MM-DD'), TO_DATE('2022-05-06', 'YYYY-MM-DD'), TO_DATE('2022-05-10', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (7, 11, 7, 1500, TO_DATE('2017-06-15', 'YYYY-MM-DD'), TO_DATE('2017-06-18', 'YYYY-MM-DD'), TO_DATE('2017-06-22', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (8, 12, 8, 900, TO_DATE('2015-07-10', 'YYYY-MM-DD'), TO_DATE('2015-07-13', 'YYYY-MM-DD'), TO_DATE('2015-07-17', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (9, 13, 9, 1200, TO_DATE('2022-08-15', 'YYYY-MM-DD'), TO_DATE('2022-08-18', 'YYYY-MM-DD'), TO_DATE('2022-08-22', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (10, 14, 10, 500, TO_DATE('2023-09-05', 'YYYY-MM-DD'), TO_DATE('2023-09-08', 'YYYY-MM-DD'), TO_DATE('2023-09-12', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (11, 6, 11, 1000, TO_DATE('2022-10-10', 'YYYY-MM-DD'), TO_DATE('2022-10-13', 'YYYY-MM-DD'), TO_DATE('2022-10-17', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (12, 7, 12, 1200, TO_DATE('2017-11-15', 'YYYY-MM-DD'), TO_DATE('2017-11-18', 'YYYY-MM-DD'), TO_DATE('2017-11-22', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (13, 8, 13, 800, TO_DATE('2015-12-10', 'YYYY-MM-DD'), TO_DATE('2015-12-13', 'YYYY-MM-DD'), TO_DATE('2015-12-17', 'YYYY-MM-DD'));
    INSERT INTO INVOICES (id, guest_id, reservation_id, invoice_amount, invoice_date, payment_date, due_date) 
    VALUES (14, 9, 14, 1400, TO_DATE('2024-02-15', 'YYYY-MM-DD'),NULL , TO_DATE('2024-02-22', 'YYYY-MM-DD'));


    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (1, 'Great stay!', TO_DATE('2019-01-01', 'YYYY-MM-DD'), 1, 1);
    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (2, 'Good service!', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 2, 1);
    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (3, 'Nice location!', TO_DATE('2018-01-03', 'YYYY-MM-DD'), 3, 2);
    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (4, 'Very clean!', TO_DATE('2020-01-04', 'YYYY-MM-DD'), 4, 2);
    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (5, 'Excellent food!', TO_DATE('2016-01-05', 'YYYY-MM-DD'), 5, 6);
    INSERT INTO REVIEWS (id, message, review_date, guest_id, hotel_id) VALUES (6, 'Comfortable bed!', TO_DATE('2023-01-06', 'YYYY-MM-DD'), 6, 3);

    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END;
    /
