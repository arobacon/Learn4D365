xmlport 80100 ExportCustomers
{
    Caption = 'Export Customers';
    Format = VariableText;
    FieldSeparator = ';'; // <TAB> <None>
    FieldDelimiter = '"';
    Direction = Export;

    schema
    {
        textelement(Root)
        {
            tableelement(Customer; Customer)
            {
                fieldelement(No; Customer."No.")
                {

                }
                fieldelement(Name; Customer.Name)
                {

                }
                fieldelement(Address; Customer.Address)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {

                }
            }
        }

    }
}