table 50102 Doctor
{
    DataClassification = ToBeClassified;
    Caption = 'Doctor';

    fields
    {
        field(7; "Doctor_no"; Code[20])
        {
            TableRelation = Employee."No." where("Employee's Job" = const(Doctor));

            trigger OnValidate()
            var
                myInt: Integer;
                Emplo: Record Employee;
            begin
                // Emplo.Reset();
                Emplo.SetRange("No.", Doctor_no);
                Emplo.FindFirst();
                "Doctor's FU_Name" := Emplo.FullName();
                "Doctor's M_Name" := Emplo."Middle Name";
                "Doctor's Surname" := Emplo.Surname;
                "Phone Number" := Emplo."Phone No.";
                "Doctor's F_Name" := Emplo."First Name";



            end;
        }
        field(1; "Doctor's FU_Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(9; "Doctor's F_Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; "Doctor's M_Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(3; "Doctor's Surname"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; "Doctor's Specialty"; Text[250])
        {
            DataClassification = ToBeClassified;

        }

        field(5; "Doctor's Charge's"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; "Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }
}