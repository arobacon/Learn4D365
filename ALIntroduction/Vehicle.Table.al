table 80100 Vehicle
{
    DataClassification = CustomerContent;
    Caption = 'Vehicle';

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Licence No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Licence No.';
        }
        field(4; "Construction Year"; Integer)
        {
            Caption = 'Construction Year';
            DataClassification = CustomerContent;
        }
        field(5; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if Rec."Registration Date" < 19700101D then
                    Error('Date must not before %1', Format(19700101D));
            end;

        }
        field(6; "List Price"; Decimal)
        {
            Caption = 'List Price';
            DataClassification = CustomerContent;
        }
        field(7; "Resonsible Employee No."; Code[20])
        {
            Caption = 'Resonsible Employee No.';
            DataClassification = CustomerContent;
            TableRelation = Employee;
            ValidateTableRelation = true;
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(SK1; "Registration Date", "List Price")
        { }
    }

    trigger OnInsert()
    begin
        Rec."Registration Date" := Today();
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}