page 50102 Patient
{
    PageType = Card;
    UsageCategory = Administration;
    Caption = 'Patient';
    ApplicationArea = all;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group("Patient Details")
            {
                field("P_No"; "P_No")
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
                field("Full Name"; "Full Name")
                {
                    ApplicationArea = all;
                }
                // field(Name; Name)
                // {
                //     ApplicationArea = all;
                // }
                field("Date of Birth"; "Date of Birth")
                {
                    ApplicationArea = all;
                }
                field(Age; Age)
                {

                }
                field(Gender; Gender)
                {
                    ApplicationArea = all;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = all;
                }
                field(Address; Address)
                {
                    ApplicationArea = all;
                }

                field("Customer Status"; "Customer Status")
                {
                    ApplicationArea = ALL;
                }
                field("Next of Kin"; "Next of Kin")
                {
                    ApplicationArea = all;
                }

            }

        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean

    begin
        "Customer Status" := "Customer Status"::"Hospital Patient";

    end;



}
