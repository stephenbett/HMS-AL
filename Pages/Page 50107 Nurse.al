page 50107 Nurse
{
    PageType = List;
    Caption = 'Nurse';
    UsageCategory = Administration;
    CardPageId = "Hosp Employees";
    SourceTable = Employee;
    Editable = false;
    SourceTableView = where("Employee's Job" = filter(Nurse));


    layout
    {
        area(content)
        {
            repeater("Nurse Information")
            {
                field("No."; "No.")
                {
                    ToolTip = 'Specifies the value of the Doctor_no field.';
                    ApplicationArea = All;
                }
                field(FullName; FullName)
                {
                    ToolTip = 'Specifies the value of the Full_name field.';
                    ApplicationArea = All;
                }
                // field("First Name"; "First Name")
                // {
                //     ToolTip = 'Specifies the value of the Doctor''s Charge''s field.';
                //     ApplicationArea = All;
                // }
                // field("Middle Name"; "Middle Name")
                // {
                //     ToolTip = 'Specifies the value of the Doctor''s F_Name field.';
                //     ApplicationArea = All;
                // }
                // field(Surname; Surname)
                // {
                //     ToolTip = 'Specifies the value of the Doctor''s M_Name field.';
                //     ApplicationArea = All;
                // }
                field(Gender; Gender)
                {
                    ToolTip = 'Specifies the value of the Doctor''s Specialty field.';
                    ApplicationArea = All;
                }
                field("Phone No."; "Phone No.")
                {
                    ToolTip = 'Specifies the value of the Doctor''s Surname field.';
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ToolTip = 'Specifies the value of the Phone Number field.';
                    ApplicationArea = All;
                }
            }
        }

    }

    var
        EJ: Enum "Hospital Jobs";

    trigger OnOpenPage()
    var
        ED: Record Employee;

    begin
        if ED."Employee's Job" = ED."Employee's Job"::Nurse
         then begin
            ED.Reset();
            ED.SetRange(ED."No.", "No.");
            if ED.FindFirst() then begin
                "First Name" := ED."First Name";
                Gender := ED.Gender;

            end;
            ED.Insert();

        end;

    end;



}


