codeunit 80103 DataSets
{
    trigger OnRun()
    var
        Customer: Record Customer;
    begin
        Customer.Reset;
        Customer.SetRange("Country/Region Code", 'US');
        if Customer.FindFirst() then
            Message('First Customer %1', Customer.Name);

        Customer.Reset;
        Customer.SetRange("Country/Region Code", 'US');
        if Customer.FindSet(true) then
            repeat
                Customer.Validate("Language Code", 'ENU');
                Customer.Modify(true);
            until Customer.Next() = 0;

        Customer.Reset();
        Customer.SetRange("No.", '10000', '20000');
        Customer.SetRange("Country/Region Code", 'US');
        Customer.SetFilter("Gen. Bus. Posting Group", '<>%1', 'EU');
        //Customer.SetRange("No.");
        if Customer.FindSet(true) then
            repeat
            //to do
            until Customer.Next() = 0;
    end;


}