BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE COUNTRIES (
        id NUMBER PRIMARY KEY,
        country_name VARCHAR2(255) NOT NULL
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE CITIES (
        id NUMBER(4) PRIMARY KEY,
        city_name VARCHAR2(100) NOT NULL,
        postal_code VARCHAR2(10),
        country_id NUMBER(4),
        FOREIGN KEY (country_id) REFERENCES COUNTRIES(id)
    )'; 

    EXECUTE IMMEDIATE 'CREATE TABLE CATEGORIES (
        id NUMBER(4) PRIMARY KEY,
        category_name VARCHAR2(255) NOT NULL
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE GUESTS (
        id NUMBER(10) PRIMARY KEY,
        first_name VARCHAR2(255) NOT NULL,
        last_name VARCHAR2(255) NOT NULL,
        email VARCHAR2(255),
        phone VARCHAR2(15) NOT NULL,
        address VARCHAR2(255),
        details CLOB
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE HOTELS (
        id NUMBER(4) PRIMARY KEY,
        hotel_name VARCHAR2(100) NOT NULL,
        description CLOB,
        phone_number VARCHAR2(10),
        email VARCHAR2(100) NOT NULL,
        category_id NUMBER(4) NOT NULL,
        city_id NUMBER(4) NOT NULL,
        FOREIGN KEY (category_id) REFERENCES CATEGORIES(id),
        FOREIGN KEY (city_id) REFERENCES CITIES(id)
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE REVIEWS (
        id NUMBER(4) PRIMARY KEY,
        message CLOB NOT NULL,
        review_date DATE NOT NULL,
        guest_id NUMBER(4),
        FOREIGN KEY (guest_id) REFERENCES GUESTS(id),
        hotel_id NUMBER(4),
        FOREIGN KEY (hotel_id) REFERENCES HOTELS(id)
    )';

   

    EXECUTE IMMEDIATE 'CREATE TABLE ROOM_TYPE (
        id NUMBER(4) PRIMARY KEY,
        type_name VARCHAR2(255) NOT NULL,
        type_description VARCHAR2(255)
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE ROOMS (
        id NUMBER(4) PRIMARY KEY,
        room_name VARCHAR2(255) NOT NULL,
        hotel_id NUMBER(4),
        FOREIGN KEY (hotel_id) REFERENCES HOTELS(id),
        description CLOB,
        room_price NUMBER(10, 2) NOT NULL,
        room_type_id NUMBER(4),
        FOREIGN KEY (room_type_id) REFERENCES ROOM_TYPE(id),
        additional_features CLOB
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE RESERVATIONS (
        id NUMBER(10) PRIMARY KEY,
        guest_id NUMBER(10),
        FOREIGN KEY (guest_id) REFERENCES GUESTS(id),
        checkin_date DATE NOT NULL,
        checkout_date DATE NOT NULL,
        creation_time TIMESTAMP NOT NULL,
        discount_percent NUMBER(5, 2),
        total_price NUMBER(10, 2) NOT NULL
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE ROOM_RESERVED (
        id NUMBER(10) PRIMARY KEY,
        reservation_id NUMBER(10),
        room_id NUMBER(4),
        FOREIGN KEY (reservation_id) REFERENCES RESERVATIONS(id),
        FOREIGN KEY (room_id) REFERENCES ROOMS(id)
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE INVOICES (
        id NUMBER(10) PRIMARY KEY,
        guest_id NUMBER(10),
        reservation_id NUMBER(10),
        FOREIGN KEY (guest_id) REFERENCES GUESTS(id),
        FOREIGN KEY (reservation_id) REFERENCES RESERVATIONS(id),
        invoice_amount NUMBER(10, 2) NOT NULL,
        invoice_date DATE NOT NULL,
        payment_date DATE,
        due_date DATE NOT NULL
    )';
    EXECUTE IMMEDIATE 'CREATE TABLE ROLES (
        id NUMBER(10) PRIMARY KEY,
        role_name VARCHAR2(255) NOT NULL
    )';

    EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEES (
        id NUMBER(10) PRIMARY KEY,
        first_name VARCHAR2(255) NOT NULL,
        last_name VARCHAR2(255) NOT NULL,
        email VARCHAR2(255),
        role_id NUMBER(10),
        salary NUMBER(10, 2) NOT NULL,
        reports_to NUMBER(10) REFERENCES EMPLOYEES(id),
        FOREIGN KEY (role_id) REFERENCES ROLES(id),
        hotel_id NUMBER,
        FOREIGN KEY (hotel_id) REFERENCES HOTELS(id)
    )';


EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/



