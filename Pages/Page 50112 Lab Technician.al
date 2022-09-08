page 50112 "Lab Technician"
{
    PageType = List;
    Caption = 'Lab Technician';
    UsageCategory = Administration;
    CardPageId = "Hosp Employees";
    SourceTable = Employee;
    Editable = false;
    SourceTableView = where("Employee's Job" = filter("Lab Technician"));


    layout
    {
        area(content)
        {
            repeater("Lab Technician Information")
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
        if ED."Employee's Job" = ED."Employee's Job"::"Lab Technician"
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
