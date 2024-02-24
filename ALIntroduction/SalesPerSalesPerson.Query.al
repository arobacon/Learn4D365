query 80100 SalesPerSalesPerson
{
    QueryType = API;
    APIPublisher = 'l4D365'; //camelCase
    APIGroup = 'learning';
    APIVersion = 'v1.0';
    EntityName = 'revenue';
    EntitySetName = 'revenues';

    elements
    {
        dataitem(Salesperson_Purchaser; "Salesperson/Purchaser")
        {
            column(code; Code)
            {

            }
            column(name; Name)
            {

            }
            dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
            {
                DataItemLink = "SalesPerson Code" = Salesperson_Purchaser.Code;
                SqlJoinType = FullOuterJoin;

                column(Sales__LCY_; "Sales (LCY)")
                {
                    Method = Sum;
                }
            }
        }
    }
}