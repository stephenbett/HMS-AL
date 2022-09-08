tableextension 50100 CustomerExt extends Customer
{
    Caption = 'Patient';

    fields
    {
        field(50100; P_No; Code[20])
        {
            Caption = 'P_No';
            DataClassification = ToBeClassified;

            // trigger OnValidate()
            // begin
            //     if "No." <> xRec."No." then begin
            //         SalesSetup.Get();
            //         NoSeriesMgt.TestManual(SalesSetup."Patient Nos.");
            //         "No. Series" := '';
            //     end;
            // end;

        }
        field(50101; Age; Decimal)
        {
            Caption = ' Age';
            Editable = false;

        }
        field(50102; Gender; Option)
        {
            OptionMembers = "MALE","FEMALE";
            OptionCaption = 'MALE , FEMALE ';
            DataClassification = ToBeClassified;
        }
        field(5013; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin
                if "Date of Birth" <> 0D then
                    Age := Round(((Today - "Date of Birth") / 365));
            end;

        }
        field(50114; "Appointment No."; Code[20])
        {
            Caption = 'Appointment No.';
            DataClassification = ToBeClassified;
            TableRelation = "Appointment card";
        }
        field(600; "Customer Status"; Option)
        {
            OptionMembers = "Other Cust","Hospital Patient";
            OptionCaption = 'Other Cust , Hospital Patient';
        }
        field(241; "Next of Kin"; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(161; "First Name"; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(162; "Full Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(163; "Last Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin

                "Full Name" := "First Name" + ' ' + "Last Name";

            end;

        }

    }


    keys
    {
        key(PK; P_No)
        {

        }
    }
    trigger OnInsert()
    var
        setup: Record "Sales & Receivables Setup";
        NoMgt: Codeunit NoSeriesManagement;
    begin
        if "P_No" = '' then begin
            setup.Get();
            "P_No" := NoMgt.GetNextNo(setup."P_No", WorkDate, true);
        end;
    end;


    var
        // SalesSetup: Record "Sales & Receivables Setup";
        // NoSeriesMgt: Codeunit NoSeriesManagement;

        fulname: Codeunit Fullname;

}