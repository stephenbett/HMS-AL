table 50103 Nurse
{
    DataClassification = ToBeClassified;
    Caption = 'Nurse';

    fields
    {
        field(1; "Nurse No"; Code[20])
        {
            TableRelation = Employee."No." where("Employee's Job" = const(Nurse));

            trigger OnValidate()
            var
                nurse: Record Employee;
            begin

                nurse.Reset();
                nurse.SetRange("No.", "Nurse No");
                nurse.FindFirst();
                "Nurse F_Name" := nurse.FullName();
                "Phone Number" := nurse."Phone No.";



            end;
        }
        field(2; "Nurse F_Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        // field(5; "Room Charge's"; Decimal)
        // {
        //     DataClassification = ToBeClassified;

        // }
        field(8; "Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(9; "RooM ID"; code[20])
        {
            DataClassification = ToBeClassified;
            // TableRelation =Room
        }
    }
}