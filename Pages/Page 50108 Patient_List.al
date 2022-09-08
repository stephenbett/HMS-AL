page 50108 "Patient List"
{
    PageType = List;
    UsageCategory = Administration;
    SourceTable = Customer;
    CardPageId = Patient;
    SourceTableView = where("Customer Status" = const("Hospital patient"));
    layout
    {
        area(Content)
        {
            repeater("Patient Details")
            {
                field("P_No"; "P_No")
                {
                    ApplicationArea = all;
                }
                field("FIRST_NAME"; "First Name")
                {
                    ApplicationArea = all;
                }
                FIELD("LAST_NAME"; "Last Name")
                {
                    ApplicationArea = all;
                }
                field("FUll_NAME"; "Full Name")
                {
                    ApplicationArea = all;
                }
                field(Age; Age)
                {
                    ApplicationArea = all;
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
                field("Next of Kin"; "Next of Kin")
                {
                    ApplicationArea = all;
                }
                // field("Customer Status"; "Customer Status")
                // {
                //     ApplicationArea = all;


                // }


            }
        }
    }

}