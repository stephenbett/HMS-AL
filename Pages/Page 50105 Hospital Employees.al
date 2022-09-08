page 50105 "Hospital Employee's"
{
    ApplicationArea = All;
    Caption = 'Hospital Employee''s List';
    PageType = List;
    SourceTable = Employee;
    UsageCategory = Lists;
    CardPageId = "Hosp Employees";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater("Hospital Employee List")
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                    ApplicationArea = All;
                }
                // field("First Name"; Rec."First Name")
                // {
                //     ToolTip = 'Specifies the employee''s first name.';
                //     ApplicationArea = All;
                // }
                // field("Middle Name"; Rec."Middle Name")
                // {
                //     ToolTip = 'Specifies the employee''s middle name.';
                //     ApplicationArea = All;
                // }
                // field(Surname; Rec.Surname)
                // {
                //     ToolTip = 'Specifies the value of the Surname field.';
                //     ApplicationArea = All;
                // }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.';
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the employee''s gender.';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the employee''s address.';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the employee''s telephone number.';
                    ApplicationArea = All;
                }
                field("Employee's Job"; Rec."Employee's Job")
                {
                    ToolTip = 'Specifies the value of the Employee''s Job field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the employment status of the employee.';
                    ApplicationArea = All;
                }
            }
        }
    }



}
