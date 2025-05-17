-- Dropping the tables in case they already exist
DROP TABLE DONATION CASCADE CONSTRAINTS;
DROP TABLE BIKE CASCADE CONSTRAINTS;
DROP TABLE DONOR CASCADE CONSTRAINTS;
DROP TABLE VOLUNTEER CASCADE CONSTRAINTS;

-- Table creation section
-- Creating VOLUNTEER table
CREATE TABLE VOLUNTEER(
    VOL_ID VARCHAR2(250) PRIMARY KEY,
    VOL_FNAME VARCHAR2(250) NOT NULL,
    VOL_SNAME VARCHAR2(250) NOT NULL,
    CONTACT VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(100)
);

-- Creating DONOR table
CREATE TABLE DONOR (
    DONOR_ID VARCHAR2(250) PRIMARY KEY,
    DONOR_FNAME VARCHAR2(250) NOT NULL,
    DONOR_LNAME VARCHAR2(250) NOT NULL,    
    CONTACT_NO VARCHAR2(20) NOT NULL,  
    EMAIL VARCHAR2(100)
);

-- Creating BIKE table
CREATE TABLE BIKE (
    BIKE_ID VARCHAR2(250) PRIMARY KEY,
    DESCRIPTION VARCHAR2(250) NOT NULL,
    BIKE_TYPE VARCHAR2(250) NOT NULL, 
    MANUFACTURER VARCHAR2(100)
);

-- Creating DONATION table
CREATE TABLE DONATION (
    DONATION_ID NUMBER PRIMARY KEY,
    DONOR_ID VARCHAR2(250) NOT NULL,
    BIKE_ID VARCHAR2(250) NOT NULL,
    VALUE NUMBER(10,2) NOT NULL, 
    VOL_ID VARCHAR2(250) NOT NULL,
    DONATION_DATE DATE NOT NULL,
    CONSTRAINT FK_DONATION_DONOR FOREIGN KEY (DONOR_ID) REFERENCES DONOR(DONOR_ID),
    CONSTRAINT FK_DONATION_BIKE FOREIGN KEY (BIKE_ID) REFERENCES BIKE(BIKE_ID),
    CONSTRAINT FK_DONATION_VOLUNTEER FOREIGN KEY (VOL_ID) REFERENCES VOLUNTEER(VOL_ID)
);

--Table insertion section
-- Inserting into VOLUNTEER
INSERT INTO VOLUNTEER(VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL)
VALUES ('vol101', 'Kenny', 'Temba', '0677277521', '10 Sands Road', 'kennyt@bikerus.com');

INSERT INTO VOLUNTEER(VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL)
VALUES ('vol102', 'Mamelodi', 'Marks', '0737377522', '20 Langes Street', 'mamelodim@bikerus.com');

INSERT INTO VOLUNTEER(VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL)
VALUES ('vol103', 'Ada', 'Andrews', '0817117523', '31 Williams Street', 'adanyaa@bikerus.com');

INSERT INTO VOLUNTEER(VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL)
VALUES ('vol104', 'Evans', 'Tambala', '0697215244', '1 Free Road', 'evanst@bikerus.com');

INSERT INTO VOLUNTEER(VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL)
VALUES ('vol105', 'Xolani', 'Samson', '0727122255', '12 main road', 'xolanis@bikerus.com');

-- Inserting into DONOR
INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID11', 'Jeff', 'Wanya', '0827172250', 'wanyajeff@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID12', 'Sthembeni', 'Pisho', '0837865670', 'sthepisho@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID13', 'James', 'Temba', '0878978650', 'jimmy@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID14', 'Luramo', 'Misi', '0826575650', 'luramom@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID15', 'Abraham', 'Xolani', '0797656430', 'axolani@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID16', 'Rumi', 'Jones', '0668899221', 'rjones@true.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID17', 'Xolani', 'Redo', '0614553389', 'xredo@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID18', 'Tenny', 'Star', '0824228870', 'tenstars@true.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID19', 'Tiny', 'Rambo', '0715554333', 'trambo@ymail.com');

