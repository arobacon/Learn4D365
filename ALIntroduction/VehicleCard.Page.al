page 80101 "Vehicle Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Vehicle;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vehicle no.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Description';
                }
                field("Licence No."; Rec."Licence No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Licence No.';
                }
                field("Construction Year"; Rec."Construction Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Construction Year';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Registration Date';
                }

                field("Resonsible Employee No."; Rec."Resonsible Employee No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the Resonsible Employee No';
                }
            }
            group(Pricing)
            {
                field("List Price"; Rec."List Price")
                {
                    ApplicationArea = All;
                }

            }
        }
    }


}