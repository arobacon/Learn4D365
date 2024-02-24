report 80100 CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    Caption = 'My Customer List';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {

            }
            column(E_Mail; "E-Mail")
            {

            }
        }
    }



    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'myLayout.rdl';
        }
        layout(myWord)
        {
            Type = Word;
            LayoutFile = 'myWord.docx';
        }
    }

    var
        myInt: Integer;
}