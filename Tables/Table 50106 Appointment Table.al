table 50106 "Appointment card"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Appointment No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Appointment Date"; Date)
        {
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            //     myInt: Integer;
            // begin
            //     "Appointment Date" := System.Today()

            // end;


        }



        // Patients

        field(3; P_No; code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No." where("Customer Status" = const("Hospital patient"));

            trigger OnValidate()
            begin
                pat.setRange("No.", P_No);
                pat.FindFirst();
                P_No := pat."No.";
                // Name := pat.Name;
                "Patient Phone Number" := pat."Phone No.";
                Adress := pat.Address;
                "Next of Kin" := pat."Next of Kin";
                "Date of Birth" := pat."Date of Birth";
                "Gender" := pat.Gender;
                "First Name" := pat."First Name";
                "Last Name" := pat."Last Name";
                "Full Name" := pat."Full Name";



            end;


        }
        field(19; Name; Text[200])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer.Name;
            Editable = false;
        }
        field(161; "First Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(162; "Full Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(163; "Last Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }


        field(20; "Customer Status"; Option)
        {
            OptionMembers = "Other Cust","Hospital Patient";
            OptionCaption = 'Other Cust , Hospital Patient';
        }
        field(21; "Patient Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(22; "Adress"; code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(50102; Gender; Option)
        {
            OptionMembers = "MALE","FEMALE";
            OptionCaption = 'MALE , FEMALE ';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5013; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(24; "Next of Kin"; Text[40])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        //Triage
        field(25; "Body Temperatrure"; Decimal)
        {
            dataClassification = ToBeClassified;
        }
        field(26; "Pulse"; Decimal)
        {
            dataClassification = ToBeClassified;
        }
        field(27; "Weight in Kg"; Decimal)
        {
            dataClassification = ToBeClassified;
        }
        field(28; "Height in cm"; Decimal)
        {
            dataClassification = ToBeClassified;
        }

        field(30; "Blood Pressure"; Decimal)
        {
            dataClassification = ToBeClassified;
        }
        field(31; "Respiratory Rate"; Decimal)
        {
            dataClassification = ToBeClassified;
        }



        // DOCTORS

        field(7; "Doctor's FU_Name"; Text[250])
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
        field(8; "Phone Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(9; Treatment; Text[1050])
        {
            DataClassification = ToBeClassified;

        }
        field(11; "Doctor's No."; Code[20])
        {
            TableRelation = Employee."No." where("Employee's Job" = const(Doctor));

            trigger OnValidate()
            begin
                emp.SetRange("No.", "Doctor's No.");
                emp.FindFirst();
                "Doctor's FU_Name" := emp.FullName();
                "Phone Number" := emp."Phone No.";

            end;

        }
        field(10; "Send to Lab"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if "Send to Lab" = true then
                    Status := Status::"Send To Lab"
                else
                    exit;
            end;

        }
        field(41; "Send Back to Doctor"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if "Send Back to Doctor" = true then
                    Status := Status::Doctor
                else
                    exit;
            end;

        }
        field(43; "Send to Finance"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if "Send to Finance" = true then
                    Status := Status::Finance
                else
                    exit;
            end;

        }
        field(44; "Send to Pharmacy"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if "Send to Pharmacy" = true then
                    Status := Status::Pharamcy
                else
                    exit;
            end;

        }
        field(45; "Back to Pharmacy"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if "Back to Pharmacy" = true then
                    Status := Status::Pharamcy
                else
                    exit;
            end;

        }
        field(42; "Lab Report"; Text[1000])
        {
            DataClassification = ToBeClassified;
        }

        field(46; Discharge; Boolean)
        {
            trigger onlookup()
            begin
                if "Discharge" = true then
                    Message(hospend)
                else
                    exit;
            end;

        }


        // LABORATORY
        field(12; "Laboratory No."; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
        }
        field(13; "Lab Type"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(17; "Lab Tech Incharge"; Code[20])
        {
            TableRelation = Employee where("Employee's Job" = filter("Lab Technician"));
        }




        // WARD
        field(14; "Ward No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(15; "Word Type"; Enum "Ward Type")
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Nurse Assigned"; code[20])
        {
            TableRelation = Employee where("Employee's Job" = filter(Nurse));
        }
        field(18; Status; Option)
        {
            // DataClassification = ToBeClassified;
            OptionMembers = Registration,Triage,Doctor,Diagnosis,"Send To Lab",Ward,Finance,Pharamcy;
        }


        //Pharmacy 
        field(32; "Pharmacist Name"; Code[20])
        {
            TableRelation = Employee where("Employee's Job" = filter(Pharmacy));
        }
        field(33; "Medicine Assinged"; Text[1020])
        {
            DataClassification = ToBeClassified;
        }



        // FINANCE

        field(52; "Receipt No."; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            var
                setup: Record "Sales & Receivables Setup";
                NoMgt: Codeunit NoSeriesManagement;
            begin
                if "Receipt No." = '' then begin
                    setup.Get();
                    "Receipt No." := NoMgt.GetNextNo(setup."Receipt No.", WorkDate, true);
                    // "Receipt Date" := Today;
                end;
            end;

        }

        field(53; "Pharmacy_charge's"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(54; "Lab Charge's"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(55; "Ward Charge's"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        Field(57; "Room Charge's"; Decimal)
        {
            // DataClassification = ToBeClassified;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Total Amount" := "Room Charge's" + "Lab Charge's" + "Ward Charge's" + "Pharmacy_charge's" + "Doctor's Fee";
            end;
        }
        field(5; "Doctor's Fee"; Decimal)
        {
            // DataClassification = ToBeClassified;
            // trigger OnValidate()
            // begin
            //     "Total Amount" := "Room Charge's" + "Lab Charge's" + "Ward Charge's" + "Pharmacy_charge's" + "Doctor's Fee";
            // end;
        }

        field(56; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            // trigger OnLookup()
            // begin
            //     "Total Amount" := "Pharmacy_charge's" + "Lab Charge's" + "Ward Charge's" + "Room Charge's" + "Doctor's Fee";
            // end;
        }
    }
    keys
    {
        key(PK; "Appointment No.", P_No)
        {
            Clustered = true;
        }
    }

    var
        emp: Record Employee;
        pat: Record Customer;


    trigger OnInsert()
    var
        setup: Record "Sales & Receivables Setup";
        NoMgt: Codeunit NoSeriesManagement;
    begin
        if "Appointment No." = '' then begin
            setup.Get();
            "Appointment No." := NoMgt.GetNextNo(setup."Appointment No.", WorkDate, true);
            "Appointment Date" := Today;
        end;

    end;


    var
        TotalAmount: Codeunit Total;

    var
        hospend: Label 'Patient is Discharged';
}
