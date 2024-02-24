codeunit 80102 DataManipulation
{
    trigger OnRun()
    var
        Cust: Record Customer;
    begin
        Cust.Init;
        Cust."No." := 'ABC';
        Cust.Validate(Name, 'ALIntro');
        Cust.Validate(Address, 'Meine Adresse1');
        Cust.Insert(true);

        if Cust.Get('10000') then begin
            Cust.Validate(Name, 'XYZ');
            Cust.Validate("Country/Region Code", 'US');
            Cust.Modify(true);
        end else
            Error('Cust. does not exist');

        if cust.get('20005') then
            cust.delete;

    end;

}