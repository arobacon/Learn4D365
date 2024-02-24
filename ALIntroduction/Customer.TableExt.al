/// <summary>
/// TableExtension Customer (ID 80100) extends Record Customer.
/// </summary>
tableextension 80100 Customer extends Customer
{
    fields
    {
        field(80100; "Category Code"; Code[10])
        {
            Caption = 'Category Code';
            DataClassification = CustomerContent;
        }
        field(80101; "My Sales"; Decimal)
        {
            Caption = 'My Sales';
            FieldClass = FlowField;
            CalcFormula = sum("Cust. Ledger Entry"."Sales (LCY)" where("Customer No." = field("No."), "Posting Date" = field("Date Filter")));
            Editable = false;
        }

    }

}