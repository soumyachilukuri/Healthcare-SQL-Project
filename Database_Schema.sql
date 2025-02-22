CREATE DATABASE HealthcareDB;
USE HealthcareDB;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    ContactNumber VARCHAR(15),
    Disease VARCHAR(100),
    AdmissionDate DATE
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    ContactNumber VARCHAR(15)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Billing (
    BillID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    Amount DECIMAL(10,2),
    PaymentStatus ENUM('Paid', 'Pending'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
