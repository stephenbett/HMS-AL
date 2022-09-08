page 50114 "Appointment List"
{
    Caption = 'Appointment List';
    PageType = List;
    SourceTable = "Appointment Card";
    CardPageId = "Appointment Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {


                field("Appointment No."; Rec."Appointment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Appointment No. field.';
                }
                field("Appointment Date"; Rec."Appointment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Appointment Date field.';
                }
                field(P_No; Rec.P_No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P_No. field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P_Name. field.';
                }
                field("Patient phone Number"; Rec."Patient phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patient phone Number field.';
                }
                field(Adress; Adress)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adress field.';
                }
                field(Gender; Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patient phone Number field.';
                }
                field("Next of Kin"; "Next of Kin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next of Kin field.';
                }


                field("Doctor's FU_Name"; Rec."Doctor's FU_Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Doctor''s FU_Name field.';
                }
                field("Doctor's Specialty"; Rec."Doctor's Specialty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Doctor''s Specialty field.';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.';
                }
                field("Send to Lab"; Rec."Send to Lab")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Send to Lab field.';
                }
                field(Treatment; Rec.Treatment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Treatment field.';
                }
                field("Laboratory No."; "Laboratory No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Laboratory No. field.';
                }
                field("Lab Type"; "Lab Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lab Type field.';
                }
                field("Lab Tech Incharge"; "Lab Tech Incharge")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lab Tech Incharge field.';
                }
            }
        }
    }
}
