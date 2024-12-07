Create schema HASS;
USE HASS;
----------------------------------------------------------------------------------------------------------------------------------------
create table Patients(
P_ID int primary key,
P_Name varchar(30),
DOB date,
Phone_no varchar(12),
Email varchar(70)
);

INSERT INTO Patients (P_ID, P_Name, DOB, Phone_no, Email) VALUES
(1, 'John Doe', '1980-01-01', '5551234567', 'john.doe@example.com'),
(2, 'Jane Smith', '1990-02-02', '5552345678', 'jane.smith@example.com'),
(3, 'Alice Johnson', '1985-03-03', '5553456789', 'alice.johnson@example.com'),
(4, 'Bob Brown', '1975-04-04', '5554567890', 'bob.brown@example.com'),
(5, 'Charlie Davis', '2000-05-05', '5555678901', 'charlie.davis@example.com'),
(6, 'David Evans', '1995-06-06', '5556789012', 'david.evans@example.com'),
(7, 'Eva White', '1982-07-07', '5557890123', 'eva.white@example.com'),
(8, 'Frank Harris', '1970-08-08', '5558901234', 'frank.harris@example.com'),
(9, 'Grace Clark', '1998-09-09', '5559012345', 'grace.clark@example.com'),
(10, 'Hank Lee', '1983-10-10', '5550123456', 'hank.lee@example.com'),
(11, 'Ivy Lewis', '1993-11-11', '5551230987', 'ivy.lewis@example.com'),
(12, 'Jack King', '1987-12-12', '5552341098', 'jack.king@example.com'),
(13, 'Karen Scott', '1989-01-13', '5553452109', 'karen.scott@example.com'),
(14, 'Larry Young', '1977-02-14', '5554563210', 'larry.young@example.com'),
(15, 'Mia Walker', '2001-03-15', '5555674321', 'mia.walker@example.com'),
(16, 'Nina Hall', '1991-04-16', '5556785432', 'nina.hall@example.com'),
(17, 'Oscar Adams', '1979-05-17', '5557896543', 'oscar.adams@example.com'),
(18, 'Pamela Baker', '1984-06-18', '5558907654', 'pamela.baker@example.com'),
(19, 'Quinn Carter', '1997-07-19', '5559018765', 'quinn.carter@example.com'),
(20, 'Ryan Lopez', '1981-08-20', '5550129876', 'ryan.lopez@example.com'),
(21, 'Sophia Perez', '1994-09-21', '5551230987', 'sophia.perez@example.com'),
(22, 'Tommy Sanchez', '1986-10-22', '5552341098', 'tommy.sanchez@example.com'),
(23, 'Uma Mitchell', '1992-11-23', '5553452109', 'uma.mitchell@example.com'),
(24, 'Victor Roberts', '1978-12-24', '5554563210', 'victor.roberts@example.com'),
(25, 'Wendy Johnson', '2002-01-25', '5555674321', 'wendy.johnson@example.com'),
(26, 'Xander Murphy', '1996-02-26', '5556785432', 'xander.murphy@example.com'),
(27, 'Yara Diaz', '1988-03-27', '5557896543', 'yara.diaz@example.com'),
(28, 'Zachary Evans', '1990-04-28', '5558907654', 'zachary.evans@example.com'),
(29, 'Aiden Wood', '1999-05-29', '5559018765', 'aiden.wood@example.com'),
(30, 'Bella Green', '1985-06-30', '5550129876', 'bella.green@example.com'),
(31, 'Carter Baker', '2003-07-01', '5551230987', 'carter.baker@example.com'),
(32, 'Daniel Perez', '1976-08-02', '5552341098', 'daniel.perez@example.com'),
(33, 'Emma Collins', '1983-09-03', '5553452109', 'emma.collins@example.com'),
(34, 'Fiona Ward', '1992-10-04', '5554563210', 'fiona.ward@example.com'),
(35, 'George Bell', '1980-11-05', '5555674321', 'george.bell@example.com');


