Page 50101 "Employee Nos"
{
    Caption = 'Employee Nos';
    PageType = Card;
    SourceTable = "Employee Setup";

    layout
    {
        area(Content)
        {
            group(Setup)
            {
                field("Employee NO."; "Employee NO.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Employee NO. series';
                }
            }
        }
    }
}