CREATE DATABASE MedicalStore;
SHOW DATABASES;

USE MedicalStore;

CREATE TABLE Medicines (
    Medicine_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(50),
    Dosage VARCHAR(50),
    Treats_Disease VARCHAR(50),
    Symptoms VARCHAR(100)
);

SELECT * FROM Medicines;

INSERT INTO Medicines (Medicine_ID, Medicine_Name, Dosage, Treats_Disease, Symptoms)
VALUES
(2011, 'Dolo 650', '650 mg', 'Fever', 'High temperature, headache'),
(2012, 'Crocin', '500 mg', 'Cold', 'Runny nose, mild fever'),
(2013, 'Pan D', '40 mg', 'Acidity', 'Heartburn, stomach pain'),
(2014, 'Levocet', '5 mg', 'Allergy', 'Sneezing, itchy eyes'),
(2015, 'Telma', '40 mg', 'High Blood Pressure', 'Dizziness, headache'),
(2016, 'Augmentin', '625 mg', 'Bacterial Infection', 'Fever, sore throat'),
(2017, 'Zifi', '200 mg', 'Typhoid', 'High fever, weakness'),
(2018, 'Combiflam', '400 mg', 'Pain Relief', 'Body pain, swelling'),
(2019, 'Rosuvas', '10 mg', 'High Cholesterol', 'High cholesterol levels'),
(2020, 'Ecosprin', '75 mg', 'Heart Protection', 'Chest discomfort');

ALTER TABLE Medicines
RENAME COLUMN Treats_Disease TO Medicine_Use;

ALTER TABLE Medicines
RENAME COLUMN Symptoms TO Common_Symptoms;

SELECT * FROM Medicines;

UPDATE Medicines
SET Medicine_Use = 'Fever and Body Pain'
WHERE Medicine_ID = 2011;

UPDATE Medicines
SET Medicine_Use = 'Cold and Mild Fever'
WHERE Medicine_ID = 2012;

SELECT * FROM Medicines;


SELECT Medicine_Use, COUNT(*) AS Total_Medicines
FROM Medicines
GROUP BY Medicine_Use;


SELECT Dosage, COUNT(*) AS Total_Medicines
FROM Medicines
GROUP BY Dosage
HAVING COUNT(*) >= 1;

SELECT Medicine_Use, COUNT(*) AS Total
FROM Medicines
GROUP BY Medicine_Use
HAVING COUNT(*) >= 1;

TRUNCATE TABLE Medicines;

DROP TABLE Medicines;