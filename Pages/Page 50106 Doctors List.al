page 50106 "Doctors List"
{
    PageType = List;
    Caption = 'Doctor';
    UsageCategory = Administration;
    CardPageId = "Hosp Employees";
    SourceTable = Employee;
    Editable = false;
    SourceTableView = where("Employee's Job" = filter(Doctor));


    layout
    {
        area(content)
        {
            repeater("Doctor Information")
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
        if ED."Employee's Job" = ED."Employee's Job"::Doctor
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


// {
//     Caption = 'Doctors List';
//     PageType = Card;
//     SourceTable = Doctor;
//     UsageCategory = Documents;
//     CardPageId = "Doctors Card";
//     Editable = false;

//     layout
//     {
//         area(content)
//         {
//             repeater("Doctors Information")
//             {
//                 field(Doctor_no; Rec.Doctor_no)
//                 {
//                     ToolTip = 'Specifies the value of the Doctor_no field.';
//                     ApplicationArea = All;
//                 }
//                 field("Doctor's Charge's"; Rec."Doctor's Charge's")
//                 {
//                     ToolTip = 'Specifies the value of the Doctor''s Charge''s field.';
//                     ApplicationArea = All;
//                 }
//                 field("Doctor's F_Name"; Rec."Doctor's F_Name")
//                 {
//                     ToolTip = 'Specifies the value of the Doctor''s F_Name field.';
//                     ApplicationArea = All;
//                 }
//                 field("Doctor's M_Name"; Rec."Doctor's M_Name")
//                 {
//                     ToolTip = 'Specifies the value of the Doctor''s M_Name field.';
//                     ApplicationArea = All;
//                 }
//                 field("Doctor's Specialty"; Rec."Doctor's Specialty")
//                 {
//                     ToolTip = 'Specifies the value of the Doctor''s Specialty field.';
//                     ApplicationArea = All;
//                 }
//                 field("Doctor's Surname"; Rec."Doctor's Surname")
//                 {
//                     ToolTip = 'Specifies the value of the Doctor''s Surname field.';
//                     ApplicationArea = All;
//                 }
//                 field("Phone Number"; Rec."Phone Number")
//                 {
//                     ToolTip = 'Specifies the value of the Phone Number field.';
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }
// }
