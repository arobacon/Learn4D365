page 80100 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehicle;
    Editable = false;
    CardPageId = "Vehicle Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field("List Price"; Rec."List Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the List Price';
                }
                field("Resonsible Employee No."; Rec."Resonsible Employee No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the Resonsible Employee No';
                }

            }
        }
    }
}