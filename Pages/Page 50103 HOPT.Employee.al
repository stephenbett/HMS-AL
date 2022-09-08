page 50103 "Hosp Employees"
{
    Caption = 'HOSPITAL EMPLOYEES';
    SourceTable = Employee;
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = all;

    layout
    {
        area(Content)
        {
            group("Employee's Details")
            {
                field("No."; "No.")
                {
                    ApplicationArea = ALL;
                }
                field("First Name"; "First Name")
                {
                    ApplicationArea = ALL;
                }
                field("Middle Name"; "Middle Name")
                {
                    ApplicationArea = ALL;
                }
                field(Surname; Surname)
                {
                    ApplicationArea = ALL;
                }
                field("Full Name"; "Full Name")
                {
                    ApplicationArea = All;
                }
                field(Gender; Gender)
                {
                    ApplicationArea = ALL;
                }

                field(Address; Address)
                {
                    ApplicationArea = ALL;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = ALL;
                }
                field("Employee's Job"; "Employee's Job")
                {
                    ApplicationArea = all;
                }
                field(Status; Status)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    var
        Fulname: Codeunit Fullname;


}