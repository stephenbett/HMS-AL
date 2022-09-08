page 50111 headline
{
    Caption = 'RECEPTION Headline';
    PageType = HeadlinePart;

    layout
    {
        area(content)
        {
            group(control1)
            {
                ShowCaption = false;
                Visible = true;

                field(HeadlineTXT; hdlTxt)
                {
                    ApplicationArea = all;
                    Caption = 'headline text';
                    Editable = false;

                }
                // field(headline; hdlTxt2)
                // {
                //     ApplicationArea = all;
                //     Caption = 'headline text';
                //     Editable = false;
                // }
                // field(headln; hdlTxt3)
                // {
                //     ApplicationArea = all;
                //     Caption = 'headline text';
                //     Editable = false;
                // }
                // field(head; hdlTxt4)
                // {
                //     ApplicationArea = all;
                //     Caption = 'headline text';
                //     Editable = false;
                // }
            }

        }
    }

    var
        hdlTxt: Label 'PMS';
    // hdlTxt2: Label 'Welcome to<emphasize>PMS</emphasize>';
    // hdlTxt3: Label '<emphasize>Doctor</emphasize> Present <emphasize>73</emphasize>';
    // hdlTxt4: Label '<emphasize>BED</emphasize> available<emphasize>128</emphasize>';


}
