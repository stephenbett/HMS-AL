page 50104 "Doctors Card"
{
    Caption = 'Doctors Card';
    PageType = Card;
    SourceTable = Doctor;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group("Doctors Information")
            {
                field(Doctor_no; Rec.Doctor_no)
                {
                    ToolTip = 'Specifies the value of the Doctor_no field.';
                    ApplicationArea = All;
                }

                field("Doctor's Charge's"; Rec."Doctor's Charge's")
                {
                    ToolTip = 'Specifies the value of the Doctor''s Charge''s field.';
                    ApplicationArea = All;
                }
                field("Doctor's F_Name"; Rec."Doctor's F_Name")
                {
                    ToolTip = 'Specifies the value of the Doctor''s F_Name field.';
                    ApplicationArea = All;
                }
                field("Doctor's M_Name"; Rec."Doctor's M_Name")
                {
                    ToolTip = 'Specifies the value of the Doctor''s M_Name field.';
                    ApplicationArea = All;
                }
                field("Doctor's Specialty"; Rec."Doctor's Specialty")
                {
                    ToolTip = 'Specifies the value of the Doctor''s Specialty field.';
                    ApplicationArea = All;
                }
                field("Doctor's Surname"; Rec."Doctor's Surname")
                {
                    ToolTip = 'Specifies the value of the Doctor''s Surname field.';
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ToolTip = 'Specifies the value of the Phone Number field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
