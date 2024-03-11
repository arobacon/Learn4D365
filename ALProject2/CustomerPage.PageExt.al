pageextension 50101 CustomerCard extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(General)
        {
            group(RichText)
            {
                field("Rich Text Editor"; RichText)
                {
                    ApplicationArea = All;
                    ExtendedDatatype = RichContent;
                    MultiLine = True;

                    trigger OnValidate()
                    begin
                        Rec.SaveRichText(RichText);
                    end;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        Richtext := Rec.GetRichText()
    end;

    var
        RichText: Text;
}