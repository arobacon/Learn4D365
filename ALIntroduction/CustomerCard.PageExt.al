pageextension 80100 CustomerCard extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("My Sales"; Rec."My Sales")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies';
            }
            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies';

            }
            field(SystemCreatedBy; Rec.SystemCreatedBy)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies';

            }
            field(SystemModifiedAt; Rec.SystemModifiedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies';

            }
            field(SystemModifiedBy; Rec.SystemModifiedBy)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies';

            }
        }
    }


}