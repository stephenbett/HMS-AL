tableextension 50101 "Patient Nos" extends "Sales & Receivables Setup"
{
    fields
    {
        field(59; "P_No"; Code[30])
        {
            Caption = 'Patient Nos.';
            TableRelation = "No. Series".Code;
        }
        field(3; "Appointment No."; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Appointment No.';
            TableRelation = "No. Series".Code;
        }
        // field(568; "Appointment Nos."; Code[30])
        // {
        //     DataClassification = ToBeClassified;
        //     Caption = 'Appointment Nos.';
        //     TableRelation = "No. Series".Code;
        // }
        field(74; "Receipt No."; Code[30])
        {
            Caption = 'Receipt Nos.';
            TableRelation = "No. Series".Code;
        }

    }

}








