table 50105 Appointment
{
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "Appointment No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "No."; Date)
        {
            DataClassification = ToBeClassified;

        }

        field(1; "Doctor's FU_Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(4; "Doctor's Specialty"; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Doctor charge's"; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(7; AppointmentID; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(5; "Doctor's Fee"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; "Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(9; Treatment; Blob)
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Send to Lab"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
}

//     keys
//     {
//         key(PK; "Appointment No.")
//         {
//             Clustered = true;
//         }
//     }
// }
