codeunit 50100 Fullname
{
    procedure GetFullName("First Name": text; "Middle Name": text; Surname: text) "Full name": Text
    var
        myInt: Integer;
    begin
        "Full Name" := "First Name";
        if "Middle Name" <> '' then begin
            if "Full Name" <> '' then
                "Full Name" += ' ' + "Middle Name"
            else
                "Full Name" := "Middle Name";
        end;
        if Surname <> '' then begin
            if "Full Name" <> '' then
                "Full Name" += ' ' + Surname
            else
                "Full Name" := Surname;
        end;
        exit("Full Name");
    end;
}