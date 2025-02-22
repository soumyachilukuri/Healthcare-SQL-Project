USE HealthcareDB;

-- Get all patient details
SELECT * FROM Patients;

-- Find all doctors specialized in 'Cardiology'
SELECT * FROM Doctors WHERE Specialization = 'Cardiologist';

-- Count the number of appointments for each doctor
SELECT DoctorID, COUNT(*) AS TotalAppointments FROM Appointments GROUP BY DoctorID;

-- Get all pending bills
SELECT * FROM Billing WHERE PaymentStatus = 'Pending';

-- Find patients who have appointments scheduled
SELECT p.Name, a.AppointmentDate, d.Name AS DoctorName
FROM Patients p
JOIN Appointments a ON p.PatientID = a.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.Status = 'Scheduled';
