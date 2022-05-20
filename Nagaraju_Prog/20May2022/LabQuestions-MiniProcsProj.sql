a. Student: (Dinesh)
    admno,
    studentname,
    course,
    fee
    
   Insert Validation: STU_INSERT
    1. Student should not be there
    2. Name, course and fee is mandatory
    3. Valid course are SQL, PLSQL, JAVA, MF
    4. FEE should be morethan 10000
   Update Validation:  STU_UPDATE_FEE
    1. Student should be there.
    2. FEE should be morethan 10000
   Delete Validation:  STU_DELETE
    1. Student should be there. 
   Update Validation:  STU_UPDATE_DOJ
    1. Student should be there.
    2. DOJ should be <= today date
   Update Validations: STU_UPDATE_ALL
    1. Student should be there
    2. Name, course and fee is mandatory
    3. Valid course are SQL, PLSQL, JAVA, MF
    4. FEE should be morethan 10000
-----------------------------------------------
b.Hospital: (RamaKrishna)
    DoctorId,
    DoctorName,
    Specialization,
    salary

c. Patients: (HARI)
    PatientId,
    PatientName,
    Disease,
    doctorname,
    amountperday

1. Create table
2. Insert 2 rows manually
3. Insert through Procedure STU_INSERT
4. Update through procedure (a. Update Fee, b. Update Salary, c. Update amountperday) STU_UPDATE_FEE
5. Update through Procedure STU_DELETE

1. Add Number column in the table
    a. Date of Joining (Student)
    b. Date of Joining (Doctors)
    c. Date of Joining (Patients)
2. Modify the Insert procedure for New column insert.
3. Create new procedure for Update Date of Joining. (a. Update Date of Joining,
    b. Update Date of Joining, c. Update Date of Joining) STU_UPDATE_DOJ
4. Create new procedure for Update all columns. STU_UPATE_ALL