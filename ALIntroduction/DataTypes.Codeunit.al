codeunit 80100 DataTypes
{
    trigger OnRun()
    begin
        myInt := 1;
        myDec := 1234.56;
        mytext1 := 'Das ist text';
        myDate := 20231231D;

        myInt := 0;
        myDec := 0;
        myText1 := '';
        myDate := 0D;

        if myDate = Today() then
            Message('Today is agood day!');
        if myDate < Today() then
            Message('DAte is in the past')
        else
            Message('Date is in thew future');

        for myint := 1 to 10 do
            Message(Format(myInt));

        while myDate < Today do
            Message(Format(myDate));
        repeat
            myInt += 1;
        until myInt >= 100;

    end;

    procedure Calculate(Value1: Decimal; Value2: Decimal): Decimal //Result: Decimal
    var
        Result: Decimal;
    Begin
        Result := Value1 + Value2;
    end;

    var
        myInt: Integer;
        MyDec: Decimal;
        myText1, myText2 : Text[100];
        myDate: Date;
}