INSERT INTO DONOR(DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
VALUES ('DID20', 'Yannick', 'Leons', '0615554323', 'yleons@true.com');

-- Inserting into BIKE table
INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B001', 'BMX AX1', 'Road Bike', 'BMX');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B002', 'Giant Domain 1', 'Road Bike', 'Giant');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B003', 'Ascent 26In', 'Mountain Bike', 'Raleigh');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B004', 'Canyon 6X', 'Kids Bike', 'Canyon');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B005', 'Marvel', 'Gravel Road Bike', 'BMX');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B006', 'Mountain 21 Speed', 'Mountain Bike', 'BMX');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B007', 'Canyon Roadster', 'Road Bike', 'BMX');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B008', 'Legion 101', 'Hybrid Bike', 'BMX');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B009', 'Madonna 9', 'Road Bike', 'Trek');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B010', 'Comp 2022', 'Mountain Bike', 'Trek');

INSERT INTO BIKE(BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER)
VALUES ('B011', 'BMX AX15', 'Road Bike', 'BMX');

-- Inserting into DONATION table
INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (1, 'DID11', 'B001', 1500, 'vol101', TO_DATE('1-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (2, 'DID12', 'B002', 2500, 'vol101', TO_DATE('3-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (3, 'DID13', 'B003', 1000, 'vol103', TO_DATE('3-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (4, 'DID14', 'B004', 1750, 'vol105', TO_DATE('5-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (5, 'DID15', 'B001', 2000, 'vol101', TO_DATE('7-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (6, 'DID16', 'B001', 1800, 'vol105', TO_DATE('9-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (7, 'DID17', 'B001', 1500, 'vol101', TO_DATE('15-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (8, 'DID18', 'B001', 1500, 'vol103', TO_DATE('19-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (9, 'DID12', 'B001', 2500, 'vol103', TO_DATE('25-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (10, 'DID20', 'B001', 3500, 'vol105', TO_DATE('5-May-2023', 'DD-Mon-YYYY'));

INSERT INTO DONATION(DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOL_ID, DONATION_DATE)
VALUES (11, 'DID19', 'B001', 2500, 'vol103', TO_DATE('30-May-2023', 'DD-Mon-YYYY'));


SELECT * FROM VOLUNTEER;
SELECT * FROM DONOR;
SELECT * FROM BIKE;
SELECT * FROM DONATION;


SELECT 
    d.DONOR_ID,
    b.BIKE_TYPE,
    b.DESCRIPTION AS BIKE_DESCRIPTION,
    dn.VALUE AS BIKE_VALUE
FROM 
    DONATION dn
JOIN 
    DONOR d ON dn.DONOR_ID = d.DONOR_ID
JOIN 
    BIKE b ON dn.BIKE_ID = b.BIKE_ID
WHERE 
    dn.VALUE > 1500;

-- Declare a constant for the VAT rate
VARIABLE VAT_RATE NUMBER;
EXEC :VAT_RATE := 0.15;

SELECT 
    DESCRIPTION AS "BIKE DESCRIPTION",
    MANUFACTURER AS "BIKE MANUFACTURER",
    BIKE_TYPE AS "BIKE TYPE",
    VALUE AS "VALUE",
    ROUND(VALUE * :VAT_RATE, 2) AS "VAT",
    ROUND(VALUE * (1 + :VAT_RATE), 2) AS "TOTAL AMNT"
FROM 
    BIKE
JOIN 
    DONATION ON BIKE.BIKE_ID = DONATION.BIKE_ID
WHERE 
    BIKE_TYPE = 'Road Bike';


CREATE OR REPLACE VIEW vwBikeRUs AS
SELECT 
    (DONOR.DONOR_FNAME || ' ' || DONOR.DONOR_LNAME) AS "DONOR NAME",
    DONOR.CONTACT_NO AS "CONTACT NUMBER",
    BIKE.BIKE_TYPE AS "BIKE TYPE",
    DONATION.DONATION_DATE AS "DONATION DATE"
FROM 
    DONOR
JOIN 
    DONATION ON DONOR.DONOR_ID = DONATION.DONOR_ID
JOIN 
    BIKE ON DONATION.BIKE_ID = BIKE.BIKE_ID
WHERE 
    DONATION.VOL_ID = 'vol105';
    
SELECT * FROM vwBikeRUs;


CREATE OR REPLACE PROCEDURE spDonorDetails(p_bike_id IN VARCHAR2)
IS
    v_donor_name VARCHAR2(100);
    v_contact_no VARCHAR2(20);
    v_vol_fname VARCHAR2(50);
    v_description VARCHAR2(100);
    v_donation_date DATE;
BEGIN
    -- Retrieve the donor details
    SELECT d.DONOR_FNAME, d.CONTACT_NO, v.VOL_FNAME, b.DESCRIPTION, dn.DONATION_DATE
    INTO v_donor_name, v_contact_no, v_vol_fname, v_description, v_donation_date
    FROM DONOR d
    JOIN DONATION dn ON d.DONOR_ID = dn.DONOR_ID
    JOIN BIKE b ON dn.BIKE_ID = b.BIKE_ID
    JOIN VOLUNTEER v ON dn.VOL_ID = v.VOL_ID
    WHERE b.BIKE_ID = p_bike_id;

    -- Display the output
    DBMS_OUTPUT.PUT_LINE('ATTENTION: ' || v_donor_name || ' assisted by: ' || v_vol_fname ||
                         ', donated the ' || v_description || ' on the ' || 
                         TO_CHAR(v_donation_date, 'DD/MON/YY'));
    DBMS_OUTPUT.PUT_LINE('Contact Number: ' || v_contact_no);

EXCEPTION
    -- Handle case when no data is found for the given Bike ID
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found for the given Bike ID.');
    -- Catch any other exceptions that may occur and display an error message
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred while retrieving the donor details: ' || SQLERRM);
END;
/

-- Code to execute the procedure for Bike ID 'B004'
BEGIN
    spDonorDetails('B004');
END;
/

-- Creating function to calculate total donation value including VAT for a specific donor
CREATE OR REPLACE FUNCTION fn_TotalDonationWithVAT (
    p_donor_id IN VARCHAR2
) RETURN NUMBER IS
    -- Declare variables to hold donation value and VAT rate
    v_total_value NUMBER := 0;
    v_vat_rate NUMBER := 0.15;
    v_total_with_vat NUMBER;
BEGIN
    -- Calculate the total donation value for the specified donor
    SELECT SUM(VALUE) INTO v_total_value
    FROM DONATION
    WHERE DONOR_ID = p_donor_id;

    -- Apply VAT to the total donation value
    v_total_with_vat := v_total_value * (1 + v_vat_rate);

    -- Return the total amount including VAT
    RETURN v_total_with_vat;

EXCEPTION
    -- Handle case when no donation records are found for the given donor ID
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No donation records found for the given Donor ID.');
        RETURN 0;
    -- Catch any other exceptions that may occur
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred while calculating the total donation with VAT: ' || SQLERRM);
        RETURN 0;
END fn_TotalDonationWithVAT;
/



DECLARE
    -- Variable to hold the result from the function
    v_total_with_vat NUMBER;
BEGIN
    -- Call the function with a specific donor ID and store the result
    v_total_with_vat := fn_TotalDonationWithVAT('DID11');

    -- Display the result
    IF v_total_with_vat > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Total donation amount including VAT for Donor ID DID11: ' || TO_CHAR(v_total_with_vat, 'FM9990.00'));
    END IF;

EXCEPTION
    -- Handle any exceptions that may occur
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred during execution: ' || SQLERRM);
END;
/

-- Output display
SET SERVEROUTPUT ON;

DECLARE
    -- Variable to hold the result from the function
    v_total_with_vat NUMBER;
BEGIN
    -- Call the function with a specific donor ID and store the result
    v_total_with_vat := fn_TotalDonationWithVAT('DID11');

    -- Check if the function returned a positive value and display the result
    IF v_total_with_vat > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Total donation amount including VAT for Donor ID DID11: ' || TO_CHAR(v_total_with_vat, 'FM9990.00'));
    ELSE
        DBMS_OUTPUT.PUT_LINE('No donation records found or total is zero for the specified Donor ID.');
    END IF;

EXCEPTION
    -- Handle any unexpected errors that may occur
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred during execution: ' || SQLERRM);
END;
/

SET SERVEROUTPUT ON;
DECLARE
    v_bike_id BIKE.BIKE_ID%TYPE;
    v_bike_type BIKE.BIKE_TYPE%TYPE;
    v_manufacturer BIKE.MANUFACTURER%TYPE;
    v_value DONATION.VALUE%TYPE;
    v_status VARCHAR2(10);
BEGIN
    FOR rec IN (
        SELECT 
            B.BIKE_ID, 
            B.BIKE_TYPE, 
            B.MANUFACTURER, 
            D.VALUE
        FROM 
            BIKE B
        JOIN 
            DONATION D ON B.BIKE_ID = D.BIKE_ID
    ) LOOP
        v_bike_id := rec.BIKE_ID;
        v_bike_type := rec.BIKE_TYPE;
        v_manufacturer := rec.MANUFACTURER;
        v_value := rec.VALUE;

        -- Use IF statement to determine status
        IF v_value > 3000 THEN
            v_status := '*';
        ELSIF v_value > 1500 THEN
            v_status := '**';
        ELSIF v_value > 0 THEN
            v_status := '***';
        ELSE
            v_status := 'No Value';
        END IF;

        -- Output the result in the desired format
        DBMS_OUTPUT.PUT_LINE('BIKE ID:           ' || v_bike_id);
        DBMS_OUTPUT.PUT_LINE('BIKE TYPE:         ' || v_bike_type);
        DBMS_OUTPUT.PUT_LINE('BIKE MANUFACTURER: ' || v_manufacturer);
        DBMS_OUTPUT.PUT_LINE('BIKE VALUE:        ' || v_value);
        DBMS_OUTPUT.PUT_LINE('STATUS:            ' || v_status);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    END LOOP;
END;
/

--Question 8
SELECT 
    B.BIKE_ID AS "BIKE ID",
    B.BIKE_TYPE AS "BIKE TYPE",
    B.MANUFACTURER AS "BIKE MANUFACTURER",
    D.VALUE AS "BIKE VALUE",
    -- Determine the status based on the bike value
    CASE 
        WHEN D.VALUE > 3000 THEN '***'
        WHEN D.VALUE > 1500 THEN '**'
        WHEN D.VALUE > 0 THEN '*'
        ELSE 'No Value'
    END AS "STATUS"
FROM 
    BIKE B
JOIN 
    DONATION D ON B.BIKE_ID = D.BIKE_ID  
ORDER BY 
    B.BIKE_ID; 
    

--Drop User if exists
DROP USER C##Banele CASCADE;

--Create User
CREATE USER C##Banele IDENTIFIED BY Summative123;

--Grant necessary privileges
GRANT CREATE SESSION TO C##Banele;
GRANT CREATE TABLE TO C##Banele;
GRANT CREATE VIEW TO C##Banele;
GRANT CREATE PROCEDURE TO C##Banele;
GRANT CREATE SEQUENCE TO C##Banele;
GRANT CREATE TRIGGER TO C##Banele;

--Grant quota on the USERS tablespace
ALTER USER C##Banele QUOTA UNLIMITED ON USERS;

--Create the Donation Table
CREATE TABLE C##Banele.DONATION AS 
SELECT * FROM SYS.DONATION;

--Create the Trigger to prevent deletions
CREATE OR REPLACE TRIGGER prevent_donation_deletion
BEFORE DELETE ON C##Banele.DONATION
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Deletion from the DONATION table is not allowed.');
END;
/
DELETE FROM C##Banele.DONATION WHERE DONATION_ID = 2; 

--Create the Trigger to check bike value
CREATE OR REPLACE TRIGGER check_valid_bike_value
BEFORE UPDATE ON C##Banele.DONATION
FOR EACH ROW
BEGIN
    -- Check if the BIKE_VALUE is being updated to an invalid amount
    IF :NEW.VALUE <= 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Bike value must be greater than 0.');
    END IF;
END;
/

-- Attempt to update a donation record with an invalid bike value
-- Test with a valid update
UPDATE C##Banele.DONATION
SET BIKE_VALUE = 1000
WHERE DONATION_ID= 3;  
-- Test with an invalid update
UPDATE C##Banele.DONATION
SET BIKE_VALUE = 0
WHERE DONATION_ID = 1;  SET BIKE_VALUE = 0


    