select * from Patients;
----------------------------------------------------------------------------------------------------------------------------------------
create table Doctors(
D_ID int primary key,
D_Name varchar(30),
Speciality varchar(50),
Phone_no varchar(12),
Email varchar(70)
);
INSERT INTO Doctors (D_ID, D_Name, Speciality, Phone_no, Email) VALUES
(1, 'Dr. Alice Johnson', 'Cardiology', '5551234567', 'alice.johnson@example.com'),
(2, 'Dr. Bob Williams', 'Dermatology', '5552345678', 'bob.williams@example.com'),
(3, 'Dr. Carol Brown', 'Neurology', '5553456789', 'carol.brown@example.com'),
(4, 'Dr. David Smith', 'Pediatrics', '5554567890', 'david.smith@example.com'),
(5, 'Dr. Emma Davis', 'Orthopedics', '5555678901', 'emma.davis@example.com'),
(6, 'Dr. Frank Harris', 'Oncology', '5556789012', 'frank.harris@example.com'),
(7, 'Dr. Grace Clark', 'Psychiatry', '5557890123', 'grace.clark@example.com'),
(8, 'Dr. Hank Lee', 'Ophthalmology', '5558901234', 'hank.lee@example.com'),
(9, 'Dr. Ivy Lewis', 'Radiology', '5559012345', 'ivy.lewis@example.com'),
(10, 'Dr. Jack King', 'Gastroenterology', '5550123456', 'jack.king@example.com');
select * from Doctors;
-------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Appointments(
A_ID int primary key,
P_ID int ,
D_ID int,
Appointment Datetime,
Status varchar(20)
);
alter table Appointments add constraint FK_Appointment_Patients foreign key (P_ID) references Patients(P_ID);
alter table Appointments add constraint FK_Appointments_Doctors foreign key (D_ID)  references Doctors(D_ID);
Show  columns from Appointments;
INSERT INTO Appointments (A_ID, P_ID, D_ID, Appointment, Status) VALUES
(1, 1, 1, '2024-01-01 09:00:00', 'Scheduled'),
(2, 2, 2, '2024-01-02 10:00:00', 'Completed'),
(3, 3, 3, '2024-01-03 11:00:00', 'Cancelled'),
(4, 4, 4, '2024-01-04 12:00:00', 'Scheduled'),
(5, 5, 5, '2024-01-05 13:00:00', 'Completed'),
(6, 6, 6, '2024-01-06 14:00:00', 'Scheduled'),
(7, 7, 7, '2024-01-07 15:00:00', 'Cancelled'),
(8, 8, 8, '2024-01-08 16:00:00', 'Scheduled'),
(9, 9, 9, '2024-01-09 17:00:00', 'Completed'),
(10, 10, 10, '2024-01-10 18:00:00', 'Scheduled'),
(11, 11, 1, '2024-01-11 09:00:00', 'Cancelled'),
(12, 12, 2, '2024-01-12 10:00:00', 'Scheduled'),
(13, 13, 3, '2024-01-13 11:00:00', 'Completed'),
(14, 14, 4, '2024-01-14 12:00:00', 'Scheduled'),
(15, 15, 5, '2024-01-15 13:00:00', 'Cancelled'),
(16, 16, 6, '2024-01-16 14:00:00', 'Scheduled'),
(17, 17, 7, '2024-01-17 15:00:00', 'Completed'),
(18, 18, 8, '2024-01-18 16:00:00', 'Scheduled'),
(19, 19, 9, '2024-01-19 17:00:00', 'Cancelled'),
(20, 20, 10, '2024-01-20 18:00:00', 'Scheduled'),
(21, 21, 1, '2024-01-21 09:00:00', 'Completed'),
(22, 22, 2, '2024-01-22 10:00:00', 'Scheduled'),
(23, 23, 3, '2024-01-23 11:00:00', 'Cancelled'),
(24, 24, 4, '2024-01-24 12:00:00', 'Scheduled'),
(25, 25, 5, '2024-01-25 13:00:00', 'Completed'),
(26, 26, 6, '2024-01-26 14:00:00', 'Scheduled'),
(27, 27, 7, '2024-01-27 15:00:00', 'Cancelled'),
(28, 28, 8, '2024-01-28 16:00:00', 'Scheduled'),
(29, 29, 9, '2024-01-29 17:00:00', 'Completed'),
(30, 30, 10, '2024-01-30 18:00:00', 'Scheduled'),
(31, 31, 1, '2024-01-31 09:00:00', 'Cancelled'),
(32, 32, 2, '2024-02-01 10:00:00', 'Scheduled'),
(33, 33, 3, '2024-02-02 11:00:00', 'Completed'),
(34, 34, 4, '2024-02-03 12:00:00', 'Scheduled'),
(35, 35, 5, '2024-02-04 13:00:00', 'Cancelled');


