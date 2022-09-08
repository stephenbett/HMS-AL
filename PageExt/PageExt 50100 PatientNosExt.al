pageextension 50100 "Patient-Nos" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("P_No"; "P_No")
            {
                Caption = 'Patient No.';
                ApplicationArea = ALL;
            }
            field("Appointment No."; "Appointment No.")
            {
                ApplicationArea = ALL;
            }
            field("Receipt Nos."; "Receipt No.")
            {
                ApplicationArea = ALL;
            }

        }
    }
}