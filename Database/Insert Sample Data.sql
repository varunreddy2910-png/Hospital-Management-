INSERT INTO PATIENT VALUES
(101,'Rahul Sharma','Male','2000-05-10','9876543210','Hyderabad','O+'),
(102,'Priya Reddy','Female','2001-07-15','9876543211','Warangal','A+'),
(103,'Arjun Kumar','Male','1999-12-20','9876543212','Nalgonda','B+');

INSERT INTO DOCTOR VALUES
(201,'Dr. Ramesh','Cardiology','9876500001','ramesh@gmail.com',10),
(202,'Dr. Sita','Neurology','9876500002','sita@gmail.com',8),
(203,'Dr. Ravi','Orthopedics','9876500003','ravi@gmail.com',12);

INSERT INTO APPOINTMENT VALUES
(301,'2026-10-01','10:00:00','Scheduled',101,201),
(302,'2026-10-02','11:00:00','Completed',102,202),
(303,'2026-10-03','09:30:00','Scheduled',103,203),
(304,'2026-10-04','02:00:00','Cancelled',104,204),
(305,'2026-10-05','03:30:00','Scheduled',105,205);

INSERT INTO TREATMENT VALUES
(401,'Heart Checkup','2026-10-01','Regular Checkup',101,201),
(402,'Migraine','2026-10-02','Medication Given',102,202),
(403,'Fracture','2026-10-03','Plaster Applied',103,203);

INSERT INTO PRESCRIPTION VALUES
(501,'Aspirin','1 Tablet','5 Days',401),
(502,'Paracetamol','2 Tablets','3 Days',402),
(503,'Calcium','1 Tablet','30 Days',403);

INSERT INTO BILL VALUES
(601,'2026-10-01',1500,'Paid',101),
(602,'2026-10-02',2500,'Pending',102),
(603,'2026-10-03',3000,'Paid',103);