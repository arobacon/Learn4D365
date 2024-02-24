codeunit 80101 CallProcedure
{
    trigger OnRun()
    var
        DataTypes: Codeunit DataTypes;
        Value1, Value2 : Decimal;
        Result: Decimal;
    begin
        Value1 := 3;
        Value2 := 5;
        Result := DataTypes.Calculate(Value1, Value2);

    end;


}