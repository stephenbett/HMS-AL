codeunit 50101 Total
{

    procedure TotalAmount("Pharmacy_charge's": Decimal; "Lab Charge's": Decimal; "Ward Charge's": Decimal; "Room Charge's": Decimal; "Doctor's Fee": Decimal) "Total Amount": Decimal;

    var
        myInt: Integer;

    begin
        if "Total Amount" <> 0 then begin
            // myInt := "Total Amount";
            "Total Amount" := myInt;
        end
        else begin
            myInt := "Pharmacy_charge's" + "Lab Charge's" + "Ward Charge's" + "Room Charge's" + "Doctor's Fee";
            // "Total Amount" := myInt;
        end
    end;
}