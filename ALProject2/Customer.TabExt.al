tableextension 50100 Customer extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50100; Richtextblob; Blob)
        {
            DataClassification = CustomerContent;

        }
    }
    procedure GetRichText(): Text
    var
        Instream: InStream;
        TextValue: Text;
    begin
        Rec.CalcFields(Richtextblob);
        Rec.Richtextblob.CreateInStream(Instream);
        Instream.ReadText(TextValue);
        Exit(TextValue);

    end;

    procedure SaveRichText(RichText: Text)
    var
        OutStream: OutStream;
    begin
        Rec.Richtextblob.CreateOutStream(OutStream);
        OutStream.WriteText(RichText);
        Rec.Modify();

    end;
}