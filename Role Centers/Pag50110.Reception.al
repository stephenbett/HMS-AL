page 50110 Reception
{
    Caption = 'Reception';
    PageType = RoleCenter;


    layout
    {
        area(RoleCenter)
        {

            part(Part1; headline)
            {
                ApplicationArea = all;
            }



        }


    }

    actions
    {
        area(Sections)
        {
            group(Patients)
            {
                Caption = 'Patients';

                action(PatientsinQueue)
                {
                    Caption = 'Patients in Queue';
                    RunObject = Page "Patient List";
                    ApplicationArea = all;
                }
            }

            group("Hospital Employee")
            {
                Caption = 'Hospital Employee';
                action(HospitalEmployee)
                {
                    Caption = 'Hospital Employee';
                    RunObject = Page "Hospital Employee's";
                    ApplicationArea = all;
                }
                action(Pharamacy)
                {
                    Caption = 'Pharacy';
                    RunObject = Page Pharmacy;
                    ApplicationArea = all;
                }
                action(Nurse)
                {
                    Caption = 'Nurse';
                    RunObject = Page Nurse;
                    ApplicationArea = all;
                }
                action("Lab Technician")
                {
                    Caption = 'Lab Technician';
                    RunObject = Page "Lab Technician";
                    ApplicationArea = all;
                }
            }
        }

        area(Embedding)
        {
            action(PatientList)
            {
                Caption = 'Patient List';
                RunObject = Page "Patient List";
                ApplicationArea = all;
            }
            action(HospitalEmployeeList)
            {
                Caption = 'Hospital Employee List';
                RunObject = Page "Hospital Employee's";
                ApplicationArea = all;
            }
            action(PharamacyList)
            {
                Caption = 'Pharmacy';
                RunObject = Page Pharmacy;
                ApplicationArea = all;
            }
            action(NurseList)
            {
                Caption = 'Nurse List';
                runObject = Page Nurse;
                applicationArea = all;
            }
            action(LabTechnicianList)
            {
                Caption = 'Lab Technician List';
                RunObject = Page "Lab Technician";
                ApplicationArea = all;
            }
            action("Appointment List")
            {
                Caption = 'Appointment List';
                RunObject = Page "Appointment List";
                ApplicationArea = all;
            }
        }



        area(Creation)
        {
            action(AddPatient)
            {
                Caption = 'Regester Patient';
                RunObject = Page "Patient";
                ApplicationArea = all;
            }
            action(AddHospitalEmployee)
            {
                Caption = 'New Hospital Employee';
                RunObject = Page "Hosp Employees";
                ApplicationArea = all;
            }

            action("Appointment Card")
            {
                Caption = ' Create an Appointment Card';
                RunObject = Page "Appointment Card";
                ApplicationArea = all;
            }

        }
    }

}



profile HospitalReceptionist
{
    ProfileDescription = 'Hospital Receptionist';
    RoleCenter = Reception;
    Caption = 'Hospital Receptionist';
}