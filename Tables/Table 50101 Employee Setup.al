table 50101 "Employee Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Setup';

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Primary Key';
        }
        field(2; "Employee NO."; Code[20])
        {
            Caption = 'Employee NO.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }

    }


    Keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}
