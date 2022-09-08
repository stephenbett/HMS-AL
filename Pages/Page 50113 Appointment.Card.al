page 50113 "Appointment Card"
{
    PageType = Document;
    Caption = 'Appointment Card';
    UsageCategory = Administration;
    SourceTable = "Appointment card";
    // SourceTableView
    layout
    {
        area(Content)
        {
            field("Appointment No."; "Appointment No.")
            {
                ApplicationArea = all;
            }
            field("Appointment Date"; "Appointment Date")
            {
                ApplicationArea = all;
                Editable = false;
            }

            //PATIENT
            group("Patient Details")
            {
                Visible = (Status = Status::Registration);
                field(P_No; P_No)
                {
                    ApplicationArea = all;
                }
                field("First Name"; "First Name")
                {
                    ApplicationArea = all;
                }
                field("Last Name"; "Last Name")
                {
                    ApplicationArea = all;
                }
                fielD("full name"; "full name")
                {
                    ApplicationArea = all;
                }

                field("Patient Phone Number"; "Patient Phone Number")
                {
                    ApplicationArea = all;
                }
                field(Adress; Adress)
                {
                    ApplicationArea = all;
                }
                field(Gender; Gender)
                {
                    ApplicationArea = ALL;
                }
                field("Next of Kin"; "Next of Kin")
                {
                    ApplicationArea = All;
                }


            }


            //TRIAGE
            group(Triage)
            {
                Visible = (Status <> Status::Registration);
                field("Body Temperatrure"; "Body Temperatrure")
                {
                    ApplicationArea = All;
                }
                field("Pulse"; "Pulse")
                {
                    ApplicationArea = All;
                }
                field("Blood Pressure"; "Blood Pressure")
                {
                    ApplicationArea = All;
                }
                field("Respiratory Rate"; "Respiratory Rate")
                {
                    ApplicationArea = All;
                }
                field("Weight in Kg"; "Weight in Kg")
                {
                    ApplicationArea = All;
                }
                field("Height in cm"; "Height in cm")
                {
                    ApplicationArea = All;
                }

            }

            // DOCTOR
            group(Doctor)
            {
                visible = (Status = Status::Doctor);
                field("Doctor's No."; "Doctor's No.")
                {
                    ApplicationArea = all;
                }
                field("Doctor's FU_Name"; "Doctor's FU_Name")
                {
                    ApplicationArea = all;
                }
                field("Phone Number"; "Phone Number")
                {
                    ApplicationArea = all;
                }

                field("Doctor's Specialty"; "Doctor's Specialty")
                {
                    ApplicationArea = all;
                }

                field("Doctor's Fee"; "Doctor's Fee")
                {
                    ApplicationArea = all;
                }
                field("Send to Pharmacy"; "Send to Pharmacy")
                {
                    ApplicationArea = all;
                }


            }

            //DIAGNOSIS
            group(Diagnosis)
            {
                visible = (Status = Status::Doctor);//(Status::"Send to Lab")); //issue on how to group is visible on two status
                field("Treatment"; "Treatment")
                {
                    ApplicationArea = all;
                }
                field("Send to Lab"; "Send to Lab")
                {
                    ApplicationArea = all;
                }
                field("Lab Report"; "Lab Report")
                {
                    ApplicationArea = all;
                }
                field("Medicine Assinged"; "Medicine Assinged")
                {
                    ApplicationArea = all;
                }




            }


            //LABORATORY       
            group(Laboratory)
            {
                // Visible = (status = status::Doctor (Treatment));
                Visible = (Status = Status::"Send To Lab");

                field("Laboratory No."; "Laboratory No.")
                {
                    ApplicationArea = all;
                }
                field("Lab Type"; "Lab Type")
                {
                    ApplicationArea = all;
                }
                field("Lab Tech Incharge"; "Lab Tech Incharge")
                {
                    ApplicationArea = all;
                }
                field("Send back to Doctor"; "Send back to Doctor")
                {
                    ApplicationArea = all;
                }
                field("Lab Charges"; "Lab Charge's")
                {
                    ApplicationArea = all;
                }
                field("Lab tech Report"; "Lab Report")
                {
                    ApplicationArea = all;
                }

            }


            // WARD
            group("Ward Details")
            {
                Visible = (Status = Status::Ward);
                field("Ward No."; "Ward No.")
                {
                    ApplicationArea = all;

                }
                field("Word Type"; "Word Type")
                {
                    ApplicationArea = all;
                }
                field("Nurse Assigned"; "Nurse Assigned")
                {
                    ApplicationArea = all;
                }
                field(Status; Rec.Status)
                {
                    Enabled = false;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Room Charges"; "Room Charge's")
                {
                    ApplicationArea = all;
                }
            }


            //PHAMACY
            group(Pharmacy)
            {
                Visible = (Status = Status::Pharamcy);
                field("Pharmacist Name"; "Pharmacist Name")
                {
                    ApplicationArea = all;
                }

                field("Medicine Given"; "Medicine Assinged")
                {
                    ApplicationArea = all;
                }
                field("Pharmacy Charge's"; "Pharmacy_charge's")
                {
                    ApplicationArea = all;
                }
                field("Send to Finance"; "Send to Finance")
                {
                    ApplicationArea = all;
                }
                field(Discharge; Discharge)
                {
                    ApplicationArea = all;
                }


            }


            //FINANCE
            group("Finance Details")
            {
                visible = (Status = Status::Finance);
                field("Receipt No."; "Receipt No.")
                {
                    ApplicationArea = all;
                }
                field("Doctor charge's"; "Doctor's Fee")
                {
                    ApplicationArea = all;
                }
                field("Pharmacy_charge's"; "Pharmacy_charge's")
                {
                    ApplicationArea = all;
                }
                field("Ward_charge's"; "Ward charge's")
                {
                    ApplicationArea = all;
                }
                field("Lab_charge's"; "Lab Charge's")
                {
                    ApplicationArea = all;
                }
                field("room Charge's"; "Room Charge's")
                {
                    ApplicationArea = all;
                }
                // field("Doctor'sp Fee"; "Doctor's Fee")
                // {
                //     ApplicationArea = all;
                // }
                field("Total Amount"; "Total Amount")
                {
                    ApplicationArea = all;
                }
                field("Back to pharmacy"; "Back to pharmacy")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Patient Register")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page Patient;
                Caption = 'New Patient';

                trigger OnAction()

                begin

                    rec.Status := rec.Status::Registration;
                    Rec.Modify();

                end;


            }
        }

        area(Processing)
        {
            action("Send To Triage")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Registration);

                trigger OnAction()
                begin
                    rec.Status := Rec.Status::Triage;
                    Rec.Modify();
                end;
            }
            action("Send To Doctor")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Triage);
                trigger OnAction()
                begin
                    rec.Status := rec.Status::Doctor;


                end;

            }
            action("Diagnose")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Doctor);
                trigger OnAction()
                begin
                    rec.Status := rec.Status::Diagnosis;
                    Rec.Modify();
                end;
            }
            action("Sent To Laboratory")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Doctor);

                trigger OnAction()
                begin
                    rec.Status := rec.Status::"Send To Lab";
                end;
            }
            action("Ward")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Doctor);
                trigger OnAction()
                begin
                    rec.Status := rec.Status::Ward;
                    Rec.Modify();
                end;
            }
            action(Finance)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Visible = (Status = Status::Doctor);
                trigger OnAction()
                begin
                    rec.Status := rec.Status::Finance;
                    Rec.Modify();
                end;
            }
        }
    }




    var
        emp: Record Employee;
        pat: Record Customer;



}