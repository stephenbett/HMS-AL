tableextension 50102 "Hospital Employee's" extends Employee
{
    Caption = 'Hospital Employees';

    fields
    {
        // field(61;enumfield;"Auto Format")
        field(62; "Employee's Job"; Enum "Hospital Jobs")
        {
            DataClassification = ToBeClassified;


        }
        field(61; "Full Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(63; "Surname"; Text[250])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin

                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + Surname;

            end;

        }

    }
    var
        // EmpJob: Enum "Hospital Jobs";
        fulname: Codeunit Fullname;

}