page 50109 Pharmacy
{
    PageType = List;
    Caption = 'Pharmacy';
    UsageCategory = Administration;
    CardPageId = "Hosp Employees";
    SourceTable = Employee;
    SourceTableView = where("Employee's Job" = filter(Pharmacy));
    Editable = false;

    layout
    {

        area(content)
        {
            repeater("Pharamcy Information")
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

    actions
    {
        area(Processing)
        {
            action(Pharacy)
            {
                // ApplicationArea = All;
                // Caption = 'Pharmacist List';
                // Promoted = true;
                // PromotedCategory = Process;
                // PromotedIsBig = true;
                // Runobject = Page "Hospital Employee's";
                // RunPageLink = "Employee's Job" = const(Pharmacy);
            }
        }


    }
    var
        EMj: Enum "Hospital Jobs";
    // emq: Employee;
    trigger OnOpenPage()
    var
        Emp: Record Employee;
    begin

        if Emp."Employee's Job" = Emp."Employee's Job"::Pharmacy then begin
            Emp.Reset();
            // Emp.Get(Emp."No.");
            Emp.SetRange(Emp."No.", "No.");
            if Emp.FindFirst() then begin
                "First Name" := Emp."First Name";
                Gender := Emp.Gender;
            end;
            Emp.Insert();
        end;
    end;



}


