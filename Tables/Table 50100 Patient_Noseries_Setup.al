table 50100 "Patient Nos"
{
    Caption = 'Patient Nos';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'PK';
            DataClassification = ToBeClassified;
        }
        field(2; "Patient Nos."; Code[30])
        {
            Caption = 'Patient Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(3; "Appointment Nos."; Code[30])
        {
            Caption = 'Appointment Nos.';
            TableRelation = "No. Series".Code;
        }

    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}