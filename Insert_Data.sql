USE HealthcareDB;

-- Inserting Patients
INSERT INTO Patients (Name, Age, Gender, ContactNumber, Disease, AdmissionDate) VALUES
('John Doe', 35, 'Male', '9876543210', 'Flu', '2024-02-10'),
('Jane Smith', 29, 'Female', '9876543220', 'Diabetes', '2024-02-12');

-- Inserting Doctors
INSERT INTO Doctors (Name, Specialization, ContactNumber) VALUES
('Dr. A Kumar', 'Cardiologist', '9876512345'),
('Dr. B Sharma', 'Dermatologist', '9876523456');

-- Inserting Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status) VALUES
(1, 1, '2024-02-15', 'Scheduled'),
(2, 2, '2024-02-16', 'Completed');

-- Inserting Billing Data
INSERT INTO Billing (PatientID, Amount, PaymentStatus) VALUES
(1, 1500.00, 'Paid'),
(2, 2000.00, 'Pending');
