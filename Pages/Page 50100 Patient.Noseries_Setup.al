page 50100 "Noseries.pa"
{
    Caption = 'Noseries.pa';
    PageType = Card;
    SourceTable = "Sales & Receivables Setup";
    ApplicationArea = all;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("P_No"; "P_No")
                {
                    ToolTip = 'Specifies the value of the Pa  No series field.';
                    ApplicationArea = All;
                }
                field("Appointment No."; "Appointment No.")
                {
                    ApplicationArea = ALL;
                }


            }
        }
    }
}