----------------------------------------------------------------------------------------------------------------------------------------
create table MedicalHistory(
MH_ID int primary key,
P_ID int,Medical_Condition varchar (200),
Last_visit Date,Notes Varchar (500)
);
Alter table MedicalHistory add constraint FK_MedicalHistory_Patients foreign key (P_ID) references Patients(P_ID);
INSERT INTO MedicalHistory (MH_ID, P_ID, Medical_Condition, Last_visit, Notes) VALUES
(1, 1, 'Hypertension', '2023-01-01', 'Under control with medication'),
(2, 1, 'Diabetes', '2023-02-02', 'Regular check-ups required'),
(3, 2, 'Asthma', '2023-03-03', 'Inhaler needed for allergies'),
(4, 2, 'Arthritis', '2023-04-04', 'Physical therapy ongoing'),
(5, 3, 'Obesity', '2023-05-05', 'Diet and exercise plan in place'),
(6, 3, 'Chronic bronchitis', '2023-06-06', 'Prescribed bronchodilators'),
(7, 4, 'Migraine', '2023-07-07', 'Prescription medication helps'),
(8, 4, 'Depression', '2023-08-08', 'Counseling and medication'),
(9, 5, 'Anemia', '2023-09-09', 'Iron supplements prescribed'),
(10, 5, 'Hyperthyroidism', '2023-10-10', 'Regular monitoring needed'),
(11, 6, 'Chronic kidney disease', '2023-11-11', 'Dialysis needed twice weekly'),
(12, 6, 'Hepatitis C', '2023-12-12', 'Antiviral treatment ongoing'),
(13, 7, 'Heart disease', '2023-01-13', 'Medication and lifestyle changes'),
(14, 7, 'Epilepsy', '2023-02-14', 'Anti-seizure medications taken daily'),
(15, 8, 'Psoriasis', '2023-03-15', 'Topical treatments help manage symptoms'),
(16, 8, 'Scoliosis', '2023-04-16', 'Physical therapy recommended'),
(17, 9, 'COPD', '2023-05-17', 'Oxygen therapy as needed'),
(18, 9, 'Celiac disease', '2023-06-18', 'Gluten-free diet followed'),
(19, 10, 'Parkinson’s disease', '2023-07-19', 'Medication helps manage symptoms'),
(20, 10, 'Multiple sclerosis', '2023-08-20', 'Disease-modifying therapies ongoing'),
(21, 11, 'Schizophrenia', '2023-09-21', 'Medication and therapy sessions'),
(22, 11, 'Alzheimer’s disease', '2023-10-22', 'Supportive care and medication'),
(23, 12, 'Leukemia', '2023-11-23', 'Chemotherapy in progress'),
(24, 12, 'Lupus', '2023-12-24', 'Immunosuppressive drugs prescribed'),
(25, 13, 'Fibromyalgia', '2023-01-25', 'Pain management strategies in place'),
(26, 13, 'Gout', '2023-02-26', 'Medication and dietary changes'),
(27, 14, 'AIDS', '2023-03-27', 'Antiretroviral therapy ongoing'),
(28, 14, 'Glaucoma', '2023-04-28', 'Eye drops and regular check-ups'),
(29, 15, 'Osteoporosis', '2023-05-29', 'Calcium and vitamin D supplements'),
(30, 15, 'Irritable bowel syndrome', '2023-06-30', 'Dietary management'),
(31, 16, 'Bipolar disorder', '2023-07-01', 'Mood stabilizers and therapy'),
(32, 16, 'Eczema', '2023-08-02', 'Moisturizers and topical steroids'),
(33, 17, 'Pancreatitis', '2023-09-03', 'Hospitalization and IV fluids'),
(34, 17, 'Sinusitis', '2023-10-04', 'Antibiotics and nasal sprays'),
(35, 18, 'Stroke', '2023-11-05', 'Rehabilitation and medications');

------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table Appoint_Slot(
Slot_ID int primary key,
D_ID int,Slot datetime,
Status varchar (30),
foreign key (D_ID) references Doctors(D_ID)
);
INSERT INTO Appoint_Slot (Slot_ID, D_ID, Slot, Status) VALUES
(1, 1, '2024-01-01 09:00:00', 'Available'),
(2, 1, '2024-01-01 10:00:00', 'Booked'),
(3, 1, '2024-01-01 11:00:00', 'Available'),
(4, 1, '2024-01-01 12:00:00', 'Booked'),
(5, 2, '2024-01-02 09:00:00', 'Available'),
(6, 2, '2024-01-02 10:00:00', 'Booked'),
(7, 2, '2024-01-02 11:00:00', 'Available'),
(8, 2, '2024-01-02 12:00:00', 'Booked'),
(9, 3, '2024-01-03 09:00:00', 'Available'),
(10, 3, '2024-01-03 10:00:00', 'Booked'),
(11, 3, '2024-01-03 11:00:00', 'Available'),
(12, 3, '2024-01-03 12:00:00', 'Booked'),
(13, 4, '2024-01-04 09:00:00', 'Available'),
(14, 4, '2024-01-04 10:00:00', 'Booked'),
(15, 4, '2024-01-04 11:00:00', 'Available'),
(16, 4, '2024-01-04 12:00:00', 'Booked'),
(17, 5, '2024-01-05 09:00:00', 'Available'),
(18, 5, '2024-01-05 10:00:00', 'Booked'),
(19, 5, '2024-01-05 11:00:00', 'Available'),
(20, 5, '2024-01-05 12:00:00', 'Booked'),
(21, 6, '2024-01-06 09:00:00', 'Available'),
(22, 6, '2024-01-06 10:00:00', 'Booked'),
(23, 6, '2024-01-06 11:00:00', 'Available'),
(24, 6, '2024-01-06 12:00:00', 'Booked'),
(25, 7, '2024-01-07 09:00:00', 'Available'),
(26, 7, '2024-01-07 10:00:00', 'Booked'),
(27, 7, '2024-01-07 11:00:00', 'Available'),
(28, 7, '2024-01-07 12:00:00', 'Booked'),
(29, 8, '2024-01-08 09:00:00', 'Available'),
(30, 8, '2024-01-08 10:00:00', 'Booked'),
(31, 8, '2024-01-08 11:00:00', 'Available'),
(32, 8, '2024-01-08 12:00:00', 'Booked'),
(33, 9, '2024-01-09 09:00:00', 'Available'),
(34, 9, '2024-01-09 10:00:00', 'Booked'),
(35, 9, '2024-01-09 11:00:00', 'Available');
select * from Appoint_Slot;
---------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER !!
CREATE PROCEDURE Slot_Layout()
BEGIN
	select P.P_ID,P.P_Name,D.D_Name,A.Slot,A.Status
	from Patients  as P
	inner join Appoint_Slot as A on A.Slot_ID=P.P_ID
	inner join Doctors as D on D.D_ID = A.D_ID;

END;
!! DELIMITER ;


DELIMITER !!
 CREATE PROCEDURE Patient_Medical_History()
 BEGIN
	SELECT p.P_ID,m.Medical_Condition,m.Notes,m.Last_visit
    FROM Patients as p
    iNNER JOIN medicalhistory as m on p.P_ID = m.MH_ID;
 END ;
 !! DELIMITER ;
 
 
 DELIMITER !!
 CREATE PROCEDURE  Appointment_Status(IN S VARCHAR(50))
 BEGIN
	SELECT D.D_Name,P.P_Name,A.Appointment,A.Status 
    from Appointments as A
    inner join Doctors as D on D.D_ID=A.D_ID
    inner join Patients as P on P.P_ID=A.A_ID
    where A.Status=S;
 END;
 !! DELIMITER ;
 
 DELIMITER !!
 CREATE PROCEDURE Doctor_Patient(IN N VARCHAR(50))
 BEGIN
	SELECT P.P_Name,D.D_Name,M.Medical_Condition,M.Notes
    FROM MedicalHistory as M
    inner join Patients as P on P.P_ID=M.P_ID
    inner join Doctors as D ON M.MH_ID=D.D_ID
    WHERE P_Name=N;
 END;
 !! DELIMITER ;
 
 
 DELIMITER !!
 CREATE PROCEDURE Patient_Count()
 BEGIN
	SELECT D.D_Name, COUNT(A.P_ID) AS PatientCount
	FROM Doctors AS D
	INNER JOIN Appointments AS A ON D.D_ID = A.D_ID
	GROUP BY D.D_Name
	ORDER BY PatientCount DESC;
 END;
 !! DELIMITER ;
 DELIMITER !!
 CREATE PROCEDURE Patient_Count()
 BEGIN
	SELECT D.D_Name, COUNT(A.P_ID) AS PatientCount
	FROM Doctors AS D
	INNER JOIN Appointments AS A ON D.D_ID = A.D_ID
	GROUP BY D.D_Name
	ORDER BY PatientCount DESC;
 END;
 !! DELIMITER ;
 DELIMITER !!
 CREATE PROCEDURE Patient_Phone(IN phone varchar(12))
 BEGIN
	SELECT P_Name,DOB,Phone_no
	FROM Patients
	Where Phone_no=phone;
 END;
 !! DELIMITER ;
 
  DELIMITER !!
 CREATE PROCEDURE Medical_Condition()
 BEGIN
	SELECT P.P_Name, P.DOB, P.Phone_no, P.Email, M.Medical_Condition
FROM Patients AS P
INNER JOIN MedicalHistory AS M ON P.P_ID = M.P_ID
WHERE M.Medical_Condition = 'Diabetes';

 END;
 !! DELIMITER ;
-----------------------------------------------------------------------------------------------------------------------------------------------------
//CallbyProdecures
call Doctor_Patient
CALL Slot_Layout()
CALL Patient_Medical_History()
CALL Appointment_Status("Scheduled") 
CALL Doctor_Patient('Bob Brown')
CALL Patient_Count()
Call Patient_Phone(5552345678)
CALL Medical_Condition()