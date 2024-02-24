page 80103 "My Sales Quote Lines"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Sales Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';

                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';

                }
            }
        }

    }